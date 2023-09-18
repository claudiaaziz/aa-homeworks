  class LRUCache
    def initialize(n)
        @cache = n
        @underlying_array = []
    end

    def count
      # returns number of elements currently in cache
      @underlying_array.length
    end

    def add(el)
      # adds element to cache according to LRU principle
        # when arr doesnt have to remove LRU bc the underlying arr is less than cache
        if @underlying_array.length < @cache
            if @underlying_array.include?(el)
                # if ele is already in array delete old idx and push el to end
                old_idx = @underlying_array.index(el)
                @underlying_array.delete_at(old_idx)
                return @underlying_array.push(el)
            else
                return @underlying_array.push(el) 
            end
        end

        # if array is == cache 
        if @underlying_array.include?(el)
            old_idx = @underlying_array.index(el)
            @underlying_array.delete_at(old_idx)
            return @underlying_array.push(el)
        else
            # remove LRU to make room for el
            @underlying_array.shift 
            return @underlying_array.push(el) 
        end
    end

    def show
      # shows the items in the cache, with the LRU item first
      p @underlying_array
    end

    private
    # helper methods go here!
  end

johnny_cache = LRUCache.new(4)

johnny_cache.add("I walk the line")
johnny_cache.add(5)

# p johnny_cache.count # => returns 2

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