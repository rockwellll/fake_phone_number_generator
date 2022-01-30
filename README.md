### Generate random, unique, valid phone numbers in e164 format.

[![Gem Version](https://badge.fury.io/rb/fake_phone_number_generator.svg)](https://badge.fury.io/rb/fake_phone_number_generator)

### Motive

While i was using the [faker-ruby](https://github.com/faker-ruby/faker) gem. I noticed numbers generated via the `Faker::PhoneNumber` 
class where not valid phone numbers, when i ran it against `Phonelib.valid?` the results were always false.

I got inspired to make this little gem to help me generate random numbers for testing data. 
## Installation 

Add the following line to your `Gemfile` 

```ruby
group :test do
  gem 'fake_phone_number_generator', '~> 1.0'
end
```

Or Install directly via Rubygems

```shell
gem install fake_phone_number_generator
```

### How this library works
The lib generates a random number, it saves a list of all generated numbers so that it can generate a **unique** each time
it is called to avoid unique database constraints errors. The generated numbers can be accessed via 

```ruby
 FakePhoneNumberGenerator.generated_numbers
```

### Generating a new number

To generate a new number, simply call `.generate` and pass the `country` key argument. The country defaults to "US". 

```ruby
FakePhoneNumberGenerator.generate country: "US"
# => "125577492939"

FakePhoneNumberGenerator.generate country: "IQ"
# => "964958765359"

FakePhoneNumberGenerator.generate country: "FR"
# => "337377555666"
```

The country can be any valid ISO alpha-2 format. That is the country name abbreviated in two letters.