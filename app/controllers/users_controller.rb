class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    user = User.create(name: 'name', email: 'email', age: 7)
    puts user.inspect
    # UserMakerWorker.perform_async(user.id)
    redirect_to :root
  end

  def destroy
    id = params[:id]
    User.delete(id)
    redirect_to :root
  end
end
