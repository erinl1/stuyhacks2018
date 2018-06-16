class MetrocardsController < ApplicationController
  before_action :set_metrocard, only: [:show, :edit, :update, :destroy]

  # GET /metrocards
  # GET /metrocards.json
  def index
    @metrocards = Metrocard.all
  end

  # GET /metrocards/1
  # GET /metrocards/1.json
  def show
  end

  # GET /metrocards/new
  def new
    @metrocard = Metrocard.new
  end

  # GET /metrocards/1/edit
  def edit
  end

  # POST /metrocards
  # POST /metrocards.json
  def create
    @metrocard = Metrocard.new(metrocard_params)

    respond_to do |format|
      if @metrocard.save
        format.html { redirect_to @metrocard, notice: 'Metrocard was successfully created.' }
        format.json { render :show, status: :created, location: @metrocard }
      else
        format.html { render :new }
        format.json { render json: @metrocard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metrocards/1
  # PATCH/PUT /metrocards/1.json
  def update
    respond_to do |format|
      if @metrocard.update(metrocard_params)
        format.html { redirect_to @metrocard, notice: 'Metrocard was successfully updated.' }
        format.json { render :show, status: :ok, location: @metrocard }
      else
        format.html { render :edit }
        format.json { render json: @metrocard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metrocards/1
  # DELETE /metrocards/1.json
  def destroy
    @metrocard.destroy
    respond_to do |format|
      format.html { redirect_to metrocards_url, notice: 'Metrocard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metrocard
      @metrocard = Metrocard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metrocard_params
      params.require(:metrocard).permit(:student_id)
    end
end
