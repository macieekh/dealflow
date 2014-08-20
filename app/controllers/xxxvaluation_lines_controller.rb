class valuation_lineLinesController < ApplicationController
  before_action :set_valuation_line_line, only: [:show, :edit, :update, :destroy]

  # GET /valuation_lines
  # GET /valuation_lines.json
  def index
    @valuation_lines = valuation_line.all
  end

  # GET /valuation_lines/1
  # GET /valuation_lines/1.json
  def show
  end

  # GET /valuation_lines/new
  def new
    @valuation_line = valuation_line.new
    @parts = Part.all
  end

  # GET /valuation_lines/1/edit
  def edit
  end

  # POST /valuation_lines
  # POST /valuation_lines.json
  def create
    @valuation_line = valuation_line.new(valuation_line_params)

    respond_to do |format|
      if @valuation_line.save
        format.html { redirect_to @valuation_line, notice: 'valuation_line was successfully created.' }
        format.json { render action: 'show', status: :created, location: @valuation_line }
      else
        format.html { render action: 'new' }
        format.json { render json: @valuation_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /valuation_lines/1
  # PATCH/PUT /valuation_lines/1.json
  def update
    respond_to do |format|
      if @valuation_line.update(valuation_line_params)
        format.html { redirect_to @valuation_line, notice: 'valuation_line was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @valuation_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /valuation_lines/1
  # DELETE /valuation_lines/1.json
  def destroy
    @valuation_line.destroy
    respond_to do |format|
      format.html { redirect_to valuation_lines_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_valuation_line
      @valuation_line = valuation_line.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def valuation_line_params
      #params.require(:valuation_line).permit(:description, :part_id, :valuation_line_id, :pruchase_price, :valuation_line_line, :quantity, :part_ids, :valuation_line_lines_attributes, parts_attributes: [:id, :code, :name])
      params.require(:valuation_line).permit(:description, :part_id, :valuation_line_id, :pruchase_price, :valuation_line_line, :quantity, :part_ids, parts_attributes: [:id, :code, :name], valuation_line_lines_attributes: [:id, :valuation_line_id, :part_id, :pruchase_price, :quantity])
      #params.require(:valuation_line).permit(:description, :part_id, :valuation_line_id, :purchase_price, :quantity, :part_ids, :valuation_line_line, valuation_line_lines_attributes: [:id, :quantity])
  end
end
