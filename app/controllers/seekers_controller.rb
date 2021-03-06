class SeekersController < ApplicationController
  before_action :set_seeker, only: [:show, :edit, :update, :destroy]

  # GET /seekers
  # GET /seekers.json
  def index
    @seekers = Seeker.all
  end

  # GET /seekers/1
  # GET /seekers/1.json
  def show
  end

  # GET /seekers/new
  def new
    @seeker = Seeker.new
  end

  # GET /seekers/1/edit
  def edit
  end

  # POST /seekers
  # POST /seekers.json
  def create
    @seeker = Seeker.new(seeker_params)

    respond_to do |format|
      if @seeker.save
        format.html { redirect_to @seeker, notice: 'Seeker was successfully created.' }
        format.json { render :show, status: :created, location: @seeker }
      else
        format.html { render :new }
        format.json { render json: @seeker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seekers/1
  # PATCH/PUT /seekers/1.json
  def update
    respond_to do |format|
      if @seeker.update(seeker_params)
        format.html { redirect_to @seeker, notice: 'Seeker was successfully updated.' }
        format.json { render :show, status: :ok, location: @seeker }
      else
        format.html { render :edit }
        format.json { render json: @seeker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seekers/1
  # DELETE /seekers/1.json
  def destroy
    @seeker.destroy
    respond_to do |format|
      format.html { redirect_to seekers_url, notice: 'Seeker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seeker
      @seeker = Seeker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seeker_params
      params.require(:seeker).permit(:first_name, :last_name, :seeker_signal, :address, :city, :zip, :email, :phone)
    end
end
