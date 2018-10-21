use Moops;

class JCC::Queue::Schema::Result::Item extends DBIx::Class::Core {
    use DBIx::Class::Candy -autotable => v1, -perl5 => v12;

    primary_column id => { data_type => 'int', is_auto_increment => 1, };

    column category => { data_type => 'text', is_nullable => 1, };
    column url => { data_type => 'text', };
}

1;
