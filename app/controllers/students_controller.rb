class StudentsController < ApplicationController
  skip_before_action :verify_authenticity_token

  before_action :set_student, only: [:show, :edit]
  
  def index
    @students = Student.all
  end

  def show
  end

  def edit
  end

  def update
    @student = Student.find(params[:id])
    @student.toggle(:active)
    @student.save
    redirect_to :student #("/students/#{@student.id}")
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end