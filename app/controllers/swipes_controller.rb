#require 'net/http'
#require 'json'


class SwipesController < ApplicationController
  before_action :set_swipe, only: [:show, :edit, :update, :destroy]

  # GET /swipes
  # GET /swipes.json
  def index
    @swipes = Swipe.all
    #@mta=JSON.parse(response)
  end

  # GET /swipes/1
  # GET /swipes/1.json
  def show
    # url = 'https://spiky-plane.glitch.me/'
    # uri = URI(url)
    # response = Net::HTTP.get(uri)
    # @mta=JSON.parse(response)
  end

  # GET /swipes/new
  def new
    @swipe = Swipe.new
  #  @mta=JSON.parse(response)
  end

  # GET /swipes/1/edit
  def edit
  #  @mta=JSON.parse(response)
  end

  # POST /swipes
  # POST /swipes.json
  def create

  #  @mta=JSON.parse(response)
    @swipes = Student.find_by(student_uuid: params[:student_uuid]).swipes.create
    respond_to do |format|
      if @swipe.save
        format.html { redirect_to @swipe, notice: 'Swipe was successfully created.' }
        format.json { render :show, status: :created, location: @swipe }
      else
        format.html { render :new }
        format.json { render json: @swipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /swipes/1
  # PATCH/PUT /swipes/1.json
  def update
    respond_to do |format|
      if @swipe.update(swipe_params)
        format.html { redirect_to @swipe, notice: 'Swipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @swipe }
      else
        format.html { render :edit }
        format.json { render json: @swipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /swipes/1
  # DELETE /swipes/1.json
  def destroy
    @swipe.destroy
    respond_to do |format|
      format.html { redirect_to swipes_url, notice: 'Swipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_swipe
      @swipe = Swipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def swipe_params
      params.require(:swipe).permit(:studentcard_id, :time, :student_uuid)
    end
end
