class LessonTakensController < ApplicationController
  before_action :set_lesson_taken, only: [:show, :edit, :update, :destroy]

  # GET /lesson_takens
  # GET /lesson_takens.json
  def index
    @lesson_takens = LessonTaken.all
  end

  # GET /lesson_takens/1
  # GET /lesson_takens/1.json
  def show
  end

  # GET /lesson_takens/new
  def new
    @lesson_taken = LessonTaken.new
  end

  # GET /lesson_takens/1/edit
  def edit
  end

  # POST /lesson_takens
  # POST /lesson_takens.json
  def create
    @lesson_taken = LessonTaken.new(lesson_taken_params)

    respond_to do |format|
      if @lesson_taken.save
        format.html { redirect_to @lesson_taken, notice: 'Lesson taken was successfully created.' }
        format.json { render :show, status: :created, location: @lesson_taken }
      else
        format.html { render :new }
        format.json { render json: @lesson_taken.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lesson_takens/1
  # PATCH/PUT /lesson_takens/1.json
  def update
    respond_to do |format|
      if @lesson_taken.update(lesson_taken_params)
        format.html { redirect_to @lesson_taken, notice: 'Lesson taken was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson_taken }
      else
        format.html { render :edit }
        format.json { render json: @lesson_taken.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesson_takens/1
  # DELETE /lesson_takens/1.json
  def destroy
    @lesson_taken.destroy
    respond_to do |format|
      format.html { redirect_to lesson_takens_url, notice: 'Lesson taken was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_taken
      @lesson_taken = LessonTaken.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_taken_params
      params.require(:lesson_taken).permit(:lesson_id, :user_id)
    end
end
