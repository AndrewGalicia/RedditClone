class SubsController < ApplicationController

  def new
    render :new
  end

  def create
    @sub = Sub.new(subs_params)
    if @sub
      redirect_to sub_url
    else
      flash.now[:errors] = @sub.errors.full_mesages
      render :new
    end
  end

  def edit

  end

  def show
    @sub = Sub.find(params[:id])
    render :show
  end

  def update

  end

  def index  
    @subs = Sub.all
    render :index
  end

  def subs_params
    params.require(:sub).permit(:title, :description)
  end

end

# Write all the standard seven routes for SubsController. You can leave out destroy if you'd like.

# Write an edit route where the moderator is allowed to update the title and description. Use a before_action to prohibit non-moderators from editing or updating the Sub.
