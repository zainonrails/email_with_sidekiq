class UsersIndex < Chewy::Index
	define_type User do 
		field :name
		field :email
		field :posts do
			field :title
			field :body
		end
	end
end