class Task
	include Dynamoid::Document
	table :name => :Task, :key =>:booking_number
	field :loading_point
	field :assigned_user
	field :equipment_number
end