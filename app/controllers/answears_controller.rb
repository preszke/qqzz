class AnswearsController < ApplicationController
  before_action :set_answear, only: [:show, :edit, :update, :destroy]

  # GET /answears
  # GET /answears.json
  def index
    @answears = Answear.all
  end

  # GET /answears/1
  # GET /answears/1.json
  def show
  end

  # GET /answears/new
  def new
    @answear = Answear.new
  end

  # GET /answears/1/edit
  def edit
  end

  # POST /answears
  # POST /answears.json
  def create
    @answear = Answear.new(answear_params)

    respond_to do |format|
      if @answear.save
        format.html { redirect_to @answear, notice: 'Answear was successfully created.' }
        format.json { render :show, status: :created, location: @answear }
      else
        format.html { render :new }
        format.json { render json: @answear.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answears/1
  # PATCH/PUT /answears/1.json
  def update
    respond_to do |format|
      if @answear.update(answear_params)
        format.html { redirect_to @answear, notice: 'Answear was successfully updated.' }
        format.json { render :show, status: :ok, location: @answear }
      else
        format.html { render :edit }
        format.json { render json: @answear.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answears/1
  # DELETE /answears/1.json
  def destroy
    @answear.destroy
    respond_to do |format|
      format.html { redirect_to answears_url, notice: 'Answear was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answear
      @answear = Answear.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answear_params
      params.require(:answear).permit(:is_correct, :text, :question_id)
    end
end
