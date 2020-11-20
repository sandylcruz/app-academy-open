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
    value_node = @map[key]

    if value_node
      
      value_node.val
    else
      computed_value = @prc.call(key)
      new_node = @store.append(key, computed_value)
      @map[key] = new_node

      if @map.size > @max
        eject!
      end
    end
  end

  def to_s
    'Map: ' + @map.to_s + '\n' + 'Store: ' + @store.to_s
  end

  private

  def calc!(key)
    # suggested helper method; insert an (un-cached) key
  end

  def update_node!(node)
    # suggested helper method; move a node to the end of the list

  end

  def eject!
    ejected_node = @store.shift
    @map.delete(ejected_node.key)
  end
end
