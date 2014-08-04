class ProjectsController < ApplicationController
  before_action :authenticate_user!, except: :show
  before_action :set_project, only: [:edit, :update, :show]

  def index
    @projects = current_user.projects
  end

  def new
  end

  def edit

  end

  def update
    if @project.update(project_params)
      respond_to do |format|
        format.html {redirect_to project_path(@project), notice: "Title updated"}
        format.json {respond_with_bip(@project)}
      end
    else
      respond_to do |format|
        format.html {render :edit}
        format.json {respond_with_bip(@project)}
      end
    end
  end

  def show
  	@cards = @project.cards
  end

  def destroy
  end

  private

  def project_params
    params.require(:project).permit(:user_id, :title)
  end
  
  def set_project
    @project = Project.find(params[:id])
  end

end
