use strict;use warnings;
use Module::Build;

my $builder = Module::Build->new(
    sign              => 1,
    module_name       => 'Food::ECodes',
    license           => 'perl',
    dist_author       => q{Mohammad S Anwar <mohammad.anwar@yahoo.com>},
    dist_version_from => 'lib/Food/ECodes.pm',
    add_to_cleanup    => [ 'Food-ECodes-*' ],    
    build_requires    => {
        'Test::More'  => 0,
        'Readonly'    => '1.03',
    },
);

$builder->create_build_script();