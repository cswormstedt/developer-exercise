
# Takes in input of key value pair
# If there is a hash where the KEY (or multiple keys) matches a key in the function 'where', and a value that at least partially matches the value listed

# class Array
# 	def where(name: @name, quote: @quote, title: @title, rank: @rank)

# 	end
# end


class Array
    def where(name: @name, quote: @quote, title: @title, rank: @rank)
    	if name 
    		case 
    		when b = self.select {|x| /#{name}/.match(x[:name])}
    			p name
    				return b
    		end
    	elsif title 
    		case 
    		when b = self.select {|x| /#{title}/.match(x[:title])}
    			p title
    				return b
    		end
    	elsif quote
    		case 
    		when b = self.select {|x| /#{quote}/.match(x[:quote])}
    			p quote
    				return b
    		end
    	elsif rank
    		# @new_rank = rank.to_f
    		p "-----"

    		case 
    		when b = self.select {|x| x[:rank] == rank}
    			p @l
    			p rank
    			return b
    		end			
    	end
    end
end
# /#{rank}.to_f/.match(x[:rank])
# /#{rank}/.match(x[:rank])

#{rank}
jim = [
		  {:name => 'maria', :title => 'jmdsfs'},
		      {:name => 'jim', :title => 'jsfs'},
		      {:name => 'kate', :title => 'jdsfsdsfs'}
		    ]

# jim.where(:name => 'kate')
jim.where(:title => 'jsfs')
		



class MySecondClass
	def output
		@hey = "heyyyy"
		puts @hey
	end
end

inst = MySecondClass.new
inst.output

