package App::perlmv::scriptlet::to_uuid_ext;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

our $SCRIPTLET = {
    summary => 'Rename to UUID, preserve extension',
    args => {
        # XXX len
    },
    code => sub {
        package
            App::perlmv::code;
        require UUID::Random;
        UUID::Random::generate();
        my $ext;
        if (/.+\.(.+)/) {$ext=$1} else {$ext=undef}
        UUID::Random::generate() . (defined $ext ? ".$ext" : "");
    },
};

1;

# ABSTRACT:

=head1 SYNOPSIS
