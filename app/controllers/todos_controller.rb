class TodosController < ApplicationController
  def index
    @todos = Todo.where(delete_flg: false)
  end
end
