class ListsController < ApplicationController
  def new
    #viewへ渡すインスタンス変数に空のmodelオブジェクトを作る
    @list=List.new
  end
  def create
    #1&2 データを受け取って新規登録するためのインスタンス作成
    list=List.new(list_params)
    #3 データをデータベースに保存するためのsaveメソッドの実行
    list.save
    #4
    redirect_to '/top'
  end
  def index
  end

  def show
  end

  def edit
  end
  private
  def list_params
    params.require(:list).permit(:title,:body)
  end
end
