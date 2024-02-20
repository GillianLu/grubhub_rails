class GrubsController < ApplicationController
  before_action :set_grub, only: %i[ show edit update destroy ]

  # GET /grubs or /grubs.json
  def index
    @grubs = Grub.all
  end

  # GET /grubs/1 or /grubs/1.json
  def show
  end

  # GET /grubs/new
  def new
    @grub = Grub.new
  end

  # GET /grubs/1/edit
  def edit
  end

  # POST /grubs or /grubs.json
  def create
    @grub = Grub.new(grub_params)

    respond_to do |format|
      if @grub.save
        format.html { redirect_to grub_url(@grub), notice: "Grub was successfully created." }
        format.json { render :show, status: :created, location: @grub }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @grub.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grubs/1 or /grubs/1.json
  def update
    respond_to do |format|
      if @grub.update(grub_params)
        format.html { redirect_to grub_url(@grub), notice: "Grub was successfully updated." }
        format.json { render :show, status: :ok, location: @grub }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @grub.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grubs/1 or /grubs/1.json
  def destroy
    @grub.destroy!

    respond_to do |format|
      format.html { redirect_to grubs_url, notice: "Grub was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grub
      @grub = Grub.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grub_params
      params.require(:grub).permit(:name, :cuisine, :calories, :price)
    end
end
