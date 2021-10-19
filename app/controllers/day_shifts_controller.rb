class DayShiftsController < ApplicationController
  before_action :set_day_shift, only: %i[ show edit update destroy ]

  # GET /day_shifts or /day_shifts.json
  def index
    @day_shifts = DayShift.all
  end

  # GET /day_shifts/1 or /day_shifts/1.json
  def show
  end

  # GET /day_shifts/new
  def new
    @day_shift = DayShift.new
  end

  # GET /day_shifts/1/edit
  def edit
  end

  # POST /day_shifts or /day_shifts.json
  def create
    @day_shift = DayShift.new(day_shift_params)

    respond_to do |format|
      if @day_shift.save
        format.html { redirect_to @day_shift, notice: "Duty shift was successfully created." }
        format.json { render :show, status: :created, location: @day_shift }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @day_shift.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /day_shifts/1 or /day_shifts/1.json
  def update
    respond_to do |format|
      if @day_shift.update(day_shift_params)
        format.html { redirect_to @day_shift, notice: "Duty shift was successfully updated." }
        format.json { render :show, status: :ok, location: @day_shift }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @day_shift.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /day_shifts/1 or /day_shifts/1.json
  def destroy
    @day_shift.destroy
    respond_to do |format|
      format.html { redirect_to day_shifts_url, notice: "Duty shift was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day_shift
      @day_shift = DayShift.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def day_shift_params
      params.require(:day_shift).permit(:date, :service_id)
    end
end
