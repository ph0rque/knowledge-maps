class KnowledgeMapsController < ApplicationController
  before_action :set_knowledge_map, only: [:show, :edit, :update, :destroy]

  # GET /knowledge_maps.json
  def index
    @knowledge_maps = KnowledgeMap.all

    render json: @knowledge_maps
  end

  # GET /knowledge_maps/1.json
  def show
    render json: @knowledge_map
  end

  # # GET /knowledge_maps/new.json
  # def new
  #   @knowledge_map = KnowledgeMap.new
  # end
  #
  # # GET /knowledge_map/1/edit.json
  # def edit
  # end

  # POST /knowledge_map.json
  def create
    @knowledge_map = KnowledgeMap.new(knowledge_map_params)

    respond_to do |format|
      if @knowledge_map.save
        format.json { render :show, status: :created, location: @knowledge_map }
      else
        format.json { render json: @knowledge_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /knowledge_map/1.json
  def update
    respond_to do |format|
      if @knowledge_map.update(knowledge_map_params)
        format.json { render :show, status: :ok, location: @knowledge_map }
      else
        format.json { render json: @knowledge_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /knowledge_map/1.json
  def destroy
    @knowledge_map.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  protected

  # Use callbacks to share common setup or constraints between actions.
  def set_knowledge_map
    @knowledge_map = KnowledgeMap.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def knowledge_map_params
    params.require(:data).permit(:type, {attributes: [:name, :description]})
  end
end
