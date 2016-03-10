package Bencher::Scenario::AppLcpan::Completion;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use Bencher::ScenarioUtil::Completion qw(make_completion_participant);

our $scenario = {
    summary => 'Benchmark completion response time, to monitor regression',
    modules => {
        'App::lcpan' => {version=>0},
    },
    participants => [
        make_completion_participant(
            name=>'optname_common_help',
            cmdline=>"lcpan --hel^",
        ),
        make_completion_participant(
            name=>'optname_common_version',
            cmdline=>"lcpan --vers^",
        ),
        make_completion_participant(
            name=>'subcmd_author',
            cmdline=>"lcpan author^",
        ),
        make_completion_participant(
            name=>'optval_author',
            cmdline=>"lcpan mods --author PERL^",
        ),
    ],
};

1;
# ABSTRACT:
