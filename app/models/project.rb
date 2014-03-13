class Project < ActiveRecord::Base
	belongs_to :users
	has_many :project_issues
end
