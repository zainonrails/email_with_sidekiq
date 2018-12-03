class User < ApplicationRecord
	has_many :posts
	# update_index('users#user') { self }
end
