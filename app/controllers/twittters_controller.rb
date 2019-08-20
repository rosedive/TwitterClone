class TwitttersController < ApplicationController
  before_action :set_twittter, only: [:show, :edit, :update, :destroy]

  # GET /twittters
  # GET /twittters.json
  def index
    @twittter = Twittter.all
  end

  # GET /twittters/1
  # GET /twittters/1.json
  def show
  end

  # GET /twittters/new
  def new
    @twittter = Twittter.new
  end

  # GET /twittters/1/edit
  def edit
  end

  # POST /twittters
  # POST /twittters.json
  def create
    @twittter = Twittter.new(twittter_params)

    respond_to do |format|
      if @twittter.save
        format.html { redirect_to @twittter, notice: 'Twittter was successfully created.' }
        format.json { render :show, status: :created, location: @twittter }
      else
        format.html { render :new }
        format.json { render json: @twittter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twittters/1
  # PATCH/PUT /twittters/1.json
  def update
    respond_to do |format|
      if @twittter.update(twittter_params)
        format.html { redirect_to @twittter, notice: 'Twittter was successfully updated.' }
        format.json { render :show, status: :ok, location: @twittter }
      else
        format.html { render :edit }
        format.json { render json: @twittter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twittters/1
  # DELETE /twittters/1.json
  def destroy
    @twittter.destroy
    respond_to do |format|
      format.html { redirect_to twittters_url, notice: 'Twittter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twittter
      @twittter = Twittter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twittter_params
      params.require(:twittter).permit(:content)
    end
end
