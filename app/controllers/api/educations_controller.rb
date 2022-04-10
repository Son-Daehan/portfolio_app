class Api::EducationsController < ApplicationController

  def index
    @educations = Education.all
    render "index.json.jb"
  end

  def show
    @education = Education.find(params[:id])
    render "show.json.jb"
  end

  def create
    @education = Education.new(
      title: params[:title],
      school: params[:school],
      user_id: params[:user_id],
      date_beginning: params[:date_beginning],
      date_end: params[:date_end],
      description: params[:description]
      )
    if @education.save
      render 'show.json.jb'
    else
      render json: {errors: @education.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @education = Education.find(params[:id])

    @education.title = params[:title] || @education.title
    @education.school = params[:school] || @education.school
    @education.user_id = params[:user_id] || @education.user_id
    @education.date_beginning = params[:date_beginning] || @education.date_beginning
    @education.date_end = params[:date_end] || @education.date_end
    @education.description = params[:description] || @education.description

    if @education.save
      render 'show.json.jb'
    else
      render json: {errors: @education.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @education = Education.find(params[:id])
    @education.destroy
    render json: {message: "Education successfully destroyed"
    }
  end

end
