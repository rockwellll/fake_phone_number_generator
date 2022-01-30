# frozen_string_literal: true

require 'phonelib'
require 'countries'

class FakePhoneNumberGenerator
  @@generated_numbers = {}

  class << self
    def generate(country:)
      @@generated_numbers[country] = [] unless @@generated_numbers.include?(country)
      new_number = phone_number(country)
      new_number = phone_number(country) while @@generated_numbers[country].include?(new_number)
      @@generated_numbers[country] << new_number
      new_number
    end

    def generated_numbers
      @@generated_numbers
    end

    private

    def country_code_for(country)
      ISO3166::Country.new(country).country_code
    end

    def phone_length(country)
      ISO3166::Country.new(country).national_number_lengths.first
    end

    def phone_number(country)
      country_code_for(country)  + phone_length(country).downto(0).map { (1..9).to_a.sample }.join("")
    end
  end
end