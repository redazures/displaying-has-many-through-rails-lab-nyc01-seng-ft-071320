class DoctorsController < ApplicationController
    # before_action :find_doctor, only[:show]
    
    def index
        @doctors=Doctor.all
        @appointments=Appointment.all
        @patients=Patient.all
    end

    def show
        @doctor=Doctor.find(params[:id])
    end

    private

    # def find_doctor
    #     @doctor=Doctor.find(params[:id])
    # end

    def doctor_params
        params.require(:doctor).permit(:name, :department)
    end
end
