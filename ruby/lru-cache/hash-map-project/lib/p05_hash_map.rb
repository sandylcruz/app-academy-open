require_relative 'p04_linked_list'

class HashMap
  include Enumerable

  attr_accessor :count

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { LinkedList.new }
    @count = 0
  end

  def get(key)
    hashed_key = key.hash % @store.length
    target_bucket = @store[hashed_key]

    target_bucket.get(key)
  end

  def set(key, val)
    hashed_key = key.hash % @store.length
    current_bucket = @store[hashed_key]

    resize! if num_buckets == @count

    if current_bucket.include?(key)
      current_bucket.update(key, val)
    else
      current_bucket.append(key, val)
      @count += 1
    end
    
    nil
  end

  def include?(key)
    hashed_key = key.hash % @store.length
    current_bucket = @store[hashed_key]
    current_bucket.get(key)
  end

  def delete(key)
    hashed_key = key.hash % @store.length
    current_bucket = @store[hashed_key]
    current_bucket.remove(key)
    @count -= 1
  end

  def each(&prc)
    @store.each do |bucket|
      bucket.each do |node|
        node_key = node.key
        node_val = node.val
        prc.call(node_key, node_val)
      end
    end
  end

  def to_s
    pairs = inject([]) do |strs, (k, v)|
      strs << "#{k.to_s} => #{v.to_s}"
    end
    "{\n" + pairs.join(",\n") + "\n}"
  end

  alias_method :[], :get
  alias_method :[]=, :set

  private

  def num_buckets
    @store.length
  end

  def resize!
    old_store = @store
    @store = Array.new(num_buckets * 2) {LinkedList.new}
    @count = 0

    old_store.each do |bucket|
      bucket.each { |link| set(link.key, link.val) }
    end
  end

  def bucket(key)
    # optional but useful; return the bucket corresponding to `key`
    @store[key.hash % num_buckets]
  end
end
