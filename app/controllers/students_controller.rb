class StudentsController < ApplicationController
  
  def index
    @students = Student.all
    render 'students/index.html.erb'
  end

  def show
    @student = Student.find(params[:id])
    render 'students/show.html.erb'
  end

  def new
    render 'students/new.html.erb'
  end

  def create
    Student.create(first_name: params["student"]["first_name"], last_name: params["student"]["last_name"])
    @students = Student.all
    render 'students/index.html.erb'
  end
end
