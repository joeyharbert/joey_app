class Api::DepartmentsController < ApplicationController
  def index
    @departments = Department.all
    render "index.json.jbuilder"
  end

  def create
    @department = Department.new(
      name: params[:name],
      manager: params[:manager],
      code: params[:code]
      )

    @department.save

    render "show.json.jbuilder"
  end

end
