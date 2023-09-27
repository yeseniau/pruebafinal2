class MedicalrecordsController < ApplicationController
  #usuario veterinario
  before_action only: [:index, :show, :new, :edit, :create,:update] do
    authorize_request(["veterinario","admin"])
  end
  #usuario administrador
  before_action only: [:destroy] do
    authorize_request(["admin"])
  end


  # GET /medicalrecords or /medicalrecords.json
  def index
    @medicalrecords = Medicalrecord.all
    @pets = Pet.all
    @appointments = Appointment.all
  end

  # GET /medicalrecords/1 or /medicalrecords/1.json
  def show
  end

  # GET /medicalrecords/new
  def new
    @medicalrecord = Medicalrecord.new
    @pets = Pet.all
    @appointments = Appointment.all
  end

  # GET /medicalrecords/1/edit
  def edit
  end

  # POST /medicalrecords or /medicalrecords.json
  def create
    @medicalrecord = Medicalrecord.new(medicalrecord_params)

    respond_to do |format|
      if @medicalrecord.save
        format.html { redirect_to medicalrecord_url(@medicalrecord), notice: "Medicalrecord was successfully created." }
        format.json { render :show, status: :created, location: @medicalrecord }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @medicalrecord.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medicalrecords/1 or /medicalrecords/1.json
  def update
    respond_to do |format|
      if @medicalrecord.update(medicalrecord_params)
        format.html { redirect_to medicalrecord_url(@medicalrecord), notice: "Medicalrecord was successfully updated." }
        format.json { render :show, status: :ok, location: @medicalrecord }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @medicalrecord.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicalrecords/1 or /medicalrecords/1.json
  def destroy
    @medicalrecord.destroy

    respond_to do |format|
      format.html { redirect_to medicalrecords_url, notice: "Medicalrecord was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medicalrecord
      @medicalrecord = Medicalrecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medicalrecord_params
      params.require(:medicalrecord).permit(:diagnostico, :tratamiento, :notas_relevantes, :pet_id, :appointment_id)
    end
end
