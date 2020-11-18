class HashSet
  attr_reader :count

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(key)
    return false if include?(key)
    bucket_index = key % @store.length
    @store[bucket_index].push(key)
    @count += 1
  end

  def include?(key)
    self[key].include?(key)
  end

  def remove(key)
    if include?(key)
      @store[key].delete(key)
      @count -= 1
      true
    end
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
        hash_num = num.hash
        insert(hash_num)
      end
    end
  end
end
