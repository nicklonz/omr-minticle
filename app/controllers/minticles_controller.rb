class MinticlesController < ApplicationController
  before_action :set_minticle, only: [:show, :edit, :update, :destroy]

  def index
    @minticles = Minticle.all
  end

  def show
  end

  def new
    @minticle = Minticle.new
  end

  def edit
  end

  def create
    @minticle = Minticle.new(minticle_params)
    if @minticle.save
      redirect_to @minticle, notice: 'Minticle was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @minticle.update(minticle_params)
      redirect_to @minticle, notice: 'Minticle was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @minticle.destroy
    redirect_to minticles_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_minticle
      @min = Minticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def minticle_params
      params.require(:minticle).permit(:description)
    end
end