#!perl

use strict;use warnings;
use Test::More tests => 6;

use Food::ECodes;

my $food = Food::ECodes->new();

is($food->get_name('E100'), 'Curcumin, turmeric');

is($food->get_purpose('E100'), 'Food colouring (yellow-orange)');

is($food->is_eu_approved('E106'), 0);

is($food->is_us_approved('E100'), 1);

is($food->is_valid('E106'), 1);

is($food->is_valid('E99'), 0);