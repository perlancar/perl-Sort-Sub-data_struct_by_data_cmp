package Sort::Sub::by_data_cmp_numeric;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;
require Sort::Sub::data_struct_by_data_cmp_numeric;
*gen_sorter = \&Sort::Sub::data_struct_by_data_cmp_numeric::gen_sorter;
*meta       = \&Sort::Sub::data_struct_by_data_cmp_numeric::meta;

1;
# ABSTRACT: Shorter alias for Sort::Sub::data_struct_by_data_cmp_numeric

=for Pod::Coverage ^(gen_sorter|meta)$

=head1 append:SEE ALSO

L<Sort::Sub::data_struct_by_data_cmp_numeric>
