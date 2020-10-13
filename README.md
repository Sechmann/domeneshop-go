# Go API client for domeneshop-go

# Overview

Domeneshop offers a simple, REST-based API, which currently supports the following
features:

- List domains
- List invoices
- Create, read, update and delete DNS records for domains
- Create, read, update and delete HTTP forwards (\"WWW forwarding\") for domains
- Dynamic DNS (DDNS) update endpoints for use in consumer routers

More features are planned, including:

- Web hosting administration
- Email address and email user/account administration

# Testing period

The API service is in version 0, which means it is possible that the interface
will change rapidly during the testing period. For that reason, **the documentation on these
pages may sometimes be outdated.**

Additionally, we make no guarantees about the stability of the API service during this testing period,
and therefore ask customers to be careful with using the service for business critical purposes.

# Authentication

The Domeneshop API currently supports only one method of authentication, **HTTP Basic Auth**. More authentication methods may
be added in the future.

To generate credentials, visit <a href=\"https://www.domeneshop.no/admin?view=api\" target=\"_blank\">this page</a>
after logging in to the control panel on our website:

<a href=\"https://www.domeneshop.no/admin?view=api\" target=\"_blank\">https://www.domeneshop.no/admin?view=api</a>

# Libraries

Domeneshop maintains multiple API libraries to simplify using the API. Please note that these libraries
have the same stability guarantees to the API while the API is in version 0.

The libraries may be found in our [Github repository](https://github.com/domeneshop/).

Domeneshop also maintains a plugin for [EFF's Certbot](https://certbot.eff.org/), which automates issuance and
renewal of SSL-certificates on your own servers for domains that use Domeneshop's DNS service. This plugin is
found in our Github repository [here](https://github.com/domeneshop/certbot-dns-domeneshop).

<SecurityDefinitions />


## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [OpenAPI-spec](https://www.openapis.org/) from a remote server, you can easily generate an API client.

- API version: v0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.GoClientCodegen

## Installation

Install the following dependencies:

```shell
go get github.com/stretchr/testify/assert
go get golang.org/x/oauth2
go get golang.org/x/net/context
go get github.com/antihax/optional
```

Put the package under your project folder and add the following in import:

```golang
import "./domeneshop-go"
```

## Documentation for API Endpoints

All URIs are relative to *https://api.domeneshop.no/v0*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DdnsApi* | [**DyndnsUpdateGet**](docs/DdnsApi.md#dyndnsupdateget) | **Get** /dyndns/update | Update
*DnsApi* | [**DomainsDomainIdDnsPost**](docs/DnsApi.md#domainsdomainiddnspost) | **Post** /domains/{domainId}/dns | Add DNS record
*DnsApi* | [**DomainsDomainIdDnsRecordIdDelete**](docs/DnsApi.md#domainsdomainiddnsrecordiddelete) | **Delete** /domains/{domainId}/dns/{recordId} | Delete DNS record by ID
*DnsApi* | [**DomainsDomainIdDnsRecordIdPut**](docs/DnsApi.md#domainsdomainiddnsrecordidput) | **Put** /domains/{domainId}/dns/{recordId} | Update DNS record by ID
*DnsApi* | [**GetDnsRecords**](docs/DnsApi.md#getdnsrecords) | **Get** /domains/{domainId}/dns | List DNS records
*DnsApi* | [**GetRecordById**](docs/DnsApi.md#getrecordbyid) | **Get** /domains/{domainId}/dns/{recordId} | Find DNS record by ID
*DomainsApi* | [**DomainsDomainIdGet**](docs/DomainsApi.md#domainsdomainidget) | **Get** /domains/{domainId} | Find domain by ID
*DomainsApi* | [**GetDomains**](docs/DomainsApi.md#getdomains) | **Get** /domains | List domains
*ForwardsApi* | [**DomainsDomainIdForwardsGet**](docs/ForwardsApi.md#domainsdomainidforwardsget) | **Get** /domains/{domainId}/forwards/ | List forwards
*ForwardsApi* | [**DomainsDomainIdForwardsHostDelete**](docs/ForwardsApi.md#domainsdomainidforwardshostdelete) | **Delete** /domains/{domainId}/forwards/{host} | Delete forward by host
*ForwardsApi* | [**DomainsDomainIdForwardsHostGet**](docs/ForwardsApi.md#domainsdomainidforwardshostget) | **Get** /domains/{domainId}/forwards/{host} | Find forward by host
*ForwardsApi* | [**DomainsDomainIdForwardsHostPut**](docs/ForwardsApi.md#domainsdomainidforwardshostput) | **Put** /domains/{domainId}/forwards/{host} | Update forward by host
*ForwardsApi* | [**DomainsDomainIdForwardsPost**](docs/ForwardsApi.md#domainsdomainidforwardspost) | **Post** /domains/{domainId}/forwards/ | Add forward
*InvoicesApi* | [**FindInvoiceByNumber**](docs/InvoicesApi.md#findinvoicebynumber) | **Get** /invoices/{invoiceId} | Find invoice by invoice number
*InvoicesApi* | [**GetInvoices**](docs/InvoicesApi.md#getinvoices) | **Get** /invoices | List invoices


## Documentation For Models

 - [A](docs/A.md)
 - [AAllOf](docs/AAllOf.md)
 - [Aaaa](docs/Aaaa.md)
 - [AaaaAllOf](docs/AaaaAllOf.md)
 - [BaseRecord](docs/BaseRecord.md)
 - [Cname](docs/Cname.md)
 - [CnameAllOf](docs/CnameAllOf.md)
 - [DnsRecord](docs/DnsRecord.md)
 - [Domain](docs/Domain.md)
 - [DomainServices](docs/DomainServices.md)
 - [HttpForward](docs/HttpForward.md)
 - [InlineResponse201](docs/InlineResponse201.md)
 - [Invoice](docs/Invoice.md)
 - [Mx](docs/Mx.md)
 - [MxAllOf](docs/MxAllOf.md)
 - [Srv](docs/Srv.md)
 - [SrvAllOf](docs/SrvAllOf.md)
 - [Txt](docs/Txt.md)
 - [TxtAllOf](docs/TxtAllOf.md)


## Documentation For Authorization



## basicAuth

- **Type**: HTTP basic authentication

Example

```golang
auth := context.WithValue(context.Background(), sw.ContextBasicAuth, sw.BasicAuth{
    UserName: "username",
    Password: "password",
})
r, err := client.Service.Operation(auth, args)
```



## Author

kundeservice@domeneshop.no

