#!/usr/bin/ruby

def time
  time = Time.new  
  
  puts time.strftime("%A, %B, %d, %Y")
  puts time.strftime("%I:%M:%S %p")
end

time