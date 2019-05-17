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

def merge_data(data1, data2)
  merged = []
  data1.each do |key|
    name = key[:first_name]
    data2[0].keys.each do |data|
      if name == data
        merged << key.merge(data2[0][name])
      end
    end
  end
  return merged
end

def find_cool(array)
  cool_array = []
  array.each do |hash|
    if hash[:temperature] == "cool"
      cool_array << hash
    end
  end
  return cool_array
end

def organize_schools(school_hash)
  new_hash = {}
  school_hash.each do |name, loc_hash|
    loc_key = loc_hash[:location]
    if new_hash.keys.include?(loc_key)
      new_hash[loc_key] << name
    else
      new_hash[loc_key] = [name]
    end
  end
  return new_hash
end
