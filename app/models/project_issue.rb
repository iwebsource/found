class ProjectIssue < ActiveRecord::Base
	belongs_to :project
	belongs_to :user

	ISSUE_STATUS = %W[OPEN IN_PROGRESS CLOSED]
	PRIORITY_STATUS = %W[LOW MEDIUM HIGH]

end
