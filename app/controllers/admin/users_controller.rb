class Admin::UsersController < AdminController
  before_action :set_admin_user, only: [:show, :edit, :update, :destroy]

   def index
      @users = User.all
   end

   def show
     respond_to do |format|
      format.html
      format.js
     end
   end

   def edit

   end

   def update
      respond_to do |format|
      if @user.update(admin_user_params)
        format.html { redirect_to admin_users_path, notice: '成功編輯使用者'}
        format.json { render :show, status: :ok, location: admin_users_path}
        format.js
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

   def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to admin_users_path, notice: '成功地刪除使用者' }
      format.json { head :no_content }
      format.js
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_admin_user
    @user = User.find(params[:id])
  end

  def admin_user_params
    params.require(:user).permit(:role)
  end

end
