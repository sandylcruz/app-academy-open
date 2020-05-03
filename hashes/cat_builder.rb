=begin
Write a method cat_builder that takes in a name, color,
and age. The method should return a hash representing
a cat with those values.
=end

def cat_builder(name_str, color_str, age_num)

  cat_hash = {:name => name_str, :color => color_str, :age => age_num}

  return cat_hash
end

print cat_builder("Whiskers", "orange", 3) #=> {"name"=>"Whiskers", "color"=>"orange", "age"=>3}
puts

print cat_builder("Salem", "black", 100) #=> {"name"=>"Salem", "color"=>"black", "age"=>100}
puts
