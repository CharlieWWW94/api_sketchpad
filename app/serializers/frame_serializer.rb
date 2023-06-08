class FrameSerializer
  include JSONAPI::Serializer
  attributes  :id, :name, :width, :height, :content, :pad_id
  belongs_to :pad
end
