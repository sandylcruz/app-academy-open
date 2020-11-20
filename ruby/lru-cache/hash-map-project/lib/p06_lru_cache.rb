require_relative 'p05_hash_map'
require_relative 'p04_linked_list'

class LRUCache
  def initialize(max, prc)
    @map = HashMap.new
    @store = LinkedList.new
    @max = max
    @prc = prc
  end

  def count
    @map.count
  end

  def get(key)
    value = @map[key]

    if value

    else
      computed_value = @prc.call(key)
      @store.append(key, computed_value)
    end
  end

  def to_s
    'Map: ' + @map.to_s + '\n' + 'Store: ' + @store.to_s
  end

  private

  def calc!(key)
    # suggested helper method; insert an (un-cached) key
    hashed_key = key.hash % @store.length
    current_bucket = @store[hashed_key]

    if !current_bucket.include?(key)
      value = @prc.call(key)
      current_bucket.append(key, value)
    end
  end

  def update_node!(node)
    # suggested helper method; move a node to the end of the list
    hashed_key = key.hash % @store.length
    current_bucket = @store[hashed_key]
    current_bucket.push(key)
  end

  def eject!
    @store.each do |bucket|
      bucket.each do |node|
        node.remove
      end
    end
  end
end
