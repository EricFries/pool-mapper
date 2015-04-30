class PoolsController < ApplicationController
  def index
    @pools = Pool.get_pools
    # binding.pry
  end
end
