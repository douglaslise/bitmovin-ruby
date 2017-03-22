require 'rubygems'
require 'json'
require 'bundler/setup'
require 'faraday'
require 'faraday_middleware'
require 'securerandom'
require 'active_support'
require 'active_support/core_ext'

require 'bitmovin/version'
require 'bitmovin/bitmovin_error'
require 'bitmovin/helpers'
require 'bitmovin/child_collection'
require 'bitmovin/resource'
require 'bitmovin/input_resource'
require 'bitmovin/configuration_resource'
require 'bitmovin/client'
require 'bitmovin/encoding'

module Bitmovin
  @@client = nil

  def self.init(api_key)
    @@client = Client.new({ api_key: api_key })
  end

  def self.client
    @@client
  end
end
