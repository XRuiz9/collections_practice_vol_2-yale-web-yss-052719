def begins_with_r (array)
  array.each do |element|
    if element[0] != "r"
      return false
    end
  end
  true
end

def contain_a (array)
  a = []
  array.each do |element|
    if element.include?("a")
      a << element
    end
  end
  a
end

def first_wa (array)
  array.find do |element|
    element[0] == "w" && element[1] == "a"
  end
end

def remove_non_strings(array)
  array.select do |element|
    element.is_a?(String)
  end
end

def count_elements(array)
  values = []
  array.each do |element|
    element.each do |key, value|
      values << element.values
    end
  end
  values = values.flatten

  count = []
  unique = array.uniq
  unique.each do |element|
    element.each do |key, value|
      count << {
        name: value,
        count: values.count(value)
      }
    end
  end
  count
end

def merge_data (data1, data2)
  data1.concat(data2)
  test = ""
  data1.each do |person|
    person.each do |key, value|
      data2.each do |person2|
        person2.each do |key2, value2|
          if key2 == data1[person][:first_name]
            test = "hi"
          end
        end
      end
    end
  end
  test
end

def find_cool (arg)
  name = []
  arg.each do |person|
    person.each do |key, value|
      if key == :temperature && value = "cool"
        name << person
      end
    end
  end
  name
end

def organize_schools (arg)
  "hey"
end
