class ProjectIssue < ActiveRecord::Base
	belongs_to :project
	has_one :status_table

	ISSUE_STATUS = %W[OPEN IN_PROGRESS CLOSED]
	PRIORITY_STATUS = %W[LOW MEDIUM HIGH]

end
