require 'spec_helper'

describe HL7::Message::Segment::ZEF do
  let(:zef_segment){
    %[ZEF|1|embedded-pdf-data]
  }

  let(:zef){
    HL7::Message::Segment::ZEF.new( zef_segment )
  }

  it 'creates a ZEF segment' do
    expect(zef).to_not be_nil
  end

  it 'converts the segment to a string' do
    expect(zef.to_s).to eq zef_segment
  end

  it 'allows access to a ZEF segment' do
    expect(zef.set_id).to eq '1'
    expect(zef.embedded_pdf).to eq('embedded-pdf-data')
  end

  it 'is a child of OBX' do
    expect(HL7::Message::Segment::OBX.child_types).to include(:ZEF)
  end
end
