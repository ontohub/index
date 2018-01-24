# Index

The `index` gem is used in the `[indexer](https://github.com/ontohub/indexer)` to write to the Elasticsearch index and in the `[ontohub-backend](https://github.com/ontohub/ontohub-backend)` to read from the index.
It contains the index classes for Ontohub shared among the two applications.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'index', github: 'ontohub/index', branch: 'master', require: false
```

And then execute:

    $ bundle

Add line to your `config/application.rb`:
```ruby
    config.after_initialize do
      require 'index'
    end
```

## Usage

This is a library-only gem. Simply load the index classes from it in your code.

## Testing

This gem is not supposed to be tested directly.
Since it only supplies the description of the index (the indexed fields), it is okay to only test them indirectly inside the indexer and the backend.
More importantly, tests won't run in this gem because the models need to be loaded.
The models won't load in a simple gem, though, because they need to be loaded in a full-fledged Rails app.
