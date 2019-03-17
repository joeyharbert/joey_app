class Api::DepartmentsController < ApplicationController
  def index
    @departments = Department.all
    render "index.json.jbuilder"
  end
end
