use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    abstract            => 'Perl interface to Notify My Android web API',
    module_name         => 'WebService::NMA',
    license             => 'perl',
    dist_author         => 'Steve Huff <shuff@cpan.org>',
    dist_version_from   => 'lib/WebService/NMA.pm',
    requires => {
        'Carp'                  => 0,
        'Params::Validate'      => 0,
        'Readonly'              => 0,
        'Regexp::Common'        => 0,
        'WebService::Simple'    => 0,
        'XML::Simple'           => 0,
        'version'               => 0,
    },
    configure_requires => {
        'Test::More'            => 0,
    },
    add_to_cleanup      => [ 'WebService-NMA-*' ],
    create_makefile_pl  => 'traditional',
);

$builder->create_build_script();
