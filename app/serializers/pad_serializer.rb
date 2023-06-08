class PadSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :user_id, :frame_count, :frames
  has_many :frames
end
