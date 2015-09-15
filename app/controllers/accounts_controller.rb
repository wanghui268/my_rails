class AccountsController < ApplicationController
  def show
    account = Account.find_by(name: params[:name])
    if account.type == 'User'
      @user = account
      render 'users/show'
    end
    if account.type == 'Organization'
      @organization = account
      render 'admin/organizations/show'
    end
  end
end
