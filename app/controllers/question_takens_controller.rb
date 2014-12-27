class QuestionTakensController < ApplicationController
  before_action :set_question_taken, only: [:show, :edit, :update, :destroy]

  # GET /question_takens
  # GET /question_takens.json
  def index
    @question_takens = QuestionTaken.all
  end

  # GET /question_takens/1
  # GET /question_takens/1.json
  def show
  end

  # GET /question_takens/new
  def new
    @question_taken = QuestionTaken.new
  end

  # GET /question_takens/1/edit
  def edit
  end

  # POST /question_takens
  # POST /question_takens.json
  def create
    @question_taken = QuestionTaken.new(question_taken_params)

    respond_to do |format|
      if @question_taken.save
        format.html { redirect_to @question_taken, notice: 'Question taken was successfully created.' }
        format.json { render :show, status: :created, location: @question_taken }
      else
        format.html { render :new }
        format.json { render json: @question_taken.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_takens/1
  # PATCH/PUT /question_takens/1.json
  def update
    respond_to do |format|
      if @question_taken.update(question_taken_params)
        format.html { redirect_to @question_taken, notice: 'Question taken was successfully updated.' }
        format.json { render :show, status: :ok, location: @question_taken }
      else
        format.html { render :edit }
        format.json { render json: @question_taken.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_takens/1
  # DELETE /question_takens/1.json
  def destroy
    @question_taken.destroy
    respond_to do |format|
      format.html { redirect_to question_takens_url, notice: 'Question taken was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_taken
      @question_taken = QuestionTaken.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_taken_params
      params.require(:question_taken).permit(:question_id, :user_id, :attempts)
    end
end
