class MaxIntSet
  attr_reader :store

  def initialize(max) 
    @store = Array.new(max, false)
  end

  def include?(num)
    validate!(num)
    @store[num]
  end

  def insert(num)
    validate!(num)
    return false if @store[num]
    @store[num] = true
    true
  end

  def remove(num)
    validate!(num)
    @store[num] = false
  end

  private

  def is_valid?(num)
    num.between?(0, @store.length - 1) 
  end

  def validate!(num)
    raise "Out of bounds" unless is_valid?(num)
  end
end


class IntSet
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    number_in_set = num % @store.length
    bucket = self[number_in_set]
    bucket << num
  end

  def remove(num)
    number_in_set = num % @store.length
    bucket = self[number_in_set]
    bucket.delete(num)
  end

  def include?(num)
    number_in_set = num % @store.length
    bucket = self[number_in_set]
    bucket.include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    @store[num]
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count, :store

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
    bucket_index = num % @store.length
    return false if @store[bucket_index].include?(num)
    resize! if num_buckets == @count
    latest_bucket_index = num % @store.length
    bucket = self[latest_bucket_index]
    bucket << (num)
    @count += 1
  end

  def remove(num)
    if include?(num)
      @count -= 1
      @store[num].delete(num)
    end
  end

  def include?(num)
    bucket_index = num % @store.length
    @store[bucket_index].include?(num)
  end

  private

  def [](num)
    @store[num % num_buckets]
  end

  def num_buckets
    @store.length
  end

  def resize!
    old_store = @store
    @store = Array.new(num_buckets * 2) {Array.new}
    @count = 0

    old_store.each do |bucket|
      bucket.each do |num|
        insert(num)
      end
    end
  end
end
