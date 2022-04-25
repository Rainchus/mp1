	.set noat
	.set noreorder

glabel func_8007DA48
/* 7E648 8007DA48 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7E64C 8007DA4C 0080C021 */  addu       $t8, $a0, $zero
/* 7E650 8007DA50 AFB40020 */  sw         $s4, 0x20($sp)
/* 7E654 8007DA54 00A0A021 */  addu       $s4, $a1, $zero
/* 7E658 8007DA58 AFBF0024 */  sw         $ra, 0x24($sp)
/* 7E65C 8007DA5C AFB3001C */  sw         $s3, 0x1c($sp)
/* 7E660 8007DA60 AFB20018 */  sw         $s2, 0x18($sp)
/* 7E664 8007DA64 AFB10014 */  sw         $s1, 0x14($sp)
/* 7E668 8007DA68 AFB00010 */  sw         $s0, 0x10($sp)
/* 7E66C 8007DA6C 9285000F */  lbu        $a1, 0xf($s4)
/* 7E670 8007DA70 9299000E */  lbu        $t9, 0xe($s4)
/* 7E674 8007DA74 14A00065 */  bnez       $a1, .L8007DC0C
/* 7E678 8007DA78 00C03821 */   addu      $a3, $a2, $zero
/* 7E67C 8007DA7C 9282000D */  lbu        $v0, 0xd($s4)
/* 7E680 8007DA80 14400002 */  bnez       $v0, .L8007DA8C
/* 7E684 8007DA84 03209021 */   addu      $s2, $t9, $zero
/* 7E688 8007DA88 9292000C */  lbu        $s2, 0xc($s4)
.L8007DA8C:
/* 7E68C 8007DA8C 8E830000 */  lw         $v1, ($s4)
/* 7E690 8007DA90 90620001 */  lbu        $v0, 1($v1)
/* 7E694 8007DA94 14400002 */  bnez       $v0, .L8007DAA0
/* 7E698 8007DA98 03203021 */   addu      $a2, $t9, $zero
/* 7E69C 8007DA9C 90660000 */  lbu        $a2, ($v1)
.L8007DAA0:
/* 7E6A0 8007DAA0 8E830008 */  lw         $v1, 8($s4)
/* 7E6A4 8007DAA4 90620001 */  lbu        $v0, 1($v1)
/* 7E6A8 8007DAA8 14400002 */  bnez       $v0, .L8007DAB4
/* 7E6AC 8007DAAC 03205821 */   addu      $t3, $t9, $zero
/* 7E6B0 8007DAB0 906B0000 */  lbu        $t3, ($v1)
.L8007DAB4:
/* 7E6B4 8007DAB4 316B00FF */  andi       $t3, $t3, 0xff
/* 7E6B8 8007DAB8 325200FF */  andi       $s2, $s2, 0xff
/* 7E6BC 8007DABC 332300FF */  andi       $v1, $t9, 0xff
/* 7E6C0 8007DAC0 00036040 */  sll        $t4, $v1, 1
/* 7E6C4 8007DAC4 000318C0 */  sll        $v1, $v1, 3
/* 7E6C8 8007DAC8 01726821 */  addu       $t5, $t3, $s2
/* 7E6CC 8007DACC 01AC6823 */  subu       $t5, $t5, $t4
/* 7E6D0 8007DAD0 34630004 */  ori        $v1, $v1, 4
/* 7E6D4 8007DAD4 000D6C00 */  sll        $t5, $t5, 0x10
/* 7E6D8 8007DAD8 000D6C03 */  sra        $t5, $t5, 0x10
/* 7E6DC 8007DADC 006D2023 */  subu       $a0, $v1, $t5
/* 7E6E0 8007DAE0 000420C2 */  srl        $a0, $a0, 3
/* 7E6E4 8007DAE4 30C600FF */  andi       $a2, $a2, 0xff
/* 7E6E8 8007DAE8 928A0010 */  lbu        $t2, 0x10($s4)
/* 7E6EC 8007DAEC 00D23821 */  addu       $a3, $a2, $s2
/* 7E6F0 8007DAF0 00EC3823 */  subu       $a3, $a3, $t4
/* 7E6F4 8007DAF4 00073C00 */  sll        $a3, $a3, 0x10
/* 7E6F8 8007DAF8 00073C03 */  sra        $a3, $a3, 0x10
/* 7E6FC 8007DAFC 00671023 */  subu       $v0, $v1, $a3
/* 7E700 8007DB00 000210C2 */  srl        $v0, $v0, 3
/* 7E704 8007DB04 00CB2823 */  subu       $a1, $a2, $t3
/* 7E708 8007DB08 A704000A */  sh         $a0, 0xa($t8)
/* 7E70C 8007DB0C A7020012 */  sh         $v0, 0x12($t8)
/* 7E710 8007DB10 01524023 */  subu       $t0, $t2, $s2
/* 7E714 8007DB14 00CA2021 */  addu       $a0, $a2, $t2
/* 7E718 8007DB18 008C2023 */  subu       $a0, $a0, $t4
/* 7E71C 8007DB1C 00A89821 */  addu       $s3, $a1, $t0
/* 7E720 8007DB20 00734821 */  addu       $t1, $v1, $s3
/* 7E724 8007DB24 00042400 */  sll        $a0, $a0, 0x10
/* 7E728 8007DB28 00042403 */  sra        $a0, $a0, 0x10
/* 7E72C 8007DB2C 01248821 */  addu       $s1, $t1, $a0
/* 7E730 8007DB30 001188C2 */  srl        $s1, $s1, 3
/* 7E734 8007DB34 00CA1023 */  subu       $v0, $a2, $t2
/* 7E738 8007DB38 01228021 */  addu       $s0, $t1, $v0
/* 7E73C 8007DB3C 001080C2 */  srl        $s0, $s0, 3
/* 7E740 8007DB40 00A82823 */  subu       $a1, $a1, $t0
/* 7E744 8007DB44 00654021 */  addu       $t0, $v1, $a1
/* 7E748 8007DB48 00D23023 */  subu       $a2, $a2, $s2
/* 7E74C 8007DB4C 01067821 */  addu       $t7, $t0, $a2
/* 7E750 8007DB50 000F78C2 */  srl        $t7, $t7, 3
/* 7E754 8007DB54 01073821 */  addu       $a3, $t0, $a3
/* 7E758 8007DB58 000738C2 */  srl        $a3, $a3, 3
/* 7E75C 8007DB5C 01224823 */  subu       $t1, $t1, $v0
/* 7E760 8007DB60 000948C2 */  srl        $t1, $t1, 3
/* 7E764 8007DB64 014B1021 */  addu       $v0, $t2, $t3
/* 7E768 8007DB68 004C1023 */  subu       $v0, $v0, $t4
/* 7E76C 8007DB6C 00021400 */  sll        $v0, $v0, 0x10
/* 7E770 8007DB70 00021403 */  sra        $v0, $v0, 0x10
/* 7E774 8007DB74 00627023 */  subu       $t6, $v1, $v0
/* 7E778 8007DB78 000E70C2 */  srl        $t6, $t6, 3
/* 7E77C 8007DB7C 01064023 */  subu       $t0, $t0, $a2
/* 7E780 8007DB80 000840C2 */  srl        $t0, $t0, 3
/* 7E784 8007DB84 00652823 */  subu       $a1, $v1, $a1
/* 7E788 8007DB88 016A5023 */  subu       $t2, $t3, $t2
/* 7E78C 8007DB8C 00AA6023 */  subu       $t4, $a1, $t2
/* 7E790 8007DB90 000C60C2 */  srl        $t4, $t4, 3
/* 7E794 8007DB94 00642023 */  subu       $a0, $v1, $a0
/* 7E798 8007DB98 000420C2 */  srl        $a0, $a0, 3
/* 7E79C 8007DB9C 00731823 */  subu       $v1, $v1, $s3
/* 7E7A0 8007DBA0 01725823 */  subu       $t3, $t3, $s2
/* 7E7A4 8007DBA4 006B3023 */  subu       $a2, $v1, $t3
/* 7E7A8 8007DBA8 000630C2 */  srl        $a2, $a2, 3
/* 7E7AC 8007DBAC 00A21021 */  addu       $v0, $a1, $v0
/* 7E7B0 8007DBB0 000210C2 */  srl        $v0, $v0, 3
/* 7E7B4 8007DBB4 00AA2821 */  addu       $a1, $a1, $t2
/* 7E7B8 8007DBB8 000528C2 */  srl        $a1, $a1, 3
/* 7E7BC 8007DBBC 006B5821 */  addu       $t3, $v1, $t3
/* 7E7C0 8007DBC0 000B58C2 */  srl        $t3, $t3, 3
/* 7E7C4 8007DBC4 006D1821 */  addu       $v1, $v1, $t5
/* 7E7C8 8007DBC8 000318C3 */  sra        $v1, $v1, 3
/* 7E7CC 8007DBCC A7110000 */  sh         $s1, ($t8)
/* 7E7D0 8007DBD0 A7100002 */  sh         $s0, 2($t8)
/* 7E7D4 8007DBD4 A70F0004 */  sh         $t7, 4($t8)
/* 7E7D8 8007DBD8 A7070006 */  sh         $a3, 6($t8)
/* 7E7DC 8007DBDC A7090008 */  sh         $t1, 8($t8)
/* 7E7E0 8007DBE0 A70E000C */  sh         $t6, 0xc($t8)
/* 7E7E4 8007DBE4 A708000E */  sh         $t0, 0xe($t8)
/* 7E7E8 8007DBE8 A70C0010 */  sh         $t4, 0x10($t8)
/* 7E7EC 8007DBEC A7040014 */  sh         $a0, 0x14($t8)
/* 7E7F0 8007DBF0 A7060016 */  sh         $a2, 0x16($t8)
/* 7E7F4 8007DBF4 A7020018 */  sh         $v0, 0x18($t8)
/* 7E7F8 8007DBF8 A705001A */  sh         $a1, 0x1a($t8)
/* 7E7FC 8007DBFC A70B001C */  sh         $t3, 0x1c($t8)
/* 7E800 8007DC00 A703001E */  sh         $v1, 0x1e($t8)
/* 7E804 8007DC04 0801F708 */  j          .L8007DC20
/* 7E808 8007DC08 A2990010 */   sb        $t9, 0x10($s4)
.L8007DC0C:
/* 7E80C 8007DC0C 03002021 */  addu       $a0, $t8, $zero
/* 7E810 8007DC10 0C01F51C */  jal        func_8007D470
/* 7E814 8007DC14 03203021 */   addu      $a2, $t9, $zero
/* 7E818 8007DC18 9282000C */  lbu        $v0, 0xc($s4)
/* 7E81C 8007DC1C A2820010 */  sb         $v0, 0x10($s4)
.L8007DC20:
/* 7E820 8007DC20 8E820000 */  lw         $v0, ($s4)
/* 7E824 8007DC24 8E830008 */  lw         $v1, 8($s4)
/* 7E828 8007DC28 24420002 */  addiu      $v0, $v0, 2
/* 7E82C 8007DC2C 24630002 */  addiu      $v1, $v1, 2
/* 7E830 8007DC30 AE820000 */  sw         $v0, ($s4)
/* 7E834 8007DC34 AE830008 */  sw         $v1, 8($s4)
/* 7E838 8007DC38 8FBF0024 */  lw         $ra, 0x24($sp)
/* 7E83C 8007DC3C 8FB40020 */  lw         $s4, 0x20($sp)
/* 7E840 8007DC40 8FB3001C */  lw         $s3, 0x1c($sp)
/* 7E844 8007DC44 8FB20018 */  lw         $s2, 0x18($sp)
/* 7E848 8007DC48 8FB10014 */  lw         $s1, 0x14($sp)
/* 7E84C 8007DC4C 8FB00010 */  lw         $s0, 0x10($sp)
/* 7E850 8007DC50 03E00008 */  jr         $ra
/* 7E854 8007DC54 27BD0028 */   addiu     $sp, $sp, 0x28
