class SchoolClassesController < ApplicationController
    #new, create, show, edit, and update
    def new
        @school = SchoolClass.new
    end

    def create
        @school = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_class_path(@school)
    end

    def show
        @school = SchoolClass.find(params[:id])
    end

    def edit
        @school = SchoolClass.find(params[:id])
    end

    def update
        @school = SchoolClass.update(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_class_path(@school)
    end
end