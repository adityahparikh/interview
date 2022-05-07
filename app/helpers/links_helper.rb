module LinksHelper

  def get_short_url_if_present(file)
    url = url_for(file)
    Link.shorten(url) if url.present?
  end
end
