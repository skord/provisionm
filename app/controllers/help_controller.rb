
class HelpController < ApplicationController
  def index
    @title = 'Help!'
  end

  def about
    @title = 'About'
  end

  def usage
    @title = 'Usage'
  end
end
