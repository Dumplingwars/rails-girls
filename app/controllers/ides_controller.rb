class IdesController < ApplicationController
  before_action :set_ide, only: [:show, :edit, :update, :destroy]

  # GET /ides
  # GET /ides.json
  def index
    @ides = Ide.all
  end

  # GET /ides/1
  # GET /ides/1.json
  def show
  end

  # GET /ides/new
  def new
    @ide = Ide.new
  end

  # GET /ides/1/edit
  def edit
  end

  # POST /ides
  # POST /ides.json
  def create
    @ide = Ide.new(ide_params)

    respond_to do |format|
      if @ide.save
        format.html { redirect_to @ide, notice: 'Ide was successfully created.' }
        format.json { render :show, status: :created, location: @ide }
      else
        format.html { render :new }
        format.json { render json: @ide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ides/1
  # PATCH/PUT /ides/1.json
  def update
    respond_to do |format|
      if @ide.update(ide_params)
        format.html { redirect_to @ide, notice: 'Ide was successfully updated.' }
        format.json { render :show, status: :ok, location: @ide }
      else
        format.html { render :edit }
        format.json { render json: @ide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ides/1
  # DELETE /ides/1.json
  def destroy
    @ide.destroy
    respond_to do |format|
      format.html { redirect_to ides_url, notice: 'Ide was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ide
      @ide = Ide.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ide_params
      params.require(:ide).permit(:name, :string, :description, :picture, :string)
    end
end
