require 'spec_helper'

describe 'PHP 7.0 SOE' do
  include_context 'soe' do
    let(:php_version) { '7.0' }

    let(:soe_packages) { [
      'socat',
      'xdebug',
      'ssmtp'
    ] }
  end

  before(:all) do
    image_name = "#{Constants::IMAGE_PREFIX}soe:php7.0"
    set :os, family: Constants::OS_FAMILY
    set :docker_image, get_docker_image_id(image_name)
  end
end
