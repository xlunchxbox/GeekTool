#!/usr/bin/ruby

require '/Users/christophercruz/.rvm/gems/ruby-1.9.3-p374/gems/xml-simple-1.1.2/lib/xmlsimple.rb '

def parse_xml_Simple()
  source = XmlSimple.xml_in("/Volumes/Macintosh\ HD/Users/christophercruz/Desktop/Break\ Projects/Ruby\ Weather/xml.txt")

  weatherdata = [source['channel'][0]['item'][0]['forecast'][0]['low'].to_i ]
	weatherdata.to_s
end

def display_weather()
  result = parse_xml_Simple()
  print "Low: #{result}\n"
end

display_weather