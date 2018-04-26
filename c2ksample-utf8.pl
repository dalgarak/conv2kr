#!/usr/local/bin/perl -w
######################################################################
#
# c2ksample.pl - A sample program for conv2kr.pm.
# Copyright (C) 2009 Younghong "Hong" Cho <hongcho at sori dot org>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#*********************************************************************
#
# == History
# 2009-06-26 Created.
######################################################################

use strict;
use PerlIO::encoding;
use File::Spec;
use File::Basename;
use lib dirname(File::Spec->rel2abs(__FILE__));
use conv2kr;

binmode STDIN, ":encoding(utf8)";
use feature qw(say);

######################################################################
# Constants.

my $ICONV = "/usr/bin/iconv";
my $TMP_PREFIX = "/tmp/temp.r2k.";

######################################################################

# Initialize the library environment.
conv2kr::configure($ICONV, $TMP_PREFIX);
while (my $line = <STDIN> ) {
	#chomp($line);
	my $str_j = conv2kr::utf82Johab($line);
	my $str_r = conv2kr::johab2Mct($str_j);
	say $str_r;
}

######################################################################
# End.
exit(0);
######################################################################
