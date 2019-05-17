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

def count_elements(array)
  new_array = []
  included = false
  array.each do |element|
    new_array.each_with_index do |hash, index|
      if hash.include?(element)
        hash[:count] += 1
        included = true
      end
    end
    if included == false
      new_array << {element}
  end
