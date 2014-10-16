class User 
	include Dynamoid::Document
	table :name => :User, :key => :user_name
	field :user_role, :integer
	field :first_name
	field :last_name
	field :password

  def get_role()
    if user_role == 0
      return 'Normal'
    else
      return 'Admin'
    end
  end
#	validates_presence_of :user_name, :first_name, :last_name, :password, :user_role
end
