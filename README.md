[![Maintainability](https://api.codeclimate.com/v1/badges/c2c6c583831dc61c4031/maintainability)](https://codeclimate.com/github/tmikeschu/pixel_converter/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/c2c6c583831dc61c4031/test_coverage)](https://codeclimate.com/github/tmikeschu/pixel_converter/test_coverage)

# Pixel Converter

![CSS fonts](https://cdn.frontify.com/assets/blog/blog-post-teaser-relative-font-sizes-for-web-designers.jpg)

Here is a simple Ruby program that converts pixel measurements in `css`/`scss`/&c files to whatever unit you want. The motivation behind this was specifically for converting to `rem`, but it could be used for `em`, `%`, and other CSS units as well.

## Setup

To get your machine and this code friendly and acquainted:

Clone this repository using your preferred method and `cd` into it. If you're not sure, I
recommend the SSH route:

```
git clone git@github.com:tmikeschu/pixel_converter.git
cd pixel_converter
bundle
```

## Usage

With this repo cloned and installed, you can use the `pixel_convert`
executable with command line arguments.

E.g., `pixel_convert rem 10 path/to/file`.

## Testing

First things first: get a dopamine hit from a verdant test suite! Run the tests with:

```
clear && rspec
```

Then *read* the tests to get oriented with the application.

## Stack

Languages: Ruby
Major Libraries: RSpec

## Style

When contributing to code, be the tofu. In other words, take on the style of the
existing code. Here are some main approaches I follow:

*TBD*

## Contributing

Interested in helping out?

1. Reach out to me and say hello! I'd love to hear about what you're interested
   in.

2. Once we've confirmed what you can work on, fork this repo and work on your
   masterpiece.

3. Once your work is done, squash your work to a single commit, and open a PR
   from your feature branch to this repo's master branch.

