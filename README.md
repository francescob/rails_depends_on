# RailsDependsOn

[![Gem Version](https://badge.fury.io/rb/rails_depends_on.svg)](http://badge.fury.io/rb/rails_depends_on)

A simple rails engine to make it easier to use the great DependsOn jQuery Plugin:

http://dstreet.github.io/dependsOn/

Note: not all the features of the original plugin are implemented for now


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_depends_on'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_depends_on

Include the assets in your javascript manifest file:

    //= require dependent-fields to your Javascript manifest file (usually found at app/assets/javascripts/application.js).


## Usage

  ```haml
   = f.input 'a_checkbox'
  .depends-on{"data-id" => 'a_checkbox', 'data-value' =>'true'}
    = f.input 'another_field'
  ```

  ```haml
   = f.input 'a_text_field'
  .depends-on{"data-id" => 'a_text_field', 'data-value' =>[['1'],['2']]}
    = f.input 'another_field'
  ```

  ```haml
   = f.input 'a_text_field'
  .depends-on{"data-id" => 'a_text_field', 'data-qualifier'=> 'not', 'data-value' =>[['1'],['2']]}
    = f.input 'another_field'
  ```

  ```haml
   = f.input 'a_multiple_select'
  .depends-on{"data-id" => 'a_multiple_select', 'data-qualifier'=> 'contains', 'data-value' =>[['1'],['2']]}
    = f.input 'another_field'
  ```

  ```haml
   = f.input 'a_text_field'
  .depends-on{"data-id" => 'a_text_field', 'data-qualifier'=> 'email', 'data-value' => 'true'}
    = f.input 'another_field'
  ```

  ```haml
   = f.input 'a_text_field'
  .depends-on{"data-id" => 'a_text_field', 'data-qualifier'=> 'url', 'data-value' => 'true'}
    = f.input 'another_field'
  ```

  ```haml
   = f.input 'a_text_field'
  .depends-on{"data-id" => 'a_text_field', 'data-qualifier'=> 'match', 'data-value' => '\da{3}'}
    = f.input 'another_field'
  ```

  ```haml
   = f.input 'a_radio_buttone'
  .depends-on{"data-name" => 'a_radio_button', 'data-qualifier'=> 'match', 'data-value' => ['1','2']}
    = f.input 'another_field'
  ```

## TODO

  * Multiple dependencies
  * *Regexp* qualifier
  * *Custom* Qualifiers
  * implement all dependsOn options (callbacks etc..)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/francescob/rails_depends_on.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
