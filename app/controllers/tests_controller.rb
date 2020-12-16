class TestsController < ApplicationController
  def index
    @test = Test.all
    @audio = @test.find(4)
  end
  
  def new
    @test = Test.new
  end

  def create
    @test = Test.create(test_params)
    @test.save
  end


  private
  def test_params
    params.require(:test).permit(:id,:file)
  end

end
