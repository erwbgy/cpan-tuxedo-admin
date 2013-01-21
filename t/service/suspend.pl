#!/usr/bin/env perl

use lib '/home/keith/perl/TuxedoAdmin/lib';
use Tuxedo::Admin;

$admin = new Tuxedo::Admin;

$service = $admin->service('DMADMIN', 'DM_GRP');

$service->suspend();

$admin->print_status();

