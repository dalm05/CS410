class QuestionnairesController < ApplicationController
  def index
    @questionnaires = Questionnaire.order("course")
  end

  def show
    @questionnaire = Questionnaire.find(params[:id])
  end
def add
    @questionnaire = Questionnaire.new
    @questionnaires = Questionnaire.order("course")
  end
  def new
    @questionnaire = Questionnaire.new
    @questionnaires = Questionnaire.order("course")
  end

  def create
    @questionnaire = Questionnaire.new(params[:questionnaire])
    if @questionnaire.save
      redirect_to @questionnaire, notice: "Successfully created Questionnaire."
    else
      render :new
    end
  end

  def edit
    @questionnaire = Questionnaire.find(params[:id])
  end

  def update
    @questionnaire = Questionnaire.find(params[:id])
    if @questionnaire.update_attributes(params[:questionnaire])
      redirect_to @questionnaire, notice: "Successfully created Questionnaire."
    else
      render :edit
    end
  end

  def destroy
    @questionnaire = Questionnaire.find(params[:id])
    @questionnaire.destroy
    redirect_to questionnaires_url, notice: "Successfully destroyed Questionnaire."
  end
end
