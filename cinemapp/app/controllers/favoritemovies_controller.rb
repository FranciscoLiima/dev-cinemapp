class FavoritemoviesController < ApplicationController
  before_action :set_favoritemovie, only: %i[ show edit update destroy ]

  # GET /favoritemovies or /favoritemovies.json
  def index
    @favoritemovies = Favoritemovie.all
  end

  # GET /favoritemovies/1 or /favoritemovies/1.json
  def show
  end

  # GET /favoritemovies/new
  def new
    @favoritemovie = Favoritemovie.new
  end

  # GET /favoritemovies/1/edit
  def edit
  end

  # POST /favoritemovies or /favoritemovies.json
  def create
    @favoritemovie = Favoritemovie.new(favoritemovie_params)

    respond_to do |format|
      if @favoritemovie.save
        format.html { redirect_to @favoritemovie, notice: "Favoritemovie was successfully created." }
        format.json { render :show, status: :created, location: @favoritemovie }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @favoritemovie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favoritemovies/1 or /favoritemovies/1.json
  def update
    respond_to do |format|
      if @favoritemovie.update(favoritemovie_params)
        format.html { redirect_to @favoritemovie, notice: "Favoritemovie was successfully updated." }
        format.json { render :show, status: :ok, location: @favoritemovie }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @favoritemovie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favoritemovies/1 or /favoritemovies/1.json
  def destroy
    @favoritemovie.destroy
    respond_to do |format|
      format.html { redirect_to favoritemovies_url, notice: "Favoritemovie was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favoritemovie
      @favoritemovie = Favoritemovie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def favoritemovie_params
      params.fetch(:favoritemovie, {})
    end
end
