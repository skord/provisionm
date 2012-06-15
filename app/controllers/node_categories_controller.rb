class NodeCategoriesController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]
  layout 'details'
  # GET /node_categories
  # GET /node_categories.json
  def index
    @node_categories = NodeCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @node_categories }
    end
  end

  # GET /node_categories/1
  # GET /node_categories/1.json
  def show
    @node_category = NodeCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @node_category }
    end
  end

  # GET /node_categories/new
  # GET /node_categories/new.json
  def new
    @node_category = NodeCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @node_category }
    end
  end

  # GET /node_categories/1/edit
  def edit
    @node_category = NodeCategory.find(params[:id])
  end

  # POST /node_categories
  # POST /node_categories.json
  def create
    @node_category = NodeCategory.new(params[:node_category])

    respond_to do |format|
      if @node_category.save
        format.html { redirect_to @node_category, notice: 'Node category was successfully created.' }
        format.json { render json: @node_category, status: :created, location: @node_category }
      else
        format.html { render action: "new" }
        format.json { render json: @node_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /node_categories/1
  # PUT /node_categories/1.json
  def update
    @node_category = NodeCategory.find(params[:id])

    respond_to do |format|
      if @node_category.update_attributes(params[:node_category])
        format.html { redirect_to @node_category, notice: 'Node category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @node_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /node_categories/1
  # DELETE /node_categories/1.json
  def destroy
    @node_category = NodeCategory.find(params[:id])
    @node_category.destroy

    respond_to do |format|
      format.html { redirect_to node_categories_url }
      format.json { head :no_content }
    end
  end
end
