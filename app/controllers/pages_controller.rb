class PagesController < ApplicationController
  layout :layout_for_page


  def show
    render params[:id]
  end

  protected
  def layout_for_page
    case params[:id]
      when 'home'
        'home'
      else
        'application'
    end
  end

end
