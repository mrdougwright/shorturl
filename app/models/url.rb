class Url < ActiveRecord::Base
  attr_accessible :shorturl, :longurl

  def shorten(url)
    Url.create!(:url => url, :s_url => SecureRandom.hex)
  end

  def unshorten(s_url)
    Url.where(:s_url == s_url).first.url
  end
end
