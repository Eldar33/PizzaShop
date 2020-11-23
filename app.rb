#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, { adapter: 'sqlite3', database: 'pizzashop.db' }

class Product < ActiveRecord::Base

end

class Order < ActiveRecord::Base

end

get '/' do
	@products = Product.order 'title'
	erb :index
end

get '/about' do
	erb :about
end

post '/cart' do
	@orders_input = params[:orders]
	arr = @orders_input.split ','

	@cnt_products = {}

	arr.each do |item|
		pair = item.split '='
		key = (pair[0].delete_prefix 'product_').to_i
		value = pair[1].to_i
		@cnt_products[key] = value
	end

	@cart = Product.where 'id in (?)', @cnt_products.keys

  	erb :cart
end

post '/place_order' do

	order = Order.new params[:order]
	order.save

	erb :place_order
end

get '/orders' do 

	@orders = Order.all
	erb :orders

end