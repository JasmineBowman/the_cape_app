class HeroSeekersController < ApplicationController
  before_action :set_hero_seeker, only: [:show, :edit, :update, :destroy]

  # GET /hero_seekers
  # GET /hero_seekers.json
  def index
    @hero_seekers = HeroSeeker.all
  end

  # GET /hero_seekers/1
  # GET /hero_seekers/1.json
  def show
  end

  # GET /hero_seekers/new
  def new
    @hero_seeker = HeroSeeker.new
  end

  # GET /hero_seekers/1/edit
  def edit
  end

  # POST /hero_seekers
  # POST /hero_seekers.json
  def create
    @hero_seeker = HeroSeeker.new(hero_seeker_params)

    respond_to do |format|
      if @hero_seeker.save
        format.html { redirect_to @hero_seeker, notice: 'Hero seeker was successfully created.' }
        format.json { render :show, status: :created, location: @hero_seeker }
      else
        format.html { render :new }
        format.json { render json: @hero_seeker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hero_seekers/1
  # PATCH/PUT /hero_seekers/1.json
  def update
    respond_to do |format|
      if @hero_seeker.update(hero_seeker_params)
        format.html { redirect_to @hero_seeker, notice: 'Hero seeker was successfully updated.' }
        format.json { render :show, status: :ok, location: @hero_seeker }
      else
        format.html { render :edit }
        format.json { render json: @hero_seeker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hero_seekers/1
  # DELETE /hero_seekers/1.json
  def destroy
    @hero_seeker.destroy
    respond_to do |format|
      format.html { redirect_to hero_seekers_url, notice: 'Hero seeker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hero_seeker
      @hero_seeker = HeroSeeker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hero_seeker_params
      params.require(:hero_seeker).permit(:hero_id, :seeker_id)
    end
end
