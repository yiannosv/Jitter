class TwerpsController < ApplicationController
  before_action :set_twerp, only: %i[ show edit update destroy ]

  # GET /twerps or /twerps.json
  def index
    @twerps = Twerp.all
  end

  # GET /twerps/1 or /twerps/1.json
  def show
  end

  # GET /twerps/new
  def new
    @twerp = Twerp.new
  end

  # GET /twerps/1/edit
  def edit
  end

  # POST /twerps or /twerps.json
  def create
    @twerp = Twerp.new(twerp_params)

    respond_to do |format|
      if @twerp.save
        format.html { redirect_to twerp_url(@twerp), notice: "Twerp was successfully created." }
        format.json { render :show, status: :created, location: @twerp }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @twerp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twerps/1 or /twerps/1.json
  def update
    respond_to do |format|
      if @twerp.update(twerp_params)
        format.html { redirect_to twerp_url(@twerp), notice: "Twerp was successfully updated." }
        format.json { render :show, status: :ok, location: @twerp }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @twerp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twerps/1 or /twerps/1.json
  def destroy
    @twerp.destroy

    respond_to do |format|
      format.html { redirect_to twerps_url, notice: "Twerp was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twerp
      @twerp = Twerp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def twerp_params
      params.require(:twerp).permit(:name, :content)
    end
end
