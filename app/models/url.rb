class Url < ActiveRecord::Base
  attr_accessible :shorturl, :longurl

  def shorten(url)
    self.update(:shorturl => SecureRandom.hex(3))
  end

end