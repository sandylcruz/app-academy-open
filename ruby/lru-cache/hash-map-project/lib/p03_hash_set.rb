class HashSet
  attr_reader :count

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(key)
    hashed_key = key.hash
    return false if include?(hashed_key)
    resize! if num_buckets == @count
    
    self[key.hash] << key
    @count += 1

    key
  end

  def include?(key)
    self[key.hash].include?(key)
  end

  def remove(key)
    if include?(key)
      self[key.hash].delete(key)
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
