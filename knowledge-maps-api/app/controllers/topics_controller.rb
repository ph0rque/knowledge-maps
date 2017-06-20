class TopicsController < ApplicationController
 # index create edit update delete
 before_action :set_knowledge_map
 before_action :set_topic, only: [:show, :edit, :update, :destroy]

 # GET knowledge_maps/1/topics.json
 def index
   @topics = @knowledge_map.topics

   render json: @topics
 end

 # GET knowledge_maps/1/topics/1.json
 def show
   render json: @topic
 end

 # # GET knowledge_maps/1/topics/new.json
 # def new
 #   @topic = @knowledge_map.topics.new
 # end
 #
 # # GET knowledge_maps/1/topic/1/edit.json
 # def edit
 # end

 # POST knowledge_maps/1/topic.json
 def create
   @topic = @knowledge_map.topics.build(topic_params)

   respond_to do |format|
     if @topic.save
       format.json { render :show, status: :created, location: @topic }
     else
       format.json { render json: @topic.errors, status: :unprocessable_entity }
     end
   end
 end

 # PATCH/PUT knowledge_maps/1/topic/1.json
 def update
   respond_to do |format|
     if @topic.update(topic_params)
       format.json { render :show, status: :ok, location: @topic }
     else
       format.json { render json: @topic.errors, status: :unprocessable_entity }
     end
   end
 end

 # DELETE knowledge_maps/1/topic/1.json
 def destroy
   @topic.destroy
   respond_to do |format|
     format.json { head :no_content }
   end
 end

 protected

 def set_knowledge_map
   @knowledge_map = KnowledgeMap.find(params[:knowledge_map_id])
 end

 def set_topic
   @topic = Topic.find(params[:id])
 end

 def topic_params
   params.require(:data).permit(:type, {attributes: [:name, :classification]})
 end
end
