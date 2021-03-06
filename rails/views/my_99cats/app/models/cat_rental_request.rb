class CatRentalRequest < ApplicationRecord
  validates :cat_id, :start_date, :end_date, presence: true
  validates :status, presence: true, inclusion: { in: %w(PENDING APPROVED DENIED) }
  validate :does_not_overlap_approved_request

  belongs_to(
    :cat,
    class_name: 'Cat',
    foreign_key: :cat_id,
    primary_key: :id
  )

  def overlapping_requests
    CatRentalRequest
      .where(cat_id: cat_id)
      .where('end_date >= ? AND start_date <= ?', start_date, end_date)
      .where.not(id: id)
  end

  def overlapping_approved_requests
    overlapping_requests.where(status: "APPROVED")
  end

  def overlapping_pending_requests
    overlapping_requests.where(status: "PENDING")
  end

  def pending?
    self.status == "PENDING"
  end

  def approve!
    raise "Status cannot be changed" if self.status != "PENDING"

    overlapping_pending_requests.each do |request|
      request.update!(status: "DENIED")
    end

    self.status = "APPROVED"
    self.save!
  end

  def deny!
    raise "Status cannot be changed" if self.status != "PENDING"
    self.status = "DENIED"
    self.save!
  end

  private

  def does_not_overlap_approved_request
    if overlapping_approved_requests.exists?
      errors[:status] << 'overlaps existing approved request'
    end
  end
end
