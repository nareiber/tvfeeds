require "./tvfeeds/*"
require "http"
require "xml"

module Tvfeeds
  extend self
  SOURCES.each do |src|
    puts "Enter y/Y to query #{src}:"
    b = gets
    Links.get_links(src) if ["y", "Y"].includes?(b.to_s)
  end

end
