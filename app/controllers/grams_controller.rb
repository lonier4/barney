class GramsController < ApplicationController
  def index
    
  end

  def new
    @gram = Gram.new
  end

  def create
    @gram = Gram.create(new_gram)
    redirect_to root_path
  end

  private

  def new_gram
    params.require(:gram).permit(:message)
  end
end
