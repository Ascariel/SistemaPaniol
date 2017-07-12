class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def toggle_user_confirmado
    user = User.find(params[:id])
    fecha_confirmacion = user.confirmed_at ? nil : Date.current

    user.update(confirmed_at: fecha_confirmacion)
    return render json: { success: true, user: user }
  end
  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find params[:id]
    @reservas = @user.solicitud_reservas.order(fecha_termino: :asc)
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    if @user.save
      return redirect_to '/users?usuario_creado'
    else
      return redirect_to '/users?usuario_no_creado'
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to "/users", notice: 'Usuario Actualizado!' }
        format.json { render :index, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:rut, :nombre, :apellido, :telefono, :email, :password, :rol, :direccion, :password, :password_confirmation)
    end
end
