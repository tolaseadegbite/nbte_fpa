class WorkshopsController < ApplicationController
    
    def show
        @department = Department.find(params[:department_id])
        @workshop = Workshop.find(params[:id])
        @equipments = @workshop.workshop_equipments
    end
end