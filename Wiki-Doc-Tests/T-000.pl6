#!/usr/bin/env perl

#`{{Example-Start}}

use v6;
use MongoDB::Connection;

my MongoDB::Connection $connection .= new(:port(65000));
my MongoDB::Database $database = $connection.database( 'test');
my MongoDB::Collection $collection = $database.collection( 'perl_users');

my Hash $document1 = {
  'name'      => 'Paweł Pabian',
  'nick'      => 'bbkr',
  'versions'  => [ 1, 2 ],
  'author'    => {
      'BSON'          => 'https://github.com/bbkr/BSON',
      'Integer::Tiny' => 'http://search.cpan.org/perldoc?Integer%3A%3ATiny',
  },
  'IRC' => True,
};

$collection.insert($document1);

#`{{Example-Stop}}
