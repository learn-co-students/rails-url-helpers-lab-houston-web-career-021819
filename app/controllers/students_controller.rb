class StudentsController < ApplicationController
  before_action :set_student, only: :show
  skip_before_filter :verify_authenticity_token

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student = set_student
  end

  def activate_student
    student = set_student
    student.toggle(:active)
    student.save
    redirect_to :student
  end

  # def activate_patch
  #   student = set_student
  #   student.update(student_params[:student])
  #   redirect_to ("/students/#{student.id}")
  # end
  # first attempt

  private

    def student_params
      params.permit(student: [:first_name, :last_name, :active])
    end

    def set_student
      @student = Student.find(params[:id])
    end
end
