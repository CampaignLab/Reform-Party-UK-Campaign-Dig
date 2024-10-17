#!/usr/bin/perl
use strict;
use warnings;

# REVISION: Ejimofor Nwoye, Campaign Lab, Newspeak House, London, England, 8/10/2024

# Open the CSV file (export the sheet manually as CSV or use an automated way to fetch it)
my $csv_file = 'Reform dirt dig - News stories .csv';

# Keywords to search for
my @keywords = ('immigration', 'netzero');

# Open the CSV file for reading
open my $fh, '<', $csv_file or die "Could not open file '$csv_file' $!";

# Read through each row in the file
while (my $line = <$fh>) {
    chomp $line;

    # Search for keywords in each line (case insensitive)
    foreach my $keyword (@keywords) {
        if ($line =~ /$keyword/i) {
            print "\t Found keyword '$keyword' in line: $line \n\n";
        }
    }
}

# Close the file handle
close $fh;
