class Project < ActiveRecord::Base
	has_many :project_issues, dependent: :destroy
	has_many :products
	has_one :coding_lang
end
