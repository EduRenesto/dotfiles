my $artist = `playerctl metadata artist`;
my $album = `playerctl metadata album`;
my $title = `playerctl metadata title`;

my $format = @ARGV[0];

$format =~ s/{artist}/$artist/g;
$format =~ s/{album}/$album/g;
$format =~ s/{title}/$title/g;
$format =~ s/\n//g;

print $format;
