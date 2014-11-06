class User 
	include Dynamoid::Document
	table :name => :User, :key => :user_name

  before_save :encrypt_password

  attr_accessor :password

	field :user_role, :integer
	field :first_name
	field :last_name
	field :password_hash

  def self.authentication(id, password)
    user  = find(id)
    # if user && BCrypt::Password.new(user.password_hash) == password
    if user
        user
    else
        nil
    end
  end

  def encrypt_password
    # self.password_hash = BCrypt::Password.create(password).to_s
    self.password_hash = password
  end


  def get_role()
    if user_role == 0
      return 'Normal'
    else
      return 'Admin'
    end
  end
#	validates_presence_of :user_name, :first_name, :last_name, :password, :user_role
end
