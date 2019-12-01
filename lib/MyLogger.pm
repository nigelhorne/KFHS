package MyLogger;

use strict;
use warnings;

sub new {
	my ($proto, %args) = @_;

	my $class = ref($proto) || $proto;

	return bless { }, $class;
}

# sub error {
	# my $self = shift;
	# my $message = shift;
#
	# ::diag($message);
# }

# sub warn {
	# my $self = shift;
	# my $message = shift;
#
	# ::diag($message);
# }

# sub info {
	# my $self = shift;
	# my $message = shift;
#
	# ::diag($message);
# }

sub trace {
	my $self = shift;

	print @_, "\n";
}

sub debug {
	my $self = shift;

	print @_, "\n";
}

sub AUTOLOAD {
	our $AUTOLOAD;
	my $param = $AUTOLOAD;

	unless($param eq 'MyLogger::DESTROY') {
		warn "Need to define $param";
	}
}

1;
