class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    user = User.create(name: 'Zain', email: 'xainbutt28@gmail.com', age: 24)
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
