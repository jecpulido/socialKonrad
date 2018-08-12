class ReaccionsController < ApplicationController
  before_action :set_reaccion, only: [:show, :edit, :update, :destroy]

  # GET /reaccions
  # GET /reaccions.json
  def index
    @reaccions = Reaccion.all
  end

  # GET /reaccions/1
  # GET /reaccions/1.json
  def show
  end

  # GET /reaccions/new
  def new
    @reaccion = Reaccion.new
  end

  # GET /reaccions/1/edit
  def edit
  end

  # POST /reaccions
  # POST /reaccions.json
  def create
    @reaccion = Reaccion.new(reaccion_params)

    respond_to do |format|
      if @reaccion.save
        format.html { redirect_to @reaccion, notice: 'Reaccion was successfully created.' }
        format.json { render :show, status: :created, location: @reaccion }
      else
        format.html { render :new }
        format.json { render json: @reaccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reaccions/1
  # PATCH/PUT /reaccions/1.json
  def update
    respond_to do |format|
      if @reaccion.update(reaccion_params)
        format.html { redirect_to @reaccion, notice: 'Reaccion was successfully updated.' }
        format.json { render :show, status: :ok, location: @reaccion }
      else
        format.html { render :edit }
        format.json { render json: @reaccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reaccions/1
  # DELETE /reaccions/1.json
  def destroy
    @reaccion.destroy
    respond_to do |format|
      format.html { redirect_to reaccions_url, notice: 'Reaccion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reaccion
      @reaccion = Reaccion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reaccion_params
      params.require(:reaccion).permit(:Entrada_id, :Usuario_id)
    end
end
