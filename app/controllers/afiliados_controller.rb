class AfiliadosController < ApplicationController
  before_action :set_afiliado, only: [:show, :edit, :update, :destroy]

  # GET /afiliados
  # GET /afiliados.json
  def index
    @afiliados = Afiliado.all
  end

  # GET /afiliados/1
  # GET /afiliados/1.json
  def show
  end

  # GET /afiliados/new
  def new
    @afiliado = Afiliado.new
  end

  # GET /afiliados/1/edit
  def edit
  end

  # POST /afiliados
  # POST /afiliados.json
  def create
    @afiliado = Afiliado.new(afiliado_params)

    respond_to do |format|
      if @afiliado.save
        format.html { redirect_to @afiliado, notice: 'Afiliado was successfully created.' }
        format.json { render :show, status: :created, location: @afiliado }
      else
        format.html { render :new }
        format.json { render json: @afiliado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /afiliados/1
  # PATCH/PUT /afiliados/1.json
  def update
    respond_to do |format|
      if @afiliado.update(afiliado_params)
        format.html { redirect_to @afiliado, notice: 'Afiliado was successfully updated.' }
        format.json { render :show, status: :ok, location: @afiliado }
      else
        format.html { render :edit }
        format.json { render json: @afiliado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /afiliados/1
  # DELETE /afiliados/1.json
  def destroy
    @afiliado.destroy
    respond_to do |format|
      format.html { redirect_to afiliados_url, notice: 'Afiliado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_afiliado
      @afiliado = Afiliado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def afiliado_params
      params.require(:afiliado).permit(:codigo, :nombre, :apellido, :genero, :edad, :estado_civil, :string, :tipo_id, :no_id, :direccion1, :direccion2, :ciudad, :municipio, :departamento, :pais, :actividad)
    end
end
