class Api::ExperiencesController < ApplicationController

    def index
    @experiences = Experience.all
    render "index.json.jb"
  end

  def show
    @experience = Experience.find(params[:id])
    render "show.json.jb"
  end

  def create
    @experience = Experience.new(
      employer: params[:employer],
      title: params[:title],
      user_id: params[:user_id],
      date_beginning: params[:date_beginning],
      date_end: params[:date_end],
      description: params[:description]
      )
    if @experience.save
      render 'show.json.jb'
    else
      render json: {errors: @experience.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @experience = Experience.find(params[:id])

    @experience.employer = params[:employer] || @experience.employer
    @experience.title = params[:title] || @experience.title
    @experience.user_id = params[:user_id] || @experience.user_id
    @experience.date_beginning = params[:date_beginning] || @experience.date_beginning
    @experience.date_end = params[:date_end] || @experience.date_end
    @experience.description = params[:description] || @experience.description

    if @experience.save
      render 'show.json.jb'
    else
      render json: {errors: @experience.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @experience = Experience.find(params[:id])
    @experience.destroy
    render json: {message: "Experience successfully destroyed"
    }
  end

end
