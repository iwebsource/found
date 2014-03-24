crumb :root do
  link "Home", root_path
end

crumb :home do
  link "", root_path, title: "Welcome!"
  parent :root
end

crumb :about do
  link "About", root_path, title: "Welcome!"
end

## Project Section ##

 crumb :projects do
   link "Project Dashboard", projects_path
 end

 crumb :project do |project|
   link project.name, project_path(project)
   parent :projects
 end

 crumb :project_issues do
   link "Project Issues", project_issues_path
   parent :projects
 end

  crumb :project_issues_edit do
   link "Edit Project Issue", edit_project_issue_path
   parent :projects
 end

 crumb :project_issue do |project_issue|
   link project_issue.name, project_issues_path(project_issue)
   parent :project_issues
 end

  crumb :project_new do
   link "New Project", new_project_path
   parent :projects
 end

   crumb :project_edit do
   link "Edit Project", edit_project_path
   parent :projects
 end

   crumb :project_overview do
   link "Project Overview", @project
   parent :projects
 end

   crumb :users do
   link "Sign In", @login
 end
# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).