class SchoolsController < ApplicationController

    def index
        @schools = School.all
    end

    def show
        @school = School.find(params[:id])
        # @departments = School.where(department_id: department.id)
    end
end
