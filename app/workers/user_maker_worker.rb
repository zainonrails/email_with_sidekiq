class UserMakerWorker
  include Sidekiq::Worker

  def perform(id)
    user = User.find(id)
    user.inspect
    NewUserMailer.new_user_notifier(user).deliver_later
  end
end
