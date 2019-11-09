# View Opener

Open view in the editor.

![demo](https://i.gyazo.com/a8c91867a7f74da9c4f6601dd6bd94ba.png)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'view_opener'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install view_opener

## Usage

In `app/views/layout/application.html.haml`:

```haml
!!!
%html
  %head
    %title MyAPP
    = favicon_link_tag '/favicon.ico'
  %body
    = yield
    - if Rails.env.development?
      = view_opener
```

## Configuration

In `config/initializers/view_opener.rb`, you can configure the following values.

```ruby
ViewOpener.configure do |config|
  # config.file_link_format = 'vscode://file%s' # vscode(default)
  # config.file_link_format = 'mvim://open?url=file://%s' # macvim
  # config.file_link_format = 'emacs://open?url=file://%s' # emacs
  # config.file_link_format = 'atom://core/open/file?filename=%s' # atom
  # config.file_link_format = 'rubymine://open?url=file://%s' # rubymine
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/aki77/view_opener. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
