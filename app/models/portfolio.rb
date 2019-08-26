class Portfolio < ApplicationRecord

    validates_presence_of :title, :body, :main_image, :thumb_image

    def self.react
        where(subtitle: "React")
    end

    scope :ruby_on_rails, -> { where(subtitle: "Ruby on Rails") }

    after_initialize :set_defaults

    def set_defaults
        self.main_image ||= "http://via.placeholder.com/640x360"
        self.thumb_image ||= "http://www.thindiamond.com/wp-content/uploads/2015/04/300x250.png"
    end

end
