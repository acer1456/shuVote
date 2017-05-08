class Admin::StudentsController < AdminController
    before_action :set_admin_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
      @students = Student.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_student_params
      params.require(:student).permit(:stu_id, :stu_class, :stu_year)
    end
end
