class SelectionsController < ApplicationController
  def index
    @selections = Selection.order("choice")
  end

  def show
    @selection = Selection.find(params[:id])
  end
def add
    @selection = Selection.new
    @selections = Selection.order("chioce")
  end
  def new
    @selection = Selection.new
    @selections = Selection.order("choice")
  end

  def create
    @selection = Selection.new(params[:selection])
    if @selection.save
      redirect_to @selection, notice: "Successfully created Selection."
    else
      render :new
    end
  end

  def edit
    @selection = Selection.find(params[:id])
  end

  def update
    @selection = Selection.find(params[:id])
    if @selection.update_attributes(params[:selection])
      redirect_to @selection, notice: "Successfully created Selection."
    else
      render :edit
    end
  end

  def destroy
    @selection = Selection.find(params[:id])
    @selection.destroy
    redirect_to Selections_url, notice: "Successfully destroyed Selection."
  end
end
