require 'httparty'

class Recipe
	include HTTParty
	ENV["FOOD2FORK_KEY"] = '47a55cf06065e64c4fba40c97364d74b'
	base_uri 'http://food2fork.com/api'
	default_params key: ENV["FOOD2FORK_KEY"]
	format :json

	def self.for keyword
		get("/search", query: {q: keyword})["recipes"]
	end
end
