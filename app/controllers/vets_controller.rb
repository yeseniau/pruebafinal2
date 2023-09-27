class VetsController < ApplicationController

  #usuario veterinario
  before_action only: [:index, :show, :new, :edit, :create,:update] do
    authorize_request(["veterinario","admin"])
  end
  #usuario administrador
  before_action only: [:destroy] do
    authorize_request(["admin"])
  end

  # GET /vets or /vets.json
  def index
    @vets = Vet.all
  end

  # GET /vets/1 or /vets/1.json
  def show
  end

  # GET /vets/new
  def new
    @vet = Vet.new
  end

  # GET /vets/1/edit
  def edit
  end

  # POST /vets or /vets.json
  def create
    @vet = Vet.new(vet_params)

    respond_to do |format|
      if @vet.save
        format.html { redirect_to vet_url(@vet), notice: "Vet was successfully created." }
        format.json { render :show, status: :created, location: @vet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vets/1 or /vets/1.json
  def update
    respond_to do |format|
      if @vet.update(vet_params)
        format.html { redirect_to vet_url(@vet), notice: "Vet was successfully updated." }
        format.json { render :show, status: :ok, location: @vet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vets/1 or /vets/1.json
  def destroy
    @vet.destroy

    respond_to do |format|
      format.html { redirect_to vets_url, notice: "Vet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vet
      @vet = Vet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vet_params
      params.require(:vet).permit(:nombre, :apellido, :especialidad)
    end
end
