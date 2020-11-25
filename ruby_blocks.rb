=begin
3.times do 
  puts "Echo!"
end 
=end

def gango(f_name, l_name)
  puts "This is the execution within the method."
  yield f_name,l_name 
  puts "This is the execution within the method."
  yield "Gango", "Anan"
end

gango("Galiwango", "Ananiya") { |f_n,l_n| 
  puts "This is the output from the block : #{f_n} #{l_n}"
}
