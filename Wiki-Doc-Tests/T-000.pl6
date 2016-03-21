#!/usr/bin/env perl

#`{{Example-Start}}

use v6;
use BSON::Document;
use MongoDB::Client;

my MongoDB::Client $client .= new(:uri('mongodb://:65000'));
my MongoDB::Database $database = $client.database('addresses');
my MongoDB::Collection $collection = $database.collection('perl');

my BSON::Document $doc = $database.run-command: (
  insert => $collection.name,
  documents => [
    BSON::Document.new((
      'name'        => 'Paweł Pabian',
      'nick'        => 'bbkr',
    ))
  ]
);

#`{{Example-Stop}}

say $doc.perl;
