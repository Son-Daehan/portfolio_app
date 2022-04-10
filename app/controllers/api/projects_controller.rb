class Api::ProjectsController < ApplicationController

  def index
    @projects = Project.all
    render "index.json.jb"
  end

  def show
    @project = Project.find(params[:id])
    render "show.json.jb"
  end

  def create
    @project = Project.new(
      title: params[:title],
      user_id: params[:user_id],
      image_url: params[:image_url]
      )
    if @project.save
      render 'show.json.jb'
    else
      render json: {errors: @project.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @project = Project.find(params[:id])

    @project.title = params[:title] || @project.title
    @project.user_id = params[:user_id] || @project.user_id
    @project.image_url = params[:image_url] || @project.image_url

    if @project.save
      render 'show.json.jb'
    else
      render json: {errors: @project.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    render json: {message: "Project successfully destroyed"
    }
  end





end
