class AccountsController < ApplicationController
	def new
		@account = Account.new
		@account.build_owner
	end

	def create
		@account = Account.new(account_params)
		if @account.save
			redirect_to root_path, notice: 'Conta criada com sucesso'
		else
			render action: 'new'
		end	
	end

	private
		def account_params
			params.require(:account).permit(:type, :subdomain, owner_attributes: [:name, :email, :password, :password_confirmation])
		end
end
