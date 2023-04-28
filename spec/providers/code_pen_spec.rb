require "spec_helper"

describe "OEmbed::Providers::CodePen" do
  use_custom_vcr_casette("OEmbed_Providers_CodePen")
  include OEmbedSpecHelper

  let(:provider) { OEmbed::Providers::CodePen }

  expected_valid_urls = %w[
    https://codepen.io/maximakymenko/pen/mdbpeXm
  ]
  expected_invalid_urls = %w[
    https://codepen.com/maximakymenko/pen/mdbpeXm
  ]

  it_should_behave_like(
    "an OEmbed::Providers instance",
    expected_valid_urls,
    expected_invalid_urls
  )
end
