require 'test_helper'

class ProjectIssuesControllerTest < ActionController::TestCase
  setup do
    @project_issue = project_issues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_issues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_issue" do
    assert_difference('ProjectIssue.count') do
      post :create, project_issue: { code_lang_id: @project_issue.code_lang_id, name: @project_issue.name, project_id: @project_issue.project_id, summary: @project_issue.summary }
    end

    assert_redirected_to project_issue_path(assigns(:project_issue))
  end

  test "should show project_issue" do
    get :show, id: @project_issue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_issue
    assert_response :success
  end

  test "should update project_issue" do
    patch :update, id: @project_issue, project_issue: { code_lang_id: @project_issue.code_lang_id, name: @project_issue.name, project_id: @project_issue.project_id, summary: @project_issue.summary }
    assert_redirected_to project_issue_path(assigns(:project_issue))
  end

  test "should destroy project_issue" do
    assert_difference('ProjectIssue.count', -1) do
      delete :destroy, id: @project_issue
    end

    assert_redirected_to project_issues_path
  end
end
