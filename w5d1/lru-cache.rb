class LRUCache
    def initialize(n)
        @cache_arr = []
        @max_size = n
    end

    def count
      # returns number of elements currently in cache
      @cache_arr.length
    end

    def add(el)
      # adds element to cache according to LRU principle
      if @cache_arr.include?(el)
        index_of_ele = @cache_arr.index(el)
        @cache_arr.delete_at(index_of_ele)
        @cache_arr << el
      else
        if count < @max_size
            @cache_arr << el 
        else 
            @cache_arr.shift
            @cache_arr << el
        end 
      end

    end

    def show
      # shows the items in the cache, with the LRU item first
      print @cache_arr
    end

    private
    # helper methods go here!

end

johnny_cache = LRUCache.new(4)

johnny_cache.add("I walk the line")
johnny_cache.add(5)

johnny_cache.count # => returns 2

johnny_cache.add([1,2,3])
johnny_cache.add(5)
johnny_cache.add(-5)
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.add([1,2,3,4])
johnny_cache.add("I walk the line")
johnny_cache.add(:ring_of_fire)
johnny_cache.add("I walk the line")
johnny_cache.add({a: 1, b: 2, c: 3})


johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]