class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        grades = Student.all.order(grade: :asc).reverse
        render json: grades
    end

end
