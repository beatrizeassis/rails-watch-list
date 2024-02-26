class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @lists = List.find(params[:id])
  end

  def new
    @lists = List.new
  end

  def create
    @lists = List.nre(list_params)
    @lists.save

    redirect_to list_path(lists)
  end

  private

  def list_params
    params.require(:lists).permit(:lists)
  end
end
