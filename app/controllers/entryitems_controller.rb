class EntryitemsController < ApplicationController
  before_action :set_entryitem, only: [:show, :edit, :update, :destroy]

  # GET /entryitems
  # GET /entryitems.json
  def index
    @entryitems = Entryitem.all
  end

  # GET /entryitems/1
  # GET /entryitems/1.json
  def show
    
  end

  # GET /entryitems/new
  def new
    @entryitem = Entryitem.new
  end

  # GET /entryitems/1/edit
  def edit
  end

  # POST /entryitems
  # POST /entryitems.json
  def create
    @entryitem = Entryitem.new(entryitem_params)

    respond_to do |format|
      if @entryitem.save
        format.html { redirect_to @entryitem, notice: 'Entryitem was successfully created.' }
        format.json { render action: 'show', status: :created, location: @entryitem }
      else
        format.html { render action: 'new' }
        format.json { render json: @entryitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entryitems/1
  # PATCH/PUT /entryitems/1.json
  def update
    respond_to do |format|
      if @entryitem.update(entryitem_params)
        format.html { redirect_to @entryitem, notice: 'Entryitem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @entryitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entryitems/1
  # DELETE /entryitems/1.json
  def destroy
    @entryitem.destroy
    respond_to do |format|
      format.html { redirect_to entryitems_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entryitem
      @entryitem = Entryitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entryitem_params
      params.require(:entryitem).permit(:description, :client_id, :deal_id)
    end
end
