package Sort::Sub::data_struct_by_data_cmp;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

use Data::Cmp qw(cmp_data);

sub meta {
    return {
        v => 1,
        summary => 'Sort data structures by Data::Cmp',
    };
}

sub gen_sorter {
    my ($is_reverse, $is_ci) = @_;

    sub {
        no strict 'refs';

        my $caller = caller();
        my $a = @_ ? $_[0] : ${"$caller\::a"};
        my $b = @_ ? $_[1] : ${"$caller\::b"};

        my $cmp = cmp_data($a, $b);

        $is_reverse ? -1*$cmp : $cmp;
    };
}

1;
# ABSTRACT:

=for Pod::Coverage ^(gen_sorter|meta)$

=head1 DESCRIPTION

Always case-sensitive; the C<i> flag does not have effect.


=head1 ENVIRONMENT


=head1 prepend:SEE ALSO

L<Sort::Sub::data_struct_by_data_cmp_numeric>

L<Sort::Sub::data_struct_by_data_cmp_strornumeric>

L<Data::Cmp>

L<Sort::Sub::by_perl_function>. The more generic solution.

L<Sort::Sub::by_perl_op>
