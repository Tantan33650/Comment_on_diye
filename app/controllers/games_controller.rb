class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]
  def index
    @games = Game.all
  end

  def show
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @game.update(game_params)
      redirect_to game_path(@game)
    else
      render :edit
    end
  end

  def destroy
    @game.destroy
    redirect_to games_path
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params_require(:game).permit(:point)
  end
end
