class EnrollmentsController < ApplicationController
  def index
    @enrollments = Enrollment.all
  end

  def new
    @enrollment = Enrollment.new
  end

  def create
    @enrollment = Enrollment.create(params.require(:enrollment).permit(:course_id, :student_id))
    redirect_to student_path(@enrollment.student)
  end

  def edit
    
  end

  def update
  
  end

  def destroy
    @enrollment = Enrollment.find(params[:id])
    @student = @enrollment.student
    @enrollment.destroy
    redirect_to students_path(@student)
  end
end
