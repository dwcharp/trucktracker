class DynamoDBService
	def self.create_user(user)
		user.save
	end

	def self.create_task(task)
		task.save
	end
end