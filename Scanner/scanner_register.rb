Dir[File.dirname(__FILE__) + '/*.rb'].each { |f| require_relative f }

SCANNER = [
  HeaderScanner
].freeze
