class PlaysController < ApplicationController
  # GET /plays
  # GET /plays.json
  def index
    @plays = Play.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @plays }
    end
  end

  # GET /plays/1
  # GET /plays/1.json
  def show
    @play = Play.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @play }
    end
  end

  # GET /plays/new
  # GET /plays/new.json
  def new
    @play = Play.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @play }
    end
  end

  # GET /plays/1/edit
  def edit
    @play = Play.find(params[:id])
  end

  # POST /plays
  # POST /plays.json
  def create
    @play = Play.new(play_params)

    respond_to do |format|
      if @play.save
        format.html { redirect_to @play, notice: 'Play was successfully created.' }
        format.json { render json: @play, status: :created, location: @play }
      else
        format.html { render action: "new" }
        format.json { render json: @play.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plays/1
  # PATCH/PUT /plays/1.json
  def update
    @play = Play.find(params[:id])

    respond_to do |format|
      if @play.update_attributes(play_params)
        format.html { redirect_to @play, notice: 'Play was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @play.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plays/1
  # DELETE /plays/1.json
  def destroy
    @play = Play.find(params[:id])
    @play.destroy

    respond_to do |format|
      format.html { redirect_to plays_url }
      format.json { head :no_content }
    end
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def play_params
      params.require(:play).permit()
    end
end
