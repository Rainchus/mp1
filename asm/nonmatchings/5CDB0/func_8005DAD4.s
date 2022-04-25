	.set noat
	.set noreorder

glabel func_8005DAD4
/* 5E6D4 8005DAD4 00802821 */  addu       $a1, $a0, $zero
/* 5E6D8 8005DAD8 84A4000C */  lh         $a0, 0xc($a1)
/* 5E6DC 8005DADC 2402FFFF */  addiu      $v0, $zero, -1
/* 5E6E0 8005DAE0 10820016 */  beq        $a0, $v0, .L8005DB3C
/* 5E6E4 8005DAE4 00042100 */   sll       $a0, $a0, 4
/* 5E6E8 8005DAE8 3C02800F */  lui        $v0, %hi(D_800ED618)
/* 5E6EC 8005DAEC 2442D618 */  addiu      $v0, $v0, %lo(D_800ED618)
/* 5E6F0 8005DAF0 00822021 */  addu       $a0, $a0, $v0
/* 5E6F4 8005DAF4 94A2000E */  lhu        $v0, 0xe($a1)
/* 5E6F8 8005DAF8 8C83000C */  lw         $v1, 0xc($a0)
/* 5E6FC 8005DAFC 00021080 */  sll        $v0, $v0, 2
/* 5E700 8005DB00 00431021 */  addu       $v0, $v0, $v1
/* 5E704 8005DB04 AC400000 */  sw         $zero, ($v0)
/* 5E708 8005DB08 94A2000E */  lhu        $v0, 0xe($a1)
/* 5E70C 8005DB0C 8C830008 */  lw         $v1, 8($a0)
/* 5E710 8005DB10 00021040 */  sll        $v0, $v0, 1
/* 5E714 8005DB14 00431021 */  addu       $v0, $v0, $v1
/* 5E718 8005DB18 94830000 */  lhu        $v1, ($a0)
/* 5E71C 8005DB1C A4430000 */  sh         $v1, ($v0)
/* 5E720 8005DB20 94A2000E */  lhu        $v0, 0xe($a1)
/* 5E724 8005DB24 A4820000 */  sh         $v0, ($a0)
/* 5E728 8005DB28 2402FFFF */  addiu      $v0, $zero, -1
/* 5E72C 8005DB2C A4A2000C */  sh         $v0, 0xc($a1)
/* 5E730 8005DB30 94820004 */  lhu        $v0, 4($a0)
/* 5E734 8005DB34 2442FFFF */  addiu      $v0, $v0, -1
/* 5E738 8005DB38 A4820004 */  sh         $v0, 4($a0)
.L8005DB3C:
/* 5E73C 8005DB3C 03E00008 */  jr         $ra
/* 5E740 8005DB40 00000000 */   nop
