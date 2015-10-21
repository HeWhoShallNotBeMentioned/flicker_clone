class Picture < ActiveRecord::Base

  has_attached_file :pic
  # Validate content type
  validates_attachment_content_type :pic, content_type: /\Aimage/
  # Validate filename
  validates_attachment_file_name :pic, matches: [/png\Z/, /jpe?g\Z/]
  # Explicitly do not validate
  do_not_validate_attachment_file_type :pic



    validates :pic, attachment_presence: true
    validates_with AttachmentPresenceValidator, attributes: :pic
    validates_attachment_content_type :pic, :content_type => /\Aimage\/.*\Z/

    belongs_to :user
    has_many :comments

    validates :caption, :presence => true
    validates :content, :presence => true
    validates :user_id, :presence => true



end
