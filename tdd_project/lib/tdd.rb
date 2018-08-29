require'byebug'

def my_uniq(array)
  result = []
  
  array.each do |el|
    result << el unless result.include?(el)
  end
  
  result
end

def two_sum(array)
  result = []

  array.each_with_index do |el, idx|
    next if idx == array.length - 1
    array.each_with_index do |el2, idx2|
      next if idx2 <= idx
      result << [idx, idx2] if el + el2 == 0
    end
  end
  result
end 

def my_transpose(array)
  length = array.length
  result = Array.new(length) { Array.new(length) }
  
  array.each_with_index do |row, row_idx|
    row.each_with_index do |col, col_idx|
      result[col_idx][row_idx] = array[row_idx][col_idx]
    end
  end
  
  result
end 

def stock_picker(stocks)   
  min_index = 0
  max_index = 1
  
  stocks.each_with_index do |stock, idx|
    next if idx.zero?
    if stock >= stocks[max_index] 
      max_index = idx
    end
  end
  
  stocks.each_with_index do |stock, idx|
    break if idx == max_index
    if stock <= stocks[min_index]
      min_index = idx
    end
  end
  
  return [min_index, max_index]
  
end 