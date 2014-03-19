class ProjectIssue < ActiveRecord::Base
	belongs_to :project
	has_one :status_table
end
