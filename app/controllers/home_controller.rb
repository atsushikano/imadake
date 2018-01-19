class HomeController < ApplicationController
  require 'net/http'
  require 'uri'
  require 'json'

  def top
    # まだ文字列は無理だけどとりあえず動く。
    uri = URI.parse('http://webservice.recruit.co.jp/hotpepper/gourmet/v1/?key=6cca7f57da84355c&tel=0454537182&format=json')
    # uri = URI.parse('http://webservice.recruit.co.jp/hotpepper/service_area/v1/?key=6cca7f57da84355c&format=json')
    json = Net::HTTP.get(uri)
    @result = JSON.parse(json)
  end

  def about
  end
end
