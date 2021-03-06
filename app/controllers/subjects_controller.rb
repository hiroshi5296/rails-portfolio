class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new
  end

  def edit
    @subject = Subject.find(params[:id])
  end
  
  def create
    @subject = Subject.new(subject_params) 
    if @subject.save
      redirect_to @subject, notice: "学科を登録しました"
    else
      render "new"
    end
  end
  
  def update
    @subject = Subject.find(params[:id])
    @subject.assign_attributes(subject_params)
    if @subject.save
      redirect_to @subject, notice: "会員情報を更新しました。"
    else
      render "edit"
    end
  end
  
  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    redirect_to :subject, notice: "会員情報を削除しました"
  end
  
  private def subject_params
    params.require(:subject).permit(
      :name,
      :content,
      :teacher
    )
  end
end
