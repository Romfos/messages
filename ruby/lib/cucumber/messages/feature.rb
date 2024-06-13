# frozen_string_literal: true

# The code was auto-generated by {this script}[https://github.com/cucumber/messages/blob/main/jsonschema/scripts/codegen.rb]
module Cucumber
  module Messages
    ##
    # Represents the Feature message in Cucumber's {message protocol}[https://github.com/cucumber/messages].
    ##
    ##
    class Feature < Message
      ##
      # The location of the `Feature` keyword
      ##
      attr_reader :location

      ##
      # All the tags placed above the `Feature` keyword
      ##
      attr_reader :tags

      ##
      # The [ISO 639-1](https://en.wikipedia.org/wiki/ISO_639-1) language code of the Gherkin document
      ##
      attr_reader :language

      ##
      # The text of the `Feature` keyword (in the language specified by `language`)
      ##
      attr_reader :keyword

      ##
      # The name of the feature (the text following the `keyword`)
      ##
      attr_reader :name

      ##
      # The line(s) underneath the line with the `keyword` that are used as description
      ##
      attr_reader :description

      ##
      # Zero or more children
      ##
      attr_reader :children

      def initialize(
        location: Location.new,
        tags: [],
        language: '',
        keyword: '',
        name: '',
        description: '',
        children: []
      )
        @location = location
        @tags = tags
        @language = language
        @keyword = keyword
        @name = name
        @description = description
        @children = children
        super()
      end

      ##
      # Returns a new Feature from the given hash.
      # If the hash keys are camelCased, they are properly assigned to the
      # corresponding snake_cased attributes.
      #
      #   Cucumber::Messages::Feature.from_h(some_hash) # => #<Cucumber::Messages::Feature:0x... ...>
      ##
      def self.from_h(hash)
        return nil if hash.nil?

        new(
          location: Location.from_h(hash[:location]),
          tags: hash[:tags]&.map { |item| Tag.from_h(item) },
          language: hash[:language],
          keyword: hash[:keyword],
          name: hash[:name],
          description: hash[:description],
          children: hash[:children]&.map { |item| FeatureChild.from_h(item) }
        )
      end
    end
  end
end
