class SortedArray
  attr_accessor :internal_arr # This is for convenience in the tests.

  def initialize(input_arr=[])
    @internal_arr = []
    input_arr.each { |x| add x}

    # Fill in the rest of the initialize method here.
    # What should you do with each element of the incoming array?
  end

  def add(new_ele)
    # Hint: Use the Array#insert method.
    index = first_larger_index(new_ele)
    @internal_arr.insert( index, new_ele)    

  end

  def size
    @internal_arr.size
  end

  def [](index)
    @internal_arr[index]
  end

  def first_larger_index(target, start_ind=0, end_ind=@internal_arr.size)
    if start_ind >= end_ind
      return end_ind
    end
    
    mid_index = ((end_ind + start_ind) / 2)
    mid_element = @internal_arr[mid_index]

    if mid_element  == target
      return mid_index
    elsif mid_element > target
      return first_larger_index(target, start_ind, mid_index)
    elsif mid_element < target
      return first_larger_index(target, (mid_index + 1), end_ind)
    end
  end



  def index(target, start_ind = 0, end_ind = @internal_arr.size)

  if start_ind >= end_ind
    return nil
    end
    mid_index = (end_ind - start_ind) / 2 + start_ind
    middle_element = @internal_arr[mid_index]
    if middle_element == target
      return mid_index
    elsif middle_element > target
        return index(target, start_ind, mid_index)
    else
        return index(target, mid_index + 1, end_ind)
    end
  end
  # def index(target, start_ind = 0, end_ind = @internal_arr.size)
    
  #   if start_ind >= end_ind
  #     return nil 
  #   end
    
  #   mid_index = ((end_ind + start_ind) / 2) + start_ind
  #   mid_element = @internal_arr[mid_index]

  #   if mid_element == target
  #     return mid_index
  #   elsif mid_element > target
  #     return index(target, start_ind, mid_index)
  #   elsif mid_element < target
  #     return index(target, mid_index + 1, end_ind)
  #   end

  # end

end
