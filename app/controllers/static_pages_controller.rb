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
end
