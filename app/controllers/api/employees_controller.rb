class Api::EmployeesController < ApplicationController
  def index
    @employees = Employee.all
    render "index.json.jbuilder"
  end

  def create
    @employee = Employee.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone: params[:phone],
      job_title: params[:job_title],
      department_id: params[:department_id]
      )

    @employee.save

    render "show.json.jbuilder"
  end

  def show
    @employee = Employee.find_by(id: params[:id])

    render "show.json.jbuilder"
  end
end
