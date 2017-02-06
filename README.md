node-pdf-generator
==================

A Node web server to generate PDF's from HTML that uses the [wkhtmltopdf](http://code.google.com/p/wkhtmltopdf/) command line tool.

## Installation

### Prerequisites

Install the wkhtmltopdf command line tool on your system ([download](http://code.google.com/p/wkhtmltopdf/downloads/list)).  

Add `wkhtmltopdf` to your PATH, the server will not be able to use wkhtmltopdf without this.

### Setup

Install npm, and then do this:

    npm install node-pdf-generator


## Usage

Basic usage with default configuration:

    node index.js

The server can be configured using any method supported by [*nconf*](https://npmjs.org/package/nconf), for example from a bash shell:

    port=1338 bindIp=0.0.0.0 node index.js

## Docker

[wkhtmltopdf docker](https://hub.docker.com/r/twang2218/wkhtmltopdf/)

`docker run -it -v $(pwd)/pdf:/pdf twang2218/wkhtmltopdf https//www.google.com /pdf/google.com.pdf`

## Alternatives

Ready made [HTTP service with Dockerfile](https://github.com/prakashpp/wkhtmltopdf-docker-http)

See [blog post](http://www.prakashpandey.in/2015/Sep/13/dockerize-wkhtmltopdf-http-service.html)

### Athena PDF

[athenapdf](http://www.athenapdf.com/) [repo with more info](https://github.com/arachnys/athenapdf)

`docker pull arachnysdocker/athenapdf-service`
`docker run -p 8080:8080 --rm arachnysdocker/athenapdf-service`

The default authentication key is `arachnys-weaver`. This can be changed through the `WEAVER_AUTH_KEY` environment variable.

The microservice can be deployed scalably to `ECS` if you want to build your own *conversion farm*.

See [video instructions](https://asciinema.org/a/41247)


