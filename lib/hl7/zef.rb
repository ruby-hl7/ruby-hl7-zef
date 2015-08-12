module HL7
  class Message::Segment::ZEF < HL7::Message::Segment
    weight 8
    add_field :set_id,        :idx => 1 # ZEF-1 "Sequence Number", 1~9999
    add_field :embedded_pdf,  :idx => 2 # ZEF-2
  end
end
