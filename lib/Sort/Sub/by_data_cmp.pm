package Sort::Sub::by_data_cmp;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;
require Sort::Sub::data_struct_by_data_cmp;
*gen_sorter = \&Sort::Sub::data_struct_by_data_cmp::gen_sorter;
*meta       = \&Sort::Sub::data_struct_by_data_cmp::meta;

1;
# ABSTRACT: Shorter alias for Sort::Sub::data_struct_by_data_cmp

=for Pod::Coverage ^(gen_sorter|meta)$

=head1 append:SEE ALSO

L<Sort::Sub::data_struct_by_data_cmp>
