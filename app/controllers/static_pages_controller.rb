class StaticPagesController < ApplicationController
  def index
    @goods = Good.all
  end

  def admin
  end

  def cart
  end

  def order
  end

  def show

  end

  def detail
    @good = Good.new
    @good = Good.find(params[ :format])
  end


end
