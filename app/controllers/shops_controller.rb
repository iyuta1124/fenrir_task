class ShopsController < ApplicationController

  require 'net/http'
  require 'uri'
  require 'json'
  require 'logger'

  def create
    @shop = Shop.new(shop_params)
    @shop.address = @shop.prefecture + @shop.address_city
    @shop.address = @shop.address.gsub(/\d+/, "").gsub(/\-+/, "")
    @shop.save
  end

  def search_location
    latitude = params[:latitude]
    longitude = params[:longitude]
    par = URI.encode_www_form({keyid:'4b1b65087cb2dbd19aefe508804860d6',latitude:latitude,longitude: longitude, range:5})
    uri = URI.parse("https://api.gnavi.co.jp/RestSearchAPI/v3/?#{par}")
    json = Net::HTTP.get(uri)
    result = JSON.parse(json)
    @rests=result['rest']
end
# ログオブジェクト生成

# begin
#   responce = Net::HTTP.new(uri.host, uri.port).yield_self do |http|
#     http.use_ssl = true
#     http.open_timeout = 5
#     http.read_timeout = 10
#     # 必要ならば
#     # http.start
#     http.get(uri.request_uri)
#     # http.finish
#   end
#   case response
#   when Net::HTTPSuccess
#     p JSON.parse(response.body)
#   when Net::HTTPRedirection
#     logger.warn("Redirection: code=#{response.code} message=#{response.message}")
#   else
#     logger.error("HTTP ERROR: code=#{response.code} message=#{response.message}")
#   end
# rescue IOError => e
#   logger.error(e.message)
# rescue TimeoutError => e
#   logger.error(e.message)
# rescue JSON::ParserError => e
#   logger.error(e.message)
# rescue => e
#   logger.error(e.message)
# end
  def index
    latitude = params[:latitude]
    longitude = params[:longitude]
    # ログ取得
    # logger = Logger.new('./webapi.log')
    # uriをいい感じに渡してくれるやつ
    par = URI.encode_www_form({keyid:'4b1b65087cb2dbd19aefe508804860d6',name:'store',hit_per_page:2})
    #uriにデータ取得サイト代入
    uri = URI.parse("https://api.gnavi.co.jp/RestSearchAPI/v3/?#{par}")
    json = Net::HTTP.get(uri)
    result = JSON.parse(json)
    @rests=result['rest']
    # ショップの名前
    # puts @rests[0]["name"]
    # イメージ画像
    # puts @rests[0]["image_url"]["shop_image1"]
  end

end
