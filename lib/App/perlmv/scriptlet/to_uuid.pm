package App::perlmv::scriptlet::to_uuid;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

our $SCRIPTLET = {
    summary => 'Rename to UUID',
    args => {
    },
    code => sub {
        package
            App::perlmv::code;
        require UUID::Random;
        UUID::Random::generate();
    },
};

1;

# ABSTRACT:

=head1 SYNOPSIS
