# Index

The `index` gem is used in the `[indexer](https://github.com/ontohub/indexer)` to write to the Elasticsearch index and in the `[ontohub-backend](https://github.com/ontohub/ontohub-backend)` to read from the index.
It contains the index classes for Ontohub shared among the two applications.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'index', github: 'ontohub/index', branch: 'master'
```

And then execute:

    $ bundle

## Usage

This is a library-only gem. Simply load the index classes from it in your code.
