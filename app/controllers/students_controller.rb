class StudentsController < ApplicationController
  def index
    @students = Student.all
    @new_student = Student.new
  end

  def create
    @temp = Student.create(studentParams)
    if @temp.valid?
      flash[:notice] = "Student enrolled."
    else
      flash[:notice] = "Invalid student."
    end
    redirect_to '/'
  end

  def show
    @student= Student.find(params[:id])
  
  end

  def update
    @student = Student.find(params[:id])
    @student.update(studentParams)
    redirect_to '/students'
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to '/students'
  end

  def studentParams
    params.require(:student).permit(:first_name, :last_name, :age, :education)
  end
end
