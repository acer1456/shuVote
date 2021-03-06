class StudentsController < ApplicationController
    before_action :set_student, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!

  # GET /students
  # GET /students.json
  def index
    # if current_user.try(:role?)
    #
    # else
      @student = Student.new
      @students = Student.all.order(id: :desc).page(params[:page])
    # end
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)
        respond_to do |format|
          if @student.save
            format.html { redirect_to root_path, notice: '輸入學號成功' }
            # format.json { render :show, status: :created, location: @student }
          else
            format.html { redirect_to root_path, alert: @student.errors.full_messages }
            # format.json { render json: @student.errors, status: :unprocessable_entity }
          end
        end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: '修改成功' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
        @student.destroy
        respond_to do |format|
          format.html { redirect_to root_path, notice: '刪除學號成功' }
          # format.json { head :no_content }
        end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:stu_id, :stu_class, :stu_year)
    end
end
