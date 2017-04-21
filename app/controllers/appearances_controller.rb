class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(appearance_params)
    if @appearance.save
      redirect_to @appearance.episode
    else
      redirect_to new_appearance_path
    end
  end

  def edit
    unless @appearance = Appearance.find(params[:id])
      redirect_to new_appearance_path
    end
  end

  def update
    @appearance = Appearance.find(params[:id])
    @appearance.update(appearance_params)
    if @appearance.save
      redirect_to episode_path(@appearance.episode)
    else
      redirect_to edit_appearance(@appearance)
    end
  end

  private

  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating, :user_id)
  end

end
