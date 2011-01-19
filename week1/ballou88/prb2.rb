(1..1000).each do |m| 
  (1..m).each do |n|
   if (m**2-n**2) + (2*m*n) + (m**2+n**2) == 1000
     p (m**2-n**2) 
     p (2*m*n) 
     p (m**2+n**2)
     exit
   end
  end
end

