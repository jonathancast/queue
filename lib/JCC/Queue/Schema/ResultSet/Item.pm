use Moops;

use v5.12;

class JCC::Queue::Schema::ResultSet::Item extends DBIx::Class::ResultSet {
    __PACKAGE__->load_components('Helper::ResultSet::IgnoreWantarray');
    __PACKAGE__->load_components('Helper::ResultSet::Shortcut');
}

1;
