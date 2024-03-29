class RegistersController < ApplicationController
  before_action :set_register, only: [:show, :update, :destroy]

  # GET /registers
  def index
    @registers = Register.all
    response.headers['X-Total-Count'] = '10'
    response.headers['Access-Control-Allow-Headers'] = 'X-Total-Count'


    render json: @registers, :include => [:student, :event]
  end

  # GET /registers/1
  def show
    render json: @register, :include => [:student, :event]
  end

  # POST /registers
  def create
    @register = Register.new(register_params)

    if @register.save
      render json: @register, status: :created, location: @register
    else
      render json: @register.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /registers/1
  def update
    if @register.update(register_params)
      render json: @register
    else
      render json: @register.errors, status: :unprocessable_entity
    end
  end

  # DELETE /registers/1
  def destroy
    @register.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_register
      @register = Register.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def register_params
      params.require(:register).permit(:time, :student_id, :event_id)
    end
end
