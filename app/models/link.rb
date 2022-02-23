class Link < ApplicationRecord
    validates_presence_of :url
    validates :url, format: URI::regexp(%w[http https])
    validates_uniqueness_of :url, :slug
    before_validation :set_slug, if: :slug_empty?
  
    def slug_empty?
      slug.nil? || slug.empty?
    end
  
    private
  
    def set_slug
      unique_slug = SecureRandom.uuid[0..31] if self.slug.nil? || self.slug.empty?
      if self.class.exists?(slug: unique_slug)
        set_slug
      else
        self.slug = unique_slug
      end
    end
  
end
