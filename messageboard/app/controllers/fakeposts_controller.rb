class FakepostsController < ApplicationController
  before_action :set_fakepost, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @fakeposts = Fakepost.all
    respond_with(@fakeposts)
  end

  def show
    respond_with(@fakepost)
  end

  def new
    @fakepost = Fakepost.new
    respond_with(@fakepost)
  end

  def edit
  end

  def create
    @fakepost = Fakepost.new(fakepost_params)
    @fakepost.save
    respond_with(@fakepost)
  end

  def update
    @fakepost.update(fakepost_params)
    respond_with(@fakepost)
  end

  def destroy
    @fakepost.destroy
    respond_with(@fakepost)
  end

  private
    def set_fakepost
      @fakepost = Fakepost.find(params[:id])
    end

    def fakepost_params
      params.require(:fakepost).permit(:title, :content)
    end
end
