module Helpers
  def center_url(center)
    "/api/v1/centers/#{center[:id]}"
  end

  def centers_url
    '/api/v1/centers'
  end
end
