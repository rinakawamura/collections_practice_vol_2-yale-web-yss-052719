def begins_with_r(array)
  return array.map {|element| element[0] == "r"}.all?
end

def contain_a(array)
  new_array = []
  array.select do |word|
    new_array = word.split.include?("a")
  end
  puts new_array
end

contain_a(["earth", "fire", "wind", "water", "heart"])
