module DemyanoSort
  
  class Sorter
    
    def self.quick_sort(list)
      return list if list.size <= 1
      return list if list.uniq.size == 1
      
      pivot = list.delete_at(rand(list.size - 1))
      less_than_or_equal_to_pivot, greater_than_pivot = list.partition { |item| item <= pivot }
      
      self.quick_sort(less_than_or_equal_to_pivot) + [pivot] + self.quick_sort(greater_than_pivot)
    end
    
  end
  
end