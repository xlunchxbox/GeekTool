#!/usr/bin/ruby

#require 'xmlsimple'
require '/Users/christophercruz/.rvm/gems/ruby-1.9.3-p374/gems/xml-simple-1.1.2/lib/xmlsimple.rb'

#Word Wrap Credit: Gavin Kistner, Dayne Broderson
#https://github.com/rubyworks/facets/blob/master/lib/core/facets/string/word_wrap.rb
public
def word_wrap( col_width=80 )
    self.dup.word_wrap!( col_width )
end

def word_wrap!( col_width=80 )
    self.gsub!( /(\S{#{col_width}})(?=\S)/, '\1 ' )
    self.gsub!( /(.{1,#{col_width}})(?:\s+|$)/, "\\1\n" )
    self
end


def fetch_xml()
  #open("traffic.xml")
  open("/Github/GeekTool\ Scripts/Ruby/Houston\ Transtar/traffic.xml")
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
    print "\n#{i['title']}\n".word_wrap(50)
    puts "#{i['description']}\n".word_wrap(50)
  end
end

parse_xml_Simple