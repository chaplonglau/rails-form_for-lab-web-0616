class StudentsController < ApplicationController

  def index
    @students=Student.all
  end

  def show  
    @student = Student.find(params[:id])
  end

  def new
    @student=Student.new
  end

  def create
    @student=Student.new
    @student.first_name=params[:student].values[0]
    @student.last_name=params[:student].values[1]
    @student.save
    redirect_to student_path(@student)
  end 

  def edit
    @student= Student.find(params[:id])
  end

  def update
     @student = Student.find(params[:id])
     @student.update(first_name: params[:student].values[0], last_name: params[:student].values[1])
     redirect_to student_path(@student)
  end


end