
class Array
    def where(name: @name, quote: @quote, title: @title, rank: @rank)
    	if rank && quote
    		case 
    		when b = self.select {|x| x[:rank] == rank}
    			p b.select {|x| /#{quote}/.match(x[:quote])}
    		end
    	elsif name 
    		case 
    		when b = self.select {|x| /#{name}/.match(x[:name])} 
    			return b
    		end
    	elsif title 
    		case 
    		when b = self.select {|x| /#{title}/.match(x[:title])}
    			return b
    		end
    	elsif quote
    		case 
    		when b = self.select {|x| /#{quote}/.match(x[:quote])}
    			return b
    		end
    	elsif rank
			case 
    		when b = self.select {|x| x[:rank] == rank}
    			return b
    		end
    	end
    end
end

# check the NEW array to see if something matches



$l = true
$o = false


if $l
	p "elll"
end

if $o
	p "oooo"
end

if $l && $o 
	p "botttth" 
end

if $l || $o
	p "eitheeerrr"
end

if $l
	if $0
		p $l || $o
	end
end

#needs to fill multiple criteria
