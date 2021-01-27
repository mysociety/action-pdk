# Simple GitHub Action using the Puppet Development Kit

This is a very simple GitHub action that allows you to run tests using
the [Puppet Development Kit](https://puppet.com/docs/pdk/). It uses the
official [Puppet PDK docker image](https://hub.docker.com/r/puppet/pdk)
as its basis.

## Usage

Currently this takes a single argument, `action`, that is just passed
to the invocation of `pdk` directly.

```
name: Run PDK tests

on:
  - push
  - pull_request

jobs:
  tests:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v2

      - name: Validate
        uses: mysociety/action-pdk@master
        with:
          action: 'validate'

      - name: Run Unit Tests
        uses: mysociety/action-pdk@master
        with:
          action: 'test unit'
```
