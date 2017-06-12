
# encoding: utf-8





#where is part of testing framework
# write my own method


# What is a fixture?
# Is where method only in ActiveRecord? 
# How to set up file structure?

  # class MyClass
  #   @one = 1
  #   def do_something
  #     @one = 2
  #   end
  #   def output
  #     puts @one
  #   end
  # end

  # instance = MyClass.new
  # instance.output
  # instance.do_something
  # instance.outpute
class MySecondClass
	def output
		@hey = "heyyyy"
		puts @hey
	end
end

inst = MySecondClass.new
inst.output

