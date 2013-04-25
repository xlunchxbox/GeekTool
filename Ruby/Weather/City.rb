#!/usr/bin/ruby

require 'open-uri'
require 'net/http'
require '/Users/christophercruz/.rvm/gems/ruby-1.9.3-p374/gems/xml-simple-1.1.2/lib/xmlsimple.rb '

def save_xml
  Net::HTTP.start("weather.yahooapis.com"){|http|
    resp = http.get("http://weather.yahooapis.com/forecastrss?w=2424766&u=f")
    open("xml.txt","wb"){|x|
      x.write(resp.body)
    }
  }
end

def parse_xml_Simple()
  source = XmlSimple.xml_in("xml.txt")

  weatherdata = [source['channel'][0]['location'][0]['city'].to_s]

  weatherdata.to_s
end

def display_weather()
  result = parse_xml_Simple()
  print "#{result}\n"
end

display_weather