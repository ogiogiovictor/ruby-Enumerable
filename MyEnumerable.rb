module MyEnumerable

    def all?
      #  each do |x|
       #     return false unless yield(x)
       # end
       each { |x| return false unless yield(x) }
        true
    end

    def any?
        # each do |x|
         #   return true if yield(x)
        #end
        each { |x| return true if yield(x) }
        false
    end

    def filter
        filter_value = []
        each do |x|
          # filter_value.push(x) if yield(x)
           filter_value << x if yield x
        end
        filter_value
    end

end