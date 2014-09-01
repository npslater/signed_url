require "signed_url/version"
require 'thor'
require 'aws-sdk'

module SignedUrl

  class CLI < Thor

    desc 'sign', 'Creates an S3 object from the given file and generates a signed URL for doing a GET on the object'
    option :region, :required=>true
    option :bucket, :required=>true
    option :file, :required=>true
    option :expiration_in_days, :required=>true, :type=>:numeric
    def sign
      s3 = AWS::S3.new(region:options[:region])
      object_key = File.basename(options[:file])
      s3.buckets[options[:bucket]].objects[object_key].write(file:options[:file])
      url = s3.buckets[options[:bucket]].objects[object_key].url_for(:read, expires:((60*60*24) * options[:expiration_in_days].to_i))
      puts url
      end
    end
end
