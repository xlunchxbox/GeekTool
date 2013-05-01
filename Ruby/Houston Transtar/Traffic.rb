#!/usr/bin/ruby

#require 'xmlsimple'
require '/Users/christophercruz/.rvm/gems/ruby-1.9.3-p374/gems/xml-simple-1.1.2/lib/xmlsimple.rb'

def fetch_xml()
  #open("traffic.xml")
  open("/Github/GeekTool\ Scripts/Ruby/Ruby\ Traffic/traffic.xml")
end

def parse_xml_Simple()
  xmlsimple = XmlSimple.new
  #source = XmlSimple.xml_in("traffic.xml"['channel'])
  source = XmlSimple.xml_in(fetch_xml)
  
  time = Time.new
  title = source['channel'][0]['title'][0]
  items = source['channel'][0]['item']
    
  puts time.strftime("%A, %B, %d, %Y")
  puts title
    
  items.each do |i|
    print "\n#{i['title']}\n" 
    puts "#{i['description']}\n"
  end
end

parse_xml_Simple