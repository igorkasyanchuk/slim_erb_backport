# SlimERBBackport

If you are using Slim 4+ version and embedding ERB inside probably you have noticed that it doen'ts work.

This gem backports support for newer versions of Slim support for ERB.

## Usage

Just continue using slim as before. You don't need to convert ERB into slim or move to partials.

```(slim)
h1 Index

= render 'p1'
= render 'p2'

erb:
  <h2>ERB in index.html.erb</h2>
  <script>
    console.log("hello world");
  </script>
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'slim_erb_backport'
```

And then execute:
```bash
$ bundle
```
## Contributing

You are welcome to contribute.

Big thank you to authour of SLIM that he originally added support of ERB inside slim views.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
