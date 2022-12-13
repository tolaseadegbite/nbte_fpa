class LaboratoriesController < ApplicationController
    
    def show
        @department = Department.find(params[:department_id])
        @laboratory = Laboratory.find(params[:id])
        @equipments = @laboratory.laboratory_equipments
    end
end