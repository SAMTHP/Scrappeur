class ScrappersController < ApplicationController
  def index

  	@scrapping = ShowScrapper.new('https://coinmarketcap.com/all/views/all/')

  	@scrapp = @scrapping.perform

  	#if Crypto.find_by(name: 'Bgogo Token')
  		#@scrapping.perform.each do |k, v|
  			#Crypto.update(name: k, value: v)
  	#	end
  #	else
	  	@scrapping.perform.each do |k, v|
	  		Crypto.create(name: k, value: v)
	  	end
	#end

  end


  def create
  	p "-------------------------------------"
  	p params
  	@crypto_show = Crypto.find(params[:crypto][:crypto_id])
  	render 'show'
  end

  def show

  end

end