class StudentsController < ApplicationController
  #before_action :set_student, only: :show, :edit
  skip_before_action :verify_authenticity_token
  def index
    @students = Student.all
  end

  def show
    @student = set_student
    #byebug
    if @student.active == true
      @active_status ="This student is currently active."
    else
     @active_status = "This student is currently inactive."
    end
  end
  
   
   # Update
  def activate_student 
    @student = set_student  ### get edit page
  end

  def update    ### update happen
    @student = set_student
    @student.toggle(:active)
    @student.update(student_params)
    redirect_to "/students/#{@student.id}"
    #byebug
  end

  
  def set_student
    @student = Student.find(params[:id])
  end
 
 
  def student_params                                # before:  params.require(:pet).permit(:name, :breed)
    params.permit(:first_name, :last_name, :active) #require ensures that a parameter is present. If it's present, returns the parameter at the given key, otherwise raises an ActionController::ParameterMissing error. Remove require should do it
  end 
end

#<%= @student.active ? 'checked' : ''%>