require 'nokogiri'
require 'open-uri'
require 'pry'

class ShowScrapper
	attr_accessor :url
	def initialize(url)
		@url = url
	end
	def save
		page = Nokogiri::HTML(open(@url))
		crypto = page.css('a.currency-name-container.link-secondary')
		price = page.css("a.price")

		tab_crypto = []
		tab_price = []

		crypto.each do |nom|
			tab_crypto << nom.text
		end

		price.each do |num|
			tab_price << num.text
		end

		cours = Hash[tab_crypto.zip(tab_price)]

		# cours.each do |k, v|
		# 	puts "La crypto --#{k}-- a une valeur de : #{v}"
		# end
	end

	def perform
		save
	end
end

