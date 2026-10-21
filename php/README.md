# Nameservers API - PHP Package

Nameservers queries authoritative DNS records for any domain to list its nameservers, IP addresses, and reverse DNS records. It detects multiple DNS providers, counts total nameservers, and identifies who runs each server.

## Installation

Install via Composer:

```bash
composer require apiverve/nameservers
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Nameservers\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['domain' => 'google.com']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Nameservers\Client;
use APIVerve\Nameservers\Exceptions\APIException;
use APIVerve\Nameservers\Exceptions\ValidationException;

try {
    $response = $client->execute(['domain' => 'google.com']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/nameservers?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/nameservers?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/nameservers?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
