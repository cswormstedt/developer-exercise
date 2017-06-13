
class Array
	def where(name: @name, quote: @quote, title: @title, rank: @rank)
		p self
		self.select {|x| x[:name] == name}
		# self.select {|x| x[:title] == title}
	end
end

#string.match regex

#case statement--like switch statement
# regex.match


#push the test input into array
# class Quotes 
# 	# attr_accessor :name, :quote, :title, :rank
# 	def initialize(name, quote, title, rank)
# 		@name = name
# 		@quote = quote
# 		@title = title
# 		@rank = rank
		 
# 		@hash = {:name => @name, :quote => @quote, :title => @title, :rank => @rank}


# 		$hashArray.push(@hash)
# 	end
# 	def where 
# 		# p @hash

# 		find {|x| x[:name] == "lisa"}
# 		#if theres an array, find the thing that matches what the test is looking for
# 		#sort through an array by key, taking in the input 
# 	end
# end


# $boris   = {:name => 'Boris The Blade', :quote => "Heavy is good. Heavy is reliable. If it doesn't work you can always hit them.", :title => 'Snatch', :rank => 4}
# $charles = {:name => 'Charles De Mar', :quote => 'Go that way, really fast. If something gets in your way, turn.', :title => 'Better Off Dead', :rank => 3}
# $wolf    = {:name => 'The Wolf', :quote => 'I think fast, I talk fast and I need you guys to act fast if you wanna get out of this', :title => 'Pulp Fiction', :rank => 4}
# $glen    = {:name => 'Glengarry Glen Ross', :quote => "Put. That coffee. Down. Coffee is for closers only.",  :title => "Blake", :rank => 5}

# $fixtures = [$boris, $charles, $wolf, $glen]

# p $fixtures
# # call = Quotes.new("bill", "la", "hey", 5)
# # call1 = Quotes.new("lisa", "la", "yoyo", "2")
# $fixtures.where()
#how to call a method on an array




#just learn how to define a class and add a method to it that finds a hash in an array


class MySecondClass
	def output
		@hey = "heyyyy"
		puts @hey
	end
end

inst = MySecondClass.new
inst.output

