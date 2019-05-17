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
  count_array = []
  array.each do |element|
    elem_key = element.keys.first
    elem_value = element[elem_key]
    included = false
    count_array.each do |hash|
      if hash.keys.include?(elem_key)
        if hash[elem_key] == elem_value
          hash[:count] += 1
          included = true
        end
      end
    end
    if included == false
      count_array << {elem_key => elem_value, count: 1}
    end
  end
  return count_array
end
