# SignedUrl

Dead simple but extremely useful command line for uploading a file to S3 and returning a signed URL to it.

## Installation

Add this line to your application's Gemfile:

    gem 'signed_url'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install signed_url

## Usage

    $ make-signed-url --region [AWS Region] --bucket [S3 Bucket Name] --file [Path/to/file] --expiration-in-days [Number of days signed URL will be active]

## Contributing

1. Fork it ( https://github.com/npslater/signed_url/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
