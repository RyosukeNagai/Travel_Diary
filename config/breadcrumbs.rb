crumb :root do
  link "Home", root_path
end

crumb :about do
  link "About", home_about_path
  parent :root
end

crumb :user_show do
  link "MyPage", user_path(current_user)
  parent :root
end

crumb :user_edit do
  link "MyPage_編集Page", edit_user_path(current_user)
  parent :user_show
end

crumb :travel_index do
  link "投稿一覧", travels_path
  parent :user_show
end

crumb :travel_show do
  link "投稿詳細", travel_path
  parent :travel_index
end

crumb :shiori_index do
  link "Shiori_一覧", shioris_path(current_user)
  parent :user_show
end

crumb :shiori_show do
  link "Shiori_詳細", shiori_path(current_user)
  parent :shiori_index
end

crumb :map do
  link "Map", maps_index_path
  parent :user_show
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

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