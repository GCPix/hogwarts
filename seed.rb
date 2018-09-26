require_relative('models/student')
require_relative('models/house')
require('pry-byebug')


Student.delete_all()
House.delete_all()

gryffindor = House.new({"name" => "Gryffindor"})
gryffindor.save()
slytherin = House.new({"name" => "Slytherin"})
slytherin.save()
hufflepuff = House.new({"name" => "Hufflepuff"})
hufflepuff.save()
ravenclaw = House.new({"name" => "Ravenclaw"})
ravenclaw.save()

student1 = Student.new({"first_name" => "Hermione", "last_name" => "Granger", "house_id" => gryffindor.id, "age" => 13})
student1.save()

student2 = Student.new({"first_name" => "Draco", "last_name" => "Malfoy", "house_id" => slytherin.id, "age" => 14})
student2.save()



binding.pry
nil
