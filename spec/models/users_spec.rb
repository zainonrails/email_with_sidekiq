require 'rails_helper'

RSpec.describe 'User' do 
    it 'should create post successfully' do 
        user = User.create(name: 'zain', age: 24, email: 'xainbutt28@gmail.com')
        post = Post.create(title: 'some title', body: 'some content for the post', user_id: user.id)
        expect(post.user).to eq(user)
    end
end