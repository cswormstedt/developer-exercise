
# encoding: utf-8





#where is part of testing framework
# write my own method


# What is a fixture?
# Is where method only in ActiveRecord? 
# How to set up file structure?

#just learn how to define a class and add a method to it that finds a hash in an array


class Quotes 
	def initialize(name, quote, title, rank)
		@name = name
		@quote = quote
		@title = title
		@rank = rank
	end
	def print_stuff
		p "Hey, #{@name}, say #{@quote} you darn #{@title} with your rank of #{@rank}"
	end
end

inst = Quotes.new("Boris", "Hey dudes", "Lord and master", 5)
inst.print_stuff

# irb(main):024:0> class Greeter
# irb(main):025:1>   def initialize(name = "World")
# irb(main):026:2>     @name = name
# irb(main):027:2>   end
# irb(main):028:1>   def say_hi
# irb(main):029:2>     puts "Hi #{@name}!"
# irb(main):030:2>   end
# irb(main):031:1>   def say_bye
# irb(main):032:2>     puts "Bye #{@name}, come back soon."
# irb(main):033:2>   end
# irb(main):034:1> end
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

