# Nameservers API - Dart/Flutter Client

Nameservers queries authoritative DNS records for any domain to list its nameservers, IP addresses, and reverse DNS records. It detects multiple DNS providers, counts total nameservers, and identifies who runs each server.

[![pub package](https://img.shields.io/pub/v/apiverve_nameservers.svg)](https://pub.dev/packages/apiverve_nameservers)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Nameservers API](https://apiverve.com/marketplace/nameservers?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_nameservers: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_nameservers/apiverve_nameservers.dart';

void main() async {
  final client = NameserversClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'domain': 'google.com'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Nameservers API](https://apiverve.com/marketplace/nameservers?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/nameservers](https://docs.apiverve.com/ref/nameservers?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
