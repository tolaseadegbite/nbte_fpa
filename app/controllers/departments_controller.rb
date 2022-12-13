class DepartmentsController < ApplicationController
    def index
        @departments = Department.all
    end

    def show
        @department = Department.find(params[:id])
        @laboratories = @department.laboratories
        @workshops = @department.workshops
    end
end