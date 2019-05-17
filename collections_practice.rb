def begins_with_r(array)
  return array.map {|element| element[0] == "r"}.all?
end

def contain_a(array)
  return array.select{|word| word.include?("a")}
end

def first_wa(array)
  return array.find{|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  return array.select{|word| word.class == String}
end
