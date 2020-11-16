require File.join(File.dirname(__FILE__), '../spec_helper')

describe 'OEmbed::Providers::Youtube' do
  use_custom_vcr_casette('OEmbed_Providers_Youtube')
  include OEmbedSpecHelper

  subject { OEmbed::Providers::Youtube }

  expected_valid_urls = %w(
    https://www.youtube.com/watch?v=pO5L6vXtxsI
    http://www.youtube.com/watch?v=pO5L6vXtxsI
    https://youtu.be/pO5L6vXtxsI
  )
  expected_invalid_urls = %w(
    https://www.youtube.co.uk/watch?v=pO5L6vXtxsI
  )

  it_should_behave_like(
    "an OEmbed::Proviers instance",
    expected_valid_urls,
    expected_invalid_urls
  )
end
