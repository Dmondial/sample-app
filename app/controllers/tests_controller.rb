class TestsController < ApplicationController
  def index
    @audio = Test.find(6)
    @test = Test.all
  end
  
  def new
    @test = Test.new
  end

  def create
    @test = Test.create(test_params)
    @test.save
  end

  def sound_for 
    @test = Test.all
  end

  private
  def test_params
    params.require(:test).permit(:id,:file)
  end

end
