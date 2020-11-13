class LRUCache
  def initialize(number)
    @cache = []
    @number = number
  end

  def count
    @cache.length
  end

  def add(el)
    if @cache.include?(el)
      @cache.delete(el)
      @cache.push(el)
    elsif @cache.length >= @number
      @cache.shift 
      @cache.push(el)
    else
      @cache.push(el)
    end
  end

  def show
    print @cache
  end
end