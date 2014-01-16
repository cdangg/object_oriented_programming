class Person
	attr_reader :name
	attr_writer :name
	def initialize(name)
		@name = name
	end
	def greeting
		"Hi, my name is #{@name}"
		
	end
end

class Student < Person
	def learn
		"I get it!"
	end
end

class Instructor < Person
	def teach
		"Everything in Ruby is an Object"
	end

end

Chris = Instructor.new("Chris")
puts Chris.greeting
puts Chris.teach

Cristina = Student.new("Cristina")
puts Cristina.greeting
puts Cristina.learn
# puts Cristina.teach - doesn't work because Cristina is part of the Student class and teach is under instructor