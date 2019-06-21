RSpec.describe Aphorism do
  it "has a version number" do
    expect(Aphorism::VERSION).not_to be nil
  end

  let(:orator) { Aphorism::Orator.new }
  it "returns a statement" do
    expect { orator.say }.to output(String).to_stdout
  end
end
