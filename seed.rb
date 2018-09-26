require_relative('models/student')
require_relative('models/house')
require('pry-byebug')

Student.delete_all()

student1 = Student.new({"first_name" => "Hermione", "last_name" => "Granger", "house" => "Gryffindor", "age" => 13})
student1.save()

student2 = Student.new({"first_name" => "Draco", "last_name" => "Malfoy", "house" => "Slytherin", "age" => 14})
student2.save()

house1 = House.new({"name" => "CodeClan"})
house1.save()


binding.pry
nil
