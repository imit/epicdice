class PlayerCharactersController < ApplicationController
  # GET /characters
  # GET /characters.json
  def index
    @player_characters = PlayerCharacter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @player_characters }
    end
  end

  # GET /characters/1
  # GET /characters/1.json
  def show
    @player_character = PlayerCharacter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @player_character }
    end
  end

  # GET /characters/new
  # GET /characters/new.json
  def new
    @player_character = PlayerCharacter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @player_character }
    end
  end

  # GET /characters/1/edit
  def edit
    @player_character = PlayerCharacter.find(params[:id])
  end

  # POST /characters
  # POST /characters.json
  def create
    @player_character = PlayerCharacter.new_player_character(params[:player_character], params[:character_class_name], current_user)
    respond_to do |format|
      if @player_character.save
        format.html { redirect_to @player_character, notice: 'Character was successfully created.' }
        format.json { render json: @player_character, status: :created, location: @player_character }
      else
        format.html { render action: "new" }
        format.json { render json: @player_character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /characters/1
  # PUT /characters/1.json
  def update
    @player_character = PlayerCharacter.find(params[:id])

    respond_to do |format|
      if @player_character.update_attributes(params[:player_character])
        format.html { redirect_to @player_character, notice: 'Character was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @player_character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.json
  def destroy
    @player_character = PlayerCharacter.find(params[:id])
    @player_character.destroy

    respond_to do |format|
      format.html { redirect_to player_characters_url }
      format.json { head :ok }
    end
  end
end
