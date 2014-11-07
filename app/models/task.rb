class Task
	include Dynamoid::Document
	table :name => :Task, :key =>:booking_number
	field :loading_point
	field :assigned_user
	field :equipment_number
  field :completed ,:boolean

  def id
    return booking_number
  end

end