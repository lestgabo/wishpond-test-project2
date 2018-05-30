class PageTwosController < ApplicationController
  before_action :set_page_two, only: [:show, :edit]# :update, :destroy]

  # GET /page_twos
  # GET /page_twos.json
  def index
    @page_twos = PageTwo.all
  end

  # GET /page_twos/1
  # GET /page_twos/1.json
  def show
  end

  # GET /page_twos/new
  def new
    @page_two = PageTwo.new
  end

  # GET /page_twos/1/edit
  def edit
  end

  # POST /page_twos
  # POST /page_twos.json
  def create
    @page_two = PageTwo.new(page_two_params)
    
    @page_two << @tests
    respond_to do |format|
      if @page_two.save
        format.html { redirect_to @page_two, notice: 'Page two was successfully created.' }
        format.json { render :show, status: :created, location: @page_two }
      else
        format.html { render :new }
        format.json { render json: @page_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # # PATCH/PUT /page_twos/1
  # # PATCH/PUT /page_twos/1.json
  # def update
  #   respond_to do |format|
  #     if @page_two.update(page_two_params)
  #       format.html { redirect_to @page_two, notice: 'Page two was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @page_two }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @page_two.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /page_twos/1
  # # DELETE /page_twos/1.json
  # def destroy
  #   @page_two.destroy
  #   respond_to do |format|
  #     format.html { redirect_to page_twos_url, notice: 'Page two was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page_two
      @page_two = PageTwo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_two_params
      params.require(:page_two).permit(images: [])
    end
end
