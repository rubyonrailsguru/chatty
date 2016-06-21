class ProjectsController < InheritedResources::Base

  private

    def project_params
      params.require(:project).permit(:name, :description, tasks_attributes: [:id, :description, :done, :_destroy])
    end
end

