class TestsController < ApplicationController
  before_action :set_test, only: [:show, :edit, :update, :destroy]
  # GET /tests
  # GET /tests.json
  def index
    @tests = Test.all
    @test = Test.new
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
  end

  # GET /tests/new
  def new
    @test = Test.new
  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json

  def create
    @test = Test.new(test_params)
      
    @test2 = String.new("This is my string. Get your own string")
    
  
    respond_to do |format|
      if @test.save
        format.html { redirect_to @test, flash: {:@test2 => @test2}, notice: 'Test was successfully created.' }
        format.js
        format.json { render json: @test, status: :created, location: @test }
      else
        format.html { render action: "new" }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
    
    # (0..@test.uploads.length-1).each do |i|
    #     @test2 = @test2 + i.to_s
    # end
    
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @test.update(test_params)
        format.html { redirect_to root_path(@test2), notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @test }
      else
        format.html { render :edit }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @test.destroy
    respond_to do |format|
      format.html { redirect_to tests_url, notice: 'Test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test
      @test = Test.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_params
      params.require(:test).permit(:name, uploads: [])
    end
end
