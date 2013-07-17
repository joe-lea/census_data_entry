class RelationshipStatusesController < ApplicationController
  before_action :set_relationship_status, only: [:show, :edit, :update, :destroy]

  # GET /relationship_statuses
  # GET /relationship_statuses.json
  def index
    @relationship_statuses = RelationshipStatus.all
  end

  # GET /relationship_statuses/1
  # GET /relationship_statuses/1.json
  def show
  end

  # GET /relationship_statuses/new
  def new
    @relationship_status = RelationshipStatus.new
  end

  # GET /relationship_statuses/1/edit
  def edit
  end

  # POST /relationship_statuses
  # POST /relationship_statuses.json
  def create
    @relationship_status = RelationshipStatus.new(relationship_status_params)

    respond_to do |format|
      if @relationship_status.save
        format.html { redirect_to @relationship_status, notice: 'Relationship status was successfully created.' }
        format.json { render action: 'show', status: :created, location: @relationship_status }
      else
        format.html { render action: 'new' }
        format.json { render json: @relationship_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relationship_statuses/1
  # PATCH/PUT /relationship_statuses/1.json
  def update
    respond_to do |format|
      if @relationship_status.update(relationship_status_params)
        format.html { redirect_to @relationship_status, notice: 'Relationship status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @relationship_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relationship_statuses/1
  # DELETE /relationship_statuses/1.json
  def destroy
    @relationship_status.destroy
    respond_to do |format|
      format.html { redirect_to relationship_statuses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relationship_status
      @relationship_status = RelationshipStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relationship_status_params
      params.require(:relationship_status).permit(:description)
    end
end
