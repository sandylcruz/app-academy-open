class CatRentalRequest < ApplicationRecord
  validates :cat_id, :start_date, :end_date, presence: true
  validates :status, presence: true, inclusion: { in: %w(PENDING APPROVED DENIED) }

  belongs_to(
    :cat,
    class_name: 'Cat',
    foreign_key: :cat_id,
    primary_key: :id
    
  )

  def overlapping_requests
    CatRentalRequest
      .where(cat_id: cat_id)
      .where('end_date >= ? AND start_date <= ? AND id != ?', start_date, end_date, id)
  end
end