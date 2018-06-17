class SwipeIdsController < ApplicationController
  before_action :set_swipe_id, only: [:show, :edit, :update, :destroy]

  # GET /swipe_ids
  # GET /swipe_ids.json
  def index
    @swipe_ids = SwipeId.all
  end

  # GET /swipe_ids/1
  # GET /swipe_ids/1.json
  def show
  end

  # GET /swipe_ids/new
  def new
    @swipe_id = SwipeId.new
  end

  # GET /swipe_ids/1/edit
  def edit
  end

  # POST /swipe_ids
  # POST /swipe_ids.json
  def create
    @swipe_ids = Student.find_by(student_uuid: params[:student_uuid]).swipe_ids.create

    respond_to do |format|
      if @swipe_id.save
        format.html { redirect_to @swipe_id, notice: 'Swipe was successfully created.' }
        format.json { render :show, status: :created, location: @swipe_id }
      else
        format.html { render :new }
        format.json { render json: @swipe_id.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /swipe_ids/1
  # PATCH/PUT /swipe_ids/1.json
  def update
    respond_to do |format|
      if @swipe_id.update(swipe_id_params)
        format.html { redirect_to @swipe_id, notice: 'Swipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @swipe_id }
      else
        format.html { render :edit }
        format.json { render json: @swipe_id.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /swipe_ids/1
  # DELETE /swipe_ids/1.json
  def destroy
    @swipe_id.destroy
    respond_to do |format|
      format.html { redirect_to swipe_ids_url, notice: 'Swipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_swipe_id
      @swipe_id = SwipeId.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def swipe_id_params
      params.require(:swipe_id).permit(:student_id, :time, :student_uuid)
    end
end
