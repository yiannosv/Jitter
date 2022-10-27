class JitsController < ApplicationController
  before_action :set_jit, only: %i[ show edit update destroy ]

  # GET /jits or /jits.json
  def index
    @jits = Jit.all
  end

  # GET /jits/1 or /jits/1.json
  def show
  end

  # GET /jits/new
  def new
    @jit = Jit.new
  end

  # GET /jits/1/edit
  def edit
  end

  # POST /jits or /jits.json
  def create
    @jit = Jit.new(jit_params)

    respond_to do |format|
      if @jit.save
        format.html { redirect_to jit_url(@jit), notice: "Jit was successfully created." }
        format.json { render :show, status: :created, location: @jit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @jit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jits/1 or /jits/1.json
  def update
    respond_to do |format|
      if @jit.update(jit_params)
        format.html { redirect_to jit_url(@jit), notice: "Jit was successfully updated." }
        format.json { render :show, status: :ok, location: @jit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @jit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jits/1 or /jits/1.json
  def destroy
    @jit.destroy

    respond_to do |format|
      format.html { redirect_to jits_url, notice: "Jit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jit
      @jit = Jit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jit_params
      params.require(:jit).permit(:content, :user_id)
    end
end
