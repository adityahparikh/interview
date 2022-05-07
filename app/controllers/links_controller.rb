class LinksController < ApplicationController
  def show
    @link = Link.find_by(short_id: params[:short_id])

    respond_to do |format|
      format.html { redirect_to @link.url }
      format.json { head :no_content }
    end

  end  
end