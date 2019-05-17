def begins_with_r(array)
  return array.map {|element| element[0] == "r"}.all?
end

def contain_a(array)
  return array.select{|word| word.include?("a")}
end