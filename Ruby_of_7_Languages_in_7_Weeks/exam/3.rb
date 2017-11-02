class Numeric
 def method_missing method, *args, &block
 	0
 end

 def kg 
     self.g * 1000
 end

 def g 
     self
 end

end
