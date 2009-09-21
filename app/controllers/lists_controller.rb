class ListsController < ApplicationController 
before_filter(:get_project)

def index 

	#@project = Project.find(params[:project_id])  
	@lists = @project.lists 
end  

def show 

	#@project = Project.find(params[:project_id])  
	@list = @project.lists.find(params[:id])  
end  

def new 
	#@project = Project.find(params[:project_id])  
	@list = @project.lists.build 
end  

def create 
        puts 'dentro del create controlador de list'
	#@project = Project.find(params[:project_id])  
	@list = @project.lists.build(params[:list])  
	if @list.save 
		redirect_to (project_list_url(@project, @list))  
	else  render :action => "new"  
	end  
end  

def edit 
	#@project = Project.find(params[:project_id])  
	@list = @project.lists.find(params[:id])  
end  

def update 
	#@project = Project.find(params[:project_id])  
	@list = @project.lists.find(params[:id])  

	if @list.update_attributes(params[:list])  

		redirect_to (project_list_url(@project, @list))  
	else  render :action => "edit"  
	end  
end  

def destroy 
	#@project = Project.find(params[:project_id])  
	@list = @project.lists.find(params[:id])  
	@list.destroy

	 respond_to do |format|
	 format.html { redirect_to project_lists_url(@project) } 
	 format.xml { head :ok } 
	end  
 end 

 private

  def get_project
    @project = Project.find(params[:project_id])
  end

end 
