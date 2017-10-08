class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :update, :destroy]


  def index
    render json: Todo.all
  end


  def show
    render json: Todo.find(params[:id])
  end


  def create
    todo = Todo.new(todo_params)
    
    if todo.save!
      render json: todo
    else
      render json: {status: 500, err: 'todo could not be created.'}
    end
  end


  def update
    todo = Todo.find(params[:id])
    if todo.update!(todo_params)
      render json: todo
    else
      render json: {status: 500, err: 'todo could not be updated.'}
    end  
  end


  def destroy
    todo = Todo.find(params[:id])
    if todo.destroy!
      render json: {message: "successfully deleted!"}, status: 200
    else
      render json: {status: 500, err: 'todo could not be destroyed.'}
    end  
  end

        
  def clear_complete
    todos = Todo.where("complete = 't'")
    todos.each do |todo|
      todo.destroy
    end
    render json: {message: "successfully cleaned!"}, status: 200
  end
  
  
  def todo_params
    # whitelist params
    params.permit(:id, :title, :owner, :complete)
  end
    
  
  def set_todo
    @todo = Todo.find(params[:id])
  end
  
end
