class CodingLangsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_coding_lang, only: [:show, :edit, :update, :destroy]

  # GET /coding_langs
  # GET /coding_langs.json
  def index
    @coding_langs = CodingLang.all
  end

  # GET /coding_langs/1
  # GET /coding_langs/1.json
  def show
  end

  # GET /coding_langs/new
  def new
    @coding_lang = CodingLang.new
  end

  # GET /coding_langs/1/edit
  def edit
  end

  # POST /coding_langs
  # POST /coding_langs.json
  def create
    @coding_lang = CodingLang.new(coding_lang_params)

    respond_to do |format|
      if @coding_lang.save
        format.html { redirect_to @coding_lang, notice: 'Coding lang was successfully created.' }
        format.json { render action: 'show', status: :created, location: @coding_lang }
      else
        format.html { render action: 'new' }
        format.json { render json: @coding_lang.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coding_langs/1
  # PATCH/PUT /coding_langs/1.json
  def update
    respond_to do |format|
      if @coding_lang.update(coding_lang_params)
        format.html { redirect_to @coding_lang, notice: 'Coding lang was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @coding_lang.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coding_langs/1
  # DELETE /coding_langs/1.json
  def destroy
    @coding_lang.destroy
    respond_to do |format|
      format.html { redirect_to coding_langs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coding_lang
      @coding_lang = CodingLang.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coding_lang_params
      params.require(:coding_lang).permit(:name, :description)
    end
end
