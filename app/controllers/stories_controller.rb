class StoriesController < ApplicationController
  # GET /stories
  # GET /stories.json
  def index
    @stories = Story.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stories }
    end
  end

  # GET /stories/1
  # GET /stories/1.json
  def show
    @story = Story.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @story }
    end
  end

  # GET /stories/new
  # GET /stories/new.json
  def new
    @story = Story.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @story }
    end
  end

  # GET /stories/1/edit
  def edit
    @story = Story.find(params[:id])
  end

  # POST /stories
  # POST /stories.json
  def create
    @story = Story.new(params[:story])

    respond_to do |format|
      if @story.save
        format.html { redirect_to @story, notice: 'Story was successfully created.' }
        format.json { render json: @story, status: :created, location: @story }
      else
        format.html { render action: "new" }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stories/1
  # PUT /stories/1.json
  def update
    @story = Story.find(params[:id])

    respond_to do |format|
      if @story.update_attributes(params[:story])
        format.html { redirect_to @story, notice: 'Story was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stories/1
  # DELETE /stories/1.json
  def destroy
    @story = Story.find(params[:id])
    @story.destroy

    respond_to do |format|
      format.html { redirect_to stories_url }
      format.json { head :no_content }
    end
  end

  def story_stepping
    @status=false
    @complete=false
    @choice_made=PathOption.find(params[:step])
    @snippet=Snippet.find(@choice_made.next_id)

    if !@snippet.path_options.first.name.blank?
      @stepping="<h2>Make your choice</h2><ul>"
      @snippet.path_options.each do |option|
        @stepping = @stepping + "<li><a href='#' class='option' data-step='#{option.id}'>#{option.name}</a><br></li>"
      end
      @stepping=@stepping+"</ul>"
    elsif Snippet.find(@snippet.path_options.first.next_id).description.downcase=="success"
      @stepping="success!!"
      @complete=true
      @status=true
    else
      @stepping="failed!!"
      @complete=true
      @status=false
    end

    render :json => {:last_choice=>@choice_made.name,:scenario => @snippet.description, :this_choice => @stepping, :status => @status, :complete => @complete}
  end

end
