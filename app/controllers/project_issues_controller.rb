class ProjectIssuesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_project_issue, only: [:show, :edit, :update, :destroy]

  # GET /project_issues
  # GET /project_issues.json
  def index
    @project_issues = ProjectIssue.all
  end

  # GET /project_issues/1
  # GET /project_issues/1.json
  def show
  end

  # GET /project_issues/new
  def new
    @project_issue = ProjectIssue.new
  end

  # GET /project_issues/1/edit
  def edit
  end

  # POST /project_issues
  # POST /project_issues.json
  def create
    @project_issue = ProjectIssue.new(project_issue_params)

    respond_to do |format|
      if @project_issue.save
        format.html { redirect_to @project_issue, notice: 'Project issue was successfully created.' }
        format.json { render action: 'show', status: :created, location: @project_issue }
      else
        format.html { render action: 'new' }
        format.json { render json: @project_issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_issues/1
  # PATCH/PUT /project_issues/1.json
  def update
    respond_to do |format|
      if @project_issue.update(project_issue_params)
        format.html { redirect_to @project_issue, notice: 'Project issue was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @project_issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_issues/1
  # DELETE /project_issues/1.json
  def destroy
    @project_issue.destroy
    respond_to do |format|
      format.html { redirect_to project_issues_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_issue
      @project_issue = ProjectIssue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_issue_params
      params.require(:project_issue).permit(:name, :project_id, :summary, :priority, :status)
    end
end
