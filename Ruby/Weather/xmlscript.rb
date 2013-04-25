#!/usr/bin/ruby

require 'open-uri'
require 'net/http'


def save_xml
  Net::HTTP.start("weather.yahooapis.com"){|http|
    resp = http.get("http://weather.yahooapis.com/forecastrss?w=2424766&u=f")
    open("xml.txt","wb"){|x|
      x.write(resp.body)
    }
  }
end

save_xml