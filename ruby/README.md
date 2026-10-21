# Nameservers API - Ruby Gem

Nameservers queries authoritative DNS records for any domain to list its nameservers, IP addresses, and reverse DNS records. It detects multiple DNS providers, counts total nameservers, and identifies who runs each server.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_nameservers'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_nameservers
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_nameservers'

# Initialize the client
client = APIVerve::Nameservers::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ domain: "google.com" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ domain: "google.com" })
  puts response["data"]
rescue APIVerve::Nameservers::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Nameservers::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Nameservers::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "domain": "google.com",
    "nameserverCount": 4,
    "hasMultipleProviders": false,
    "nameservers": [
      {
        "nameserver": "ns1.google.com",
        "ipAddresses": [
          "216.239.32.10"
        ],
        "reverseDns": "ns1.google.com",
        "owner": "google.com"
      },
      {
        "nameserver": "ns2.google.com",
        "ipAddresses": [
          "216.239.34.10"
        ],
        "reverseDns": "ns2.google.com",
        "owner": "google.com"
      }
    ],
    "uniqueOwners": [
      "google.com"
    ]
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/nameservers?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/nameservers?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/nameservers?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
