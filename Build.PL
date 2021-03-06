#!/usr/bin/perl

use utf8;
use 5.006;
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name       => 'Perl::Tokenizer',
    license           => 'perl',
    dist_author       => q{Daniel "Trizen" Șuteu <trizenx@gmail.com>},
    dist_version_from => 'lib/Perl/Tokenizer.pm',
    dist_abstract     => 'A tiny Perl code tokenizer',
    release_status    => 'stable',

    configure_requires => {
                           'Module::Build' => 0,
                          },
    build_requires => {
                       'Test::More' => 0,
                      },
    requires => {
                 'perl'            => '5.18.0',
                 'utf8'            => 0,
                 'strict'          => 0,
                 'warnings'        => 0,
                 'Exporter'        => 0,
                 'open'            => 0,
                 'Term::ANSIColor' => 0,
                 'HTML::Entities'  => 0,
                 'Getopt::Std'     => 0,
                },
    add_to_cleanup     => ['Perl-Tokenizer-*'],
    create_makefile_pl => 'traditional',
                                );

$builder->script_files([glob('bin/*')]);
$builder->create_build_script();
