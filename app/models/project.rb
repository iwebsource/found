class Project < ActiveRecord::Base
	has_many :project_issues
end
