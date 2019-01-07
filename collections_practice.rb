def begins_with_r(list)
    if
      list.any? { |item| !item.start_with?("r") }
      return false
    else
      return true
    end
end

def contain_a(list)
  list.select { |item| item.include?("a") }
end

def first_wa(list)
  string_list = list.map {|a| a.to_s}
  string_list.find { |item| item.start_with?("wa") }
end

def remove_non_strings(list)
  list = list.grep(String)
end

def count_elements(list)
  count = Hash.new(0)
  new_array = []
  list.each do |item|
    count[item] += 1
  end
  count.each do |key, value|
    key.each do |label, name|
      new_array << {count: value, name: name}
    end
  end
  new_array
end

def merge_data(keys, data)
  keys.each do |object|
    matchingProperty = object[:first_name]
    puts object
    otherObject = data[0][matchingProperty]

    otherObject.each do |property,value|
      object[property] = value
    end
  end
end

def find_cool(list)
  container = []
  list.each do |item|
    container << item if item[:temperature] == "cool"
  end
  container
end

def organize_schools(list)
  hash = {}
  schools.each do |school, location|
    location.each do |location, where|
      check = hash[where]
      if check == nil
        hash[where] = [school]
      elsif check != nil
        array = []
        array << check
        array << school
        hash[where] = array.flatten
      end
    end
  end
  hash
end
