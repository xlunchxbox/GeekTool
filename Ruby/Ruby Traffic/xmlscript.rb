#!/usr/bin/ruby
require 'rexml/document'

require 'open-uri'
require 'net/http'


def save_xml
  Net::HTTP.start("traffic.houstontranstar.org"){|http|
    resp = http.get("http://traffic.houstontranstar.org/data/rss/incidents_rss.xml")
    open("traffic.xml","wb"){|x|
      x.write(resp.body)
    }
  }
end


save_xml