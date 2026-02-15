# Nameservers API - Go Client

Nameservers is a tool for looking up the authoritative nameservers for any domain. Returns nameserver hostnames, IP addresses, reverse DNS, and owner information.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Go client for the [Nameservers API](https://apiverve.com/marketplace/nameservers?utm_source=go&utm_medium=readme)

---

## Installation

```bash
go get github.com/apiverve/nameservers-api/go
```

---

## Configuration

Before using the Nameservers API client, you need to obtain your API key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=go&utm_medium=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=go&utm_medium=readme)

The Nameservers API documentation is found here: [https://docs.apiverve.com/ref/nameservers](https://docs.apiverve.com/ref/nameservers?utm_source=go&utm_medium=readme)

---

## Usage

```go
package main

import (
    "fmt"
    "log"

    "github.com/apiverve/nameservers-api/go"
)

func main() {
    // Create a new client
    client := nameservers.NewClient("YOUR_API_KEY")

    // Set up parameters
    params := map[string]interface{}{
        "domain": "google.com"
    }

    // Make the request
    response, err := client.Execute(params)
    if err != nil {
        log.Fatal(err)
    }

    fmt.Printf("Status: %s\n", response.Status)
    fmt.Printf("Data: %+v\n", response.Data)
}
```

---

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "domain": "google.com",
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
      },
      {
        "nameserver": "ns3.google.com",
        "ipAddresses": [
          "216.239.36.10"
        ],
        "reverseDns": "ns3.google.com",
        "owner": "google.com"
      },
      {
        "nameserver": "ns4.google.com",
        "ipAddresses": [
          "216.239.38.10"
        ],
        "reverseDns": "ns4.google.com",
        "owner": "google.com"
      }
    ]
  }
}
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=go&utm_medium=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=go&utm_medium=readme), [Privacy Policy](https://apiverve.com/privacy?utm_source=go&utm_medium=readme), and [Refund Policy](https://apiverve.com/refund?utm_source=go&utm_medium=readme).

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
