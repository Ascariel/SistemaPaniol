class ProviderRequestsController < ApplicationController
  def index
    @provider_requests = ProviderRequest.all
  end
end
