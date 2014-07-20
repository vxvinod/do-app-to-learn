class TraversalsController < ApplicationController
  before_filter :load_traversable

  def index
  	@travers = @traversable.traversals.where('id > ?',params[:after].to_i)
    respond_to do |format|
      format.js
      format.html
    end
  end

  def new
  	@traversal = @traversable.traversals.new
  end

  def create
  	@traversal = @traversable.traversals.new(traverse_params)
  	if @traversal.save
  		redirect_to @traversable
  	else
  		render :new
  	end
  end
  private

  def load_traversable
  	resource,id = request.path.split('/')[1,2]
  	puts resource,id
  	@traversable = resource.singularize.classify.constantize.find(id)
  end

  def traverse_params
  	params.require(:traversal).permit(:content)
  end
end
