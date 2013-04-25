#!/usr/bin/ruby

require 'open-uri'
require_relative 'xmlsimple.rb'

def fetch_xml()
  open("http://weather.yahooapis.com/forecastrss?w=2424766&u=f")
end

def parse_xml_Simple()
  xmlsimple = XmlSimple.new
  source = XmlSimple.xml_in(fetch_xml)
	weatherdata = [source['channel'][0]['item'][0]['condition'][0]['temp'].to_i]  
	weatherdata.to_s
end

def display_weather()
  result = parse_xml_Simple()
  print "Current Temp #{result}"
end

display_weather