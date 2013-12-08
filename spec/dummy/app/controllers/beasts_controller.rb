class BeastsController < ApplicationController

  def show
    @beast = Beast.find(params[:id])
  end

  def new
    @beast = Beast.new
  end

  def create
    @beast = Beast.new(params[:beast])
    if @beast.save
      redirect_to @beast
    else
      render :new
    end
  end

  def edit
    @beast = Beast.find(params[:id])
  end

  def update
    @beast = Beast.find(params[:id])
    if @beast.update_attributes(params[:beast])
      redirect_to @beast
    else
      render :edit
    end
  end
end
