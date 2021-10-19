class ServiceDutiesController < ApplicationController
  before_action :set_service_duty, only: %i[ show edit update destroy ]

  # GET /service_duties or /service_duties.json
  def index
    @service_duties = ServiceDuty.all
  end

  # GET /service_duties/1 or /service_duties/1.json
  def show
  end

  # GET /service_duties/new
  def new
    @service_duty = ServiceDuty.new
  end

  # GET /service_duties/1/edit
  def edit
  end

  # POST /service_duties or /service_duties.json
  def create
    @service_duty = ServiceDuty.new(service_duty_params)

    respond_to do |format|
      if @service_duty.save
        format.html { redirect_to @service_duty, notice: "Service duty was successfully created." }
        format.json { render :show, status: :created, location: @service_duty }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @service_duty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_duties/1 or /service_duties/1.json
  def update
    respond_to do |format|
      if @service_duty.update(service_duty_params)
        format.html { redirect_to @service_duty, notice: "Service duty was successfully updated." }
        format.json { render :show, status: :ok, location: @service_duty }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @service_duty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_duties/1 or /service_duties/1.json
  def destroy
    @service_duty.destroy
    respond_to do |format|
      format.html { redirect_to service_duties_url, notice: "Service duty was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_duty
      @service_duty = ServiceDuty.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_duty_params
      params.require(:service_duty).permit(:day_of_week, :start_time, :duration, :service_id)
    end
end
