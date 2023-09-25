munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)

p munsters

=begin

This program outputs
{"Herman"=>{"age"=>74, "gender"=>"other"}, "Lily"=>{"age"=>72, "gender"=>"other"}, "Grandpa"=>{"age"=>444, "gender"=>"other"}, "Eddie"=>{"age"=>52, "gender"=>"other"}, "Marilyn"=>{"age"=>65, "gender"=>"other"}}
This is because the value of the munsters reference is passed into the mess_with_demographics method. Additionally, when values.each is called on demo_hash within the mess_with_demographics method, the parameter within the block references the original values in demo_hash, meaning that modifying those values also modifies the values in demo_hash, which in turn modifies the values in munsters due to the method invocation of mess_with_demographics with munsters as its argument. In short, the data in the munsters array was ransacked.

=end