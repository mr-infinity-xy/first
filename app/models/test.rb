class Test < ActiveRecord::Base
	
	validates :text, presence: true, length: { minimum: 10 }
	before_validation :before_validation
	after_validation  :after_validation
	before_save  :before_save
	around_save  :around_save
	before_create :before_create
	around_create  :around_create
	after_create  :after_create 
	after_save		:after_save
	before_update  :before_update
	around_update  :around_update
	after_update  :after_update
	before_destroy  :before_destroy
	around_destroy  :around_destroy
	after_destroy  :after_destroy
	after_initialize  :after_initialize 
	after_find  :after_find
	after_commit  :after_commit
	after_rollback  :after_rollback 

	def before_validation 
		puts 'before_validation' 	
	end

	def after_validation 
		puts 'after_validation '	
	end 

	def before_save 
		puts 'before_save'
	end 

	def around_save
		puts 'around_save_before'
		yield	
		puts 'around_save_after'
	end 

	def before_create 
		puts 'before_create'	
	end 

	def around_create 
		puts 'around_create_before'
		yield
		puts 'around_create_after'	
	end 

	def after_create 
		puts 'after_create'	
	end 

	def after_save
		puts 'after_save'	
	end

	def before_update
		puts 'before_update'	
	end 

	def around_update
		puts 'around_update_before'
		yield
		puts 'around_update_after'	
	end

	def after_update
		puts 'after_update'	
	end

	def before_destroy
		puts 'before_destroy'	
	end 

	def around_destroy
		puts 'around_destroy_before'
		yield
		puts 'around_destroy_after'
	end

	def after_destroy
		puts 'after_destroy'	
		puts 'created_at: ' + self.created_at.to_s
	end      

	def after_initialize
		puts 'after_initialize'
	end

	def after_find
		puts 'after_find'
	end

	def after_commit
		puts 'after_commit'		
	end
	
	def after_rollback
		puts 'after_rollback'	
	end

end
