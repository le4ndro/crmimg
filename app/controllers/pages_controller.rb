class PagesController < ApplicationController
	def index
		
	end

	def dashboard
		
	end

	def recoversubdomain
		@domain = 'http://meusubdominio.' + ENV["DOMAIN"]
	end
end
