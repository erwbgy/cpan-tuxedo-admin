#!/usr/bin/perl

use lib '/home/keith/perl/TuxedoAdmin/lib';
use Tuxedo::Admin;

$admin = new Tuxedo::Admin(
           'TUXDIR'    => '/opt/bea/tuxedo8.1',
           'TUXCONFIG' => '/home/keith/runtime/TUXCONFIG',
           'BDMCONFIG' => '/home/keith/runtime/BDMCONFIG'
         );

$group = $admin->group('GW_GRP_3');
$group->grpno('50');
$group->lmid('master');
$group->add($group);

print $admin->status(), "\n";
