require_relative('models/student')
require('pry-byebug')

student1 = Student.new({"first_name" => "Hermione", "last_name" => "Granger", "house" => "Gryffindor", "age" => 13})
student1.save()

student2 = Student.new({"first_name" => "Draco", "last_name" => "Malfoy", "house" => "Slytherin", "age" => 14})
student2.save()




binding.pry
nil
