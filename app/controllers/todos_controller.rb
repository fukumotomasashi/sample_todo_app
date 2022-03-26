class TodosController < ApplicationController
  def index
    @todo = Todo.new
    @todos = Todo.all
  end

  def create
    Todo.create(task: params_permitted[:task])
    redirect_to root_path
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.destroy
    redirect_to root_path
  end

  private

  def params_permitted
    params.require(:todo).permit(:task)
  end
end
