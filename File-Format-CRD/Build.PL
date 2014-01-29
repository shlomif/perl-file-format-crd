use strict;
use warnings;

use lib './inc';

use Test::Run::Builder;

my $builder = Test::Run::Builder->new(
    module_name         => 'File::Format::CRD',
    license             => 'mit',
    dist_author         => q{Shlomi Fish <shlomif@iglu.org.il>},
    dist_version_from   => 'lib/File/Format/CRD.pm',
    configure_requires =>
    {
        'Module::Build' => '0.37',
    },
    requires => {
        'Encode' => 0,
        'perl' => '5.008',
        'strict' => 0,
        'warnings' => 0,
    },
    build_requires => {
        'Test::More' => 0,
    },
    script_files => [],
    add_to_cleanup      => [ 'File-Format-CRD-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
