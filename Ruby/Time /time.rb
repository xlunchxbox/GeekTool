#!/usr/bin/ruby

def grab_System_Time
  time = Time.new  
  
  print "#{time.month} #{time.day} #{time.year}\n"
  print "#{time.hour}:#{time.min}:#{time.sec}"
  
end

grab_System_Time