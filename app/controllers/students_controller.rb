class StudentsController < ApplicationController

    def create 
        @student = Student.new(student_params(:first_name, :last_name))
        if @student.save
            redirect_to student_path(@student)
        else
            render new 
        end 
    end

    def new
        @student = Student.new
    end 

    def show 
        @student = Student.find(params[:id])
    end
    
    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        if @student.update(student_params(:first_name, :last_name))
            redirect_to student_path(@student)
        else
            render edit
        end
    end 

    def student_params(*args)
        params.require(:student).permit(*args)
    end

end
