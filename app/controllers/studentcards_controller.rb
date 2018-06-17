class StudentcardsController < ApplicationController
  before_action :set_studentcard, only: [:show, :edit, :update, :destroy]

  # GET /studentcards
  # GET /studentcards.json
  def index
    @studentcards = Studentcard.all
  end

  # GET /studentcards/1
  # GET /studentcards/1.json
  def show
  end

  # GET /studentcards/new
  def new
    @studentcard = Studentcard.new
  end

  # GET /studentcards/1/edit
  def edit
  end

  # POST /studentcards
  # POST /studentcards.json
  def create
    @studentcard = Studentcard.new(studentcard_params)

    respond_to do |format|
      if @studentcard.save
        format.html { redirect_to @studentcard, notice: 'Studentcard was successfully created.' }
        format.json { render :show, status: :created, location: @studentcard }
      else
        format.html { render :new }
        format.json { render json: @studentcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studentcards/1
  # PATCH/PUT /studentcards/1.json
  def update
    respond_to do |format|
      if @studentcard.update(studentcard_params)
        format.html { redirect_to @studentcard, notice: 'Studentcard was successfully updated.' }
        format.json { render :show, status: :ok, location: @studentcard }
      else
        format.html { render :edit }
        format.json { render json: @studentcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studentcards/1
  # DELETE /studentcards/1.json
  def destroy
    @studentcard.destroy
    respond_to do |format|
      format.html { redirect_to studentcards_url, notice: 'Studentcard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studentcard
      @studentcard = Studentcard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def studentcard_params
      params.require(:studentcard).permit(:student_id)
    end
end
