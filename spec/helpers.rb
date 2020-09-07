module Helpers
  def center_url(center)
    url = "/api/v1/centers/#{center[:id]}"
  end

  def centers_url
    url = '/api/v1/centers'
  end
end
