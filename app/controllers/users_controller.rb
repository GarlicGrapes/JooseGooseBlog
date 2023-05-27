# class UsersController < ApplicationController
#   before_action :set_user, only: [:show, :update, :destroy]

#   # GET /users
#   def index
#     @users = User.all

#     render json: @users
#   end

#   # GET /users/1
#   def show
#     render json: @user
#   end

#   # POST /users
#   def create
#     @user = User.new(user_params)

#     if @user.save
#       render json: @user, status: :created, location: @user
#     else
#       render json: @user.errors, status: :unprocessable_entity
#     end
#   end

#   # PATCH/PUT /users/1
#   def update
#     if @user.update(user_params)
#       render json: @user
#     else
#       render json: @user.errors, status: :unprocessable_entity
#     end
#   end

#   # DELETE /users/1
#   def destroy
#     @user.destroy
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_user
#       @user = User.find(params[:id])
#     end

#     # Only allow a list of trusted parameters through.
#     def user_params
#       params.require(:user).permit(:username, :password_digest, :img_url)
#     end
# end
class UsersController < ApplicationController
  # skip_before_action :authorize, only: :create
  rescue_from ActiveRecord::RecordInvalid, with: :render_uprocessable_entity
  
  def show
      user = User.find_by(id: session[:user_id])
      render json: user
  end

  def create
      user = User.create!(user_params)
      render json: user
  end

  private 

  def user_params
      params.permit(:username, :password, :img_url)
  end

  def render_uprocessable_entity(exception)
      render json: {error: exception.record.errors}, status: :unprocessable_entity
  end

end
