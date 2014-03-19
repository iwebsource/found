class StatusTable < ActiveRecord::Base
	belongs_to :project
	belongs_to :project_issue
end
