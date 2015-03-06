class PhbooksController < ApplicationController
  before_action :set_phbook, only: [:show, :edit, :update, :destroy]

  # GET /phbooks
  # GET /phbooks.json
  def index
    @phbooks = Phbook.all
  end

  # GET /phbooks/1
  # GET /phbooks/1.json
  def show
  end

  # GET /phbooks/new
  def new
    @phbook = Phbook.new
  end

  # GET /phbooks/1/edit
  def edit
  end

  # POST /phbooks
  # POST /phbooks.json
  def create
    @phbook = Phbook.new(phbook_params)

    respond_to do |format|
      if @phbook.save
        format.html { redirect_to @phbook, notice: 'Phbook was successfully created.' }
        format.json { render :show, status: :created, location: @phbook }
      else
        format.html { render :new }
        format.json { render json: @phbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phbooks/1
  # PATCH/PUT /phbooks/1.json
  def update
    respond_to do |format|
      if @phbook.update(phbook_params)
        format.html { redirect_to @phbook, notice: 'Phbook was successfully updated.' }
        format.json { render :show, status: :ok, location: @phbook }
      else
        format.html { render :edit }
        format.json { render json: @phbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phbooks/1
  # DELETE /phbooks/1.json
  def destroy
    @phbook.destroy
    respond_to do |format|
      format.html { redirect_to phbooks_url, notice: 'Phbook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phbook
      @phbook = Phbook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phbook_params
      params.require(:phbook).permit(:name, :phone, :note, :User_id)
    end
end
