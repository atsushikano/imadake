class HomeController < ApplicationController
  require 'nokogiri'
  require 'open-uri'



# API = "http://webservice.recruit.co.jp/hotpepper/service_area/v1/?key=6cca7f57da84355c"
#
# xml = Nokogiri::XML(open(API).read)
#
# url_nodes = xml.xpath("//url").text
#
# puts url_nodes

  def top
    url = 'http://webservice.recruit.co.jp/hotpepper/service_area/v1/?key=6cca7f57da84355c'

    @xmls = Nokogiri::XML(open(url).read)

  end

  def about
  end
end
