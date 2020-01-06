class SchoolClassesController < ApplicationController

    def new
        @school_class = SchoolClass.new
    end

    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def create
        @school_class = SchoolClass.create(title: params[:title], room_number: params[:room_number])
    end

    def edit

    end

    def update

    end
end
