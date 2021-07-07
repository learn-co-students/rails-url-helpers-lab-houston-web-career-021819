class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    @student = set_student#uses the set_student method to protect. it helps with security
    @student.toggle(:active).save #.toggle changes the status of the student .save saves the update to the database
    redirect_to action: "show", id: @student.id#redirects back to the show page of the student you just updated
  end




  private

    def set_student
      @student = Student.find(params[:id])
    end
end
