require 'spec_helper'

describe Movies do
  it 'has a version number' do
    expect(Movies::VERSION).not_to be nil
  end

  describe "Search" do
    let(:search) { Movies::Search.new }

    describe "#films" do
      it "should list movies" do
        expect(search.films).to eq []
      end
    end
  end
end
