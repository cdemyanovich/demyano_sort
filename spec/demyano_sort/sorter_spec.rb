require 'spec_helper'

module DemyanoSort
  
  describe Sorter, '#quick_sort' do
    
    it "sorts an empty list" do
      Sorter.quick_sort([]).should == []
    end
    
    it "sorts a list of 1 item" do
      Sorter.quick_sort([1]).should == [1]
    end
    
    it "sorts a list of 2 unsorted items" do
      Sorter.quick_sort([2, 1]).should == [1, 2]
    end
    
    it "sorts a list of 2 sorted items" do
      Sorter.quick_sort([1, 2]).should == [1, 2]
    end
    
    it "sorts a list of 3 unsorted items" do
      Sorter.quick_sort([2, 3, 1]).should == [1, 2, 3]
    end
    
    it "sorts a list of 3 sorted items" do
      Sorter.quick_sort([1, 2, 3]).should == [1, 2, 3]
    end
    
    it "sorts a list of identical items" do
      Sorter.quick_sort([1, 1, 1]).should == [1, 1, 1]
    end
    
    it "sorts a large list of identical items" do
      sorted_list = Array.new(10_000, 1)
      Sorter.quick_sort(sorted_list).should == sorted_list
    end
    
    it "sorts a large list of items in reverse order" do
      sorted_list = Array.new(10_000) { |i| i + 1 }
      reversed_list = sorted_list.reverse
      Sorter.quick_sort(reversed_list).should == sorted_list
    end
    
    it "sorts a large list of items in random order" do
      sorted_list = Array.new(10_000) { |i| i + 1 }
      randomized_list = sorted_list.shuffle
      Sorter.quick_sort(randomized_list).should == sorted_list
    end
    
  end

end