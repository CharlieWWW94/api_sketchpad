class PadsController < ApplicationController
  before_action :verify_session
  before_action :all_pads, only: %i[ index ]
  before_action :set_pad, only: %i[ show update destroy ]

  # GET /pads
  def index
    render json: @pads
  end

  # GET /pads/1
  def show
    render json: @pad
  end

  # POST /pads
  def create
    @pad = Pad.new(pad_params)

    if @pad.save
      render json: @pad, status: :created, location: @pad
    else
      render json: @pad.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pads/1
  def update
    if @pad.update(pad_params)
      render json: @pad
    else
      render json: @pad.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pads/1
  def destroy
    @pad.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pad
      @pad = Pad.find(params[:id])
    end

    def all_pads
      @pads = current_user.pads.includes(:frames)
    end

    # Only allow a list of trusted parameters through.
    def pad_params
      params.require(:pad).permit(:name)
    end
end
