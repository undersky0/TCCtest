class TccapisController < ApplicationController
  before_action :set_tccapi, only: [:show, :edit, :update, :destroy]

  # GET /tccapis
  # GET /tccapis.json
  def index
    @tccapis = Tccapi.all
  end

  # GET /tccapis/1
  # GET /tccapis/1.json
  def show
  end

  # GET /tccapis/new
  def new
    @tccapi = Tccapi.new
  end

  # GET /tccapis/1/edit
  def edit
  end

  # POST /tccapis
  # POST /tccapis.json
  def create
    @tccapi = Tccapi.new(tccapi_params)

    respond_to do |format|
      if @tccapi.save
        format.html { redirect_to @tccapi, notice: 'Tccapi was successfully created.' }
        format.json { render :show, status: :created, location: @tccapi }
      else
        format.html { render :new }
        format.json { render json: @tccapi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tccapis/1
  # PATCH/PUT /tccapis/1.json
  def update
    respond_to do |format|
      if @tccapi.update(tccapi_params)
        format.html { redirect_to @tccapi, notice: 'Tccapi was successfully updated.' }
        format.json { render :show, status: :ok, location: @tccapi }
      else
        format.html { render :edit }
        format.json { render json: @tccapi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tccapis/1
  # DELETE /tccapis/1.json
  def destroy
    @tccapi.destroy
    respond_to do |format|
      format.html { redirect_to tccapis_url, notice: 'Tccapi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tccapi
      @tccapi = Tccapi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tccapi_params
      params[:tccapi]
    end
end
