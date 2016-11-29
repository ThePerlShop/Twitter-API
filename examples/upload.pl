#!/usr/bin/env perl
use 5.12.1;
use strictures 2;

use Twitter::API;

my $api = Twitter::API->new_with_traits(
    traits => [ qw/ApiMethods/ ],
    consumer_key        => $ENV{CONSUMER_KEY},
    consumer_secret     => $ENV{CONSUMER_SECRET},
    access_token        => $ENV{ACCESS_TOKEN},
    access_token_secret => $ENV{ACCESS_TOKEN_SECRET},
);

my $r = $api->upload_media([ "$ENV{HOME}/Downloads/hello-world.png" ]);

say "media_id: $$r{media_id}";
