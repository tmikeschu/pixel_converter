# frozen_string_literal: true

require "spec_helper"
require "pixel_converter"

RSpec.describe PixelConverter do
  let(:file) { StringIO.new(scss) }
  let(:scss) { ".container {\n  font-size: 16px;\n  margin: 10px;\n}" }
  let(:unit)      { "rem" }
  let(:scale)     { 10 }
  let(:file_name) { "file.scss" }
  let(:args)      { [unit, scale, file_name] }
  subject         { described_class.new(*args) }

  before do
    allow(File).to receive(:read) { file.read }
    allow(File).to receive(:new)  { file }
  end

  describe ".convert_to" do
    it "instantiates and calls convert" do
      expect(described_class)
        .to receive_message_chain(:new, :convert)
        .with(*args).with(no_args)

      described_class.convert_to(*args)
    end
  end

  describe "#convert" do
    it "creates a new file" do
      expect(File).to receive(:new)
        .with("file.copy.scss", "w")
      subject.convert
    end
  end

  describe "#converted" do
    it "returns the converted file string" do
      allow(subject).to receive(:raw_file) { scss }

      result = subject.converted

      expect(result).to     include "1.6rem"
      expect(result).to_not include "16px"
      expect(result).to     include "1.0rem"
      expect(result).to_not include "10px"
    end
  end
end
