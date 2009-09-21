class TasksController < ApplicationController
before_filter(:get_project)
before_filter(:get_list)

def index

	#@project = Project.find(params[:project_id])  
        puts 'EStoy en task controler'
	#@list =  List.find(params[:list_id])
        @tasks = @list.tasks 
end  

def show 

	#@project = Project.find(params[:project_id])  
	#@list = @project.lists.find(params[:list_id]) 
	@task = @list.tasks.find(params[:id]) 



end  

def new 
	 
        #@list = List.find(params[:list_id])  
 puts 'EStoy en task new controler'
	@tasks = @list.tasks.build

end  

def create 
 puts 'EStoy en task create controler'
	#@project = Project.find(params[:project_id]) 
       
	#@list = List.find(params[:list_id])  
	@task = @list.tasks.build(params[:task])  
	if @task.save 
		puts 'tarea guardada'
		redirect_to project_list_task_url(@project,@list, @task)  
                #list_tasks_path(@list)
  
	else  
		puts 'tarea no guardada'
		render :action => "new"  
	end  



end  

def edit 
	#@project = Project.find(params[:project_id])  
        #@list = @project.find(params[:list_id]) 
	@task = @list.tasks.find(params[:id])  


end  



def update 
	#@project = Project.find(params[:project_id])  
	#@list = List.find(params[:list_id])  
        @task = @list.tasks.find(params[:id]) 
	if @task.update_attributes(params[:task])  

		redirect_to project_list_task_url(@list, @task)  
                #list_tasks_path(@list)
	else  render :action => "edit"  
	end  
end  

def destroy 
	#@project = Project.find(params[:project_id])
        #@list = @project.find(params[:list_id])   
	@tasks = @list.tasks.find(params[:id])  
	@tasks.destroy

	 respond_to do |format|
	 format.html { redirect_to project_list_tasks_url(@project,@list) } 
	 format.xml { head :ok } 
	end  
 end 

private

	def get_project
	   @project = Project.find(params[:project_id])
	end

	def get_list
	   @list = Project.find(params[:project_id]).lists.find(params[:list_id])
	end

end
