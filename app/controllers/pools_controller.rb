class PoolsController < ApplicationController
  def index
    @pools = Pool.get_pools
    respond_to do |format|
      format.js
      format.html
    end
  end
end
