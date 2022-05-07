class Link < ApplicationRecord

  validates_uniqueness_of :short_id

  def short
    "http://localhost:5000/tiny/" + self.short_id
  end

  def self.shorten(url)
    short_id = SecureRandom.uuid[0..8]
    Link.shorten(url) if Link.find_by(short_id: short_id)

    # return existing
    link = Link.where(url: url).first
    return link.short if link 
      
    # create a new
    link = Link.new(url: url, short_id: short_id)
    return link.short if link.save
      
  end

end
