	.set noat
	.set noreorder

glabel func_8000DB24
/* E724 8000DB24 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* E728 8000DB28 AFBF0020 */  sw         $ra, 0x20($sp)
/* E72C 8000DB2C AFB1001C */  sw         $s1, 0x1c($sp)
/* E730 8000DB30 AFB00018 */  sw         $s0, 0x18($sp)
/* E734 8000DB34 00808821 */  addu       $s1, $a0, $zero
/* E738 8000DB38 8E300008 */  lw         $s0, 8($s1)
/* E73C 8000DB3C 16000003 */  bnez       $s0, .L8000DB4C
/* E740 8000DB40 32020001 */   andi      $v0, $s0, 1
/* E744 8000DB44 0800370C */  j          .L8000DC30
/* E748 8000DB48 24020001 */   addiu     $v0, $zero, 1
.L8000DB4C:
/* E74C 8000DB4C 02028021 */  addu       $s0, $s0, $v0
/* E750 8000DB50 0C002BE8 */  jal        func_8000AFA0
/* E754 8000DB54 02002021 */   addu      $a0, $s0, $zero
/* E758 8000DB58 3C01800D */  lui        $at, %hi(D_800CEA88)
/* E75C 8000DB5C AC22EA88 */  sw         $v0, %lo(D_800CEA88)($at)
/* E760 8000DB60 10400033 */  beqz       $v0, .L8000DC30
/* E764 8000DB64 24020002 */   addiu     $v0, $zero, 2
/* E768 8000DB68 8E240004 */  lw         $a0, 4($s1)
/* E76C 8000DB6C 3C01800C */  lui        $at, %hi(D_800C188C)
/* E770 8000DB70 AC24188C */  sw         $a0, %lo(D_800C188C)($at)
/* E774 8000DB74 3C05800D */  lui        $a1, %hi(D_800CEA88)
/* E778 8000DB78 8CA5EA88 */  lw         $a1, %lo(D_800CEA88)($a1)
/* E77C 8000DB7C 0C002B60 */  jal        func_8000AD80
/* E780 8000DB80 02003021 */   addu      $a2, $s0, $zero
/* E784 8000DB84 8E220000 */  lw         $v0, ($s1)
/* E788 8000DB88 18400028 */  blez       $v0, .L8000DC2C
/* E78C 8000DB8C 00003021 */   addu      $a2, $zero, $zero
/* E790 8000DB90 24070001 */  addiu      $a3, $zero, 1
/* E794 8000DB94 00061100 */  sll        $v0, $a2, 4
.L8000DB98:
/* E798 8000DB98 3C03800D */  lui        $v1, %hi(D_800CEA88)
/* E79C 8000DB9C 8C63EA88 */  lw         $v1, %lo(D_800CEA88)($v1)
/* E7A0 8000DBA0 00432821 */  addu       $a1, $v0, $v1
/* E7A4 8000DBA4 90A2000E */  lbu        $v0, 0xe($a1)
/* E7A8 8000DBA8 5440001C */  bnel       $v0, $zero, .L8000DC1C
/* E7AC 8000DBAC 24C60001 */   addiu     $a2, $a2, 1
/* E7B0 8000DBB0 A0A7000E */  sb         $a3, 0xe($a1)
/* E7B4 8000DBB4 8CA20000 */  lw         $v0, ($a1)
/* E7B8 8000DBB8 3C03800D */  lui        $v1, %hi(D_800CEA88)
/* E7BC 8000DBBC 8C63EA88 */  lw         $v1, %lo(D_800CEA88)($v1)
/* E7C0 8000DBC0 00431021 */  addu       $v0, $v0, $v1
/* E7C4 8000DBC4 ACA20000 */  sw         $v0, ($a1)
/* E7C8 8000DBC8 8CA20008 */  lw         $v0, 8($a1)
/* E7CC 8000DBCC 00432021 */  addu       $a0, $v0, $v1
/* E7D0 8000DBD0 ACA40008 */  sw         $a0, 8($a1)
/* E7D4 8000DBD4 90820009 */  lbu        $v0, 9($a0)
/* E7D8 8000DBD8 54400010 */  bnel       $v0, $zero, .L8000DC1C
/* E7DC 8000DBDC 24C60001 */   addiu     $a2, $a2, 1
/* E7E0 8000DBE0 A0870009 */  sb         $a3, 9($a0)
/* E7E4 8000DBE4 8C820000 */  lw         $v0, ($a0)
/* E7E8 8000DBE8 8E23000C */  lw         $v1, 0xc($s1)
/* E7EC 8000DBEC 00431021 */  addu       $v0, $v0, $v1
/* E7F0 8000DBF0 AC820000 */  sw         $v0, ($a0)
/* E7F4 8000DBF4 8C820010 */  lw         $v0, 0x10($a0)
/* E7F8 8000DBF8 3C03800D */  lui        $v1, %hi(D_800CEA88)
/* E7FC 8000DBFC 8C63EA88 */  lw         $v1, %lo(D_800CEA88)($v1)
/* E800 8000DC00 00431021 */  addu       $v0, $v0, $v1
/* E804 8000DC04 AC820010 */  sw         $v0, 0x10($a0)
/* E808 8000DC08 8C82000C */  lw         $v0, 0xc($a0)
/* E80C 8000DC0C 10400002 */  beqz       $v0, .L8000DC18
/* E810 8000DC10 00431021 */   addu      $v0, $v0, $v1
/* E814 8000DC14 AC82000C */  sw         $v0, 0xc($a0)
.L8000DC18:
/* E818 8000DC18 24C60001 */  addiu      $a2, $a2, 1
.L8000DC1C:
/* E81C 8000DC1C 8E220000 */  lw         $v0, ($s1)
/* E820 8000DC20 00C2102A */  slt        $v0, $a2, $v0
/* E824 8000DC24 1440FFDC */  bnez       $v0, .L8000DB98
/* E828 8000DC28 00061100 */   sll       $v0, $a2, 4
.L8000DC2C:
/* E82C 8000DC2C 00001021 */  addu       $v0, $zero, $zero
.L8000DC30:
/* E830 8000DC30 8FBF0020 */  lw         $ra, 0x20($sp)
/* E834 8000DC34 8FB1001C */  lw         $s1, 0x1c($sp)
/* E838 8000DC38 8FB00018 */  lw         $s0, 0x18($sp)
/* E83C 8000DC3C 03E00008 */  jr         $ra
/* E840 8000DC40 27BD0028 */   addiu     $sp, $sp, 0x28
