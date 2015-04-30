class PoolsController < ApplicationController
  def index
    @pools = Pool.get_pools

  end
end
