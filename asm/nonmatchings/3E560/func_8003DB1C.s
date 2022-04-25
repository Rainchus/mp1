	.set noat
	.set noreorder

glabel func_8003DB1C
/* 3E71C 8003DB1C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3E720 8003DB20 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3E724 8003DB24 AFB00010 */  sw         $s0, 0x10($sp)
/* 3E728 8003DB28 0C00EDDD */  jal        func_8003B774
/* 3E72C 8003DB2C 24040048 */   addiu     $a0, $zero, 0x48
/* 3E730 8003DB30 00408021 */  addu       $s0, $v0, $zero
/* 3E734 8003DB34 12000026 */  beqz       $s0, .L8003DBD0
/* 3E738 8003DB38 02001021 */   addu      $v0, $s0, $zero
/* 3E73C 8003DB3C 3C02800D */  lui        $v0, %hi(D_800D61C4)
/* 3E740 8003DB40 944261C4 */  lhu        $v0, %lo(D_800D61C4)($v0)
/* 3E744 8003DB44 24420001 */  addiu      $v0, $v0, 1
/* 3E748 8003DB48 3C01800D */  lui        $at, %hi(D_800D61C4)
/* 3E74C 8003DB4C A42261C4 */  sh         $v0, %lo(D_800D61C4)($at)
/* 3E750 8003DB50 3C02800D */  lui        $v0, %hi(D_800D61C0)
/* 3E754 8003DB54 8C4261C0 */  lw         $v0, %lo(D_800D61C0)($v0)
/* 3E758 8003DB58 AE020000 */  sw         $v0, ($s0)
/* 3E75C 8003DB5C 10400002 */  beqz       $v0, .L8003DB68
/* 3E760 8003DB60 AE000004 */   sw        $zero, 4($s0)
/* 3E764 8003DB64 AC500004 */  sw         $s0, 4($v0)
.L8003DB68:
/* 3E768 8003DB68 3C01800D */  lui        $at, %hi(D_800D61C0)
/* 3E76C 8003DB6C AC3061C0 */  sw         $s0, %lo(D_800D61C0)($at)
/* 3E770 8003DB70 24020008 */  addiu      $v0, $zero, 8
/* 3E774 8003DB74 A602000A */  sh         $v0, 0xa($s0)
/* 3E778 8003DB78 2604000C */  addiu      $a0, $s0, 0xc
/* 3E77C 8003DB7C 00002821 */  addu       $a1, $zero, $zero
/* 3E780 8003DB80 00A03021 */  addu       $a2, $a1, $zero
/* 3E784 8003DB84 0C028340 */  jal        func_800A0D00
/* 3E788 8003DB88 00A03821 */   addu      $a3, $a1, $zero
/* 3E78C 8003DB8C 26040018 */  addiu      $a0, $s0, 0x18
/* 3E790 8003DB90 00002821 */  addu       $a1, $zero, $zero
/* 3E794 8003DB94 3C073F80 */  lui        $a3, 0x3f80
/* 3E798 8003DB98 0C028340 */  jal        func_800A0D00
/* 3E79C 8003DB9C 00A03021 */   addu      $a2, $a1, $zero
/* 3E7A0 8003DBA0 26040024 */  addiu      $a0, $s0, 0x24
/* 3E7A4 8003DBA4 3C053F80 */  lui        $a1, 0x3f80
/* 3E7A8 8003DBA8 00A03021 */  addu       $a2, $a1, $zero
/* 3E7AC 8003DBAC 0C028340 */  jal        func_800A0D00
/* 3E7B0 8003DBB0 00A03821 */   addu      $a3, $a1, $zero
/* 3E7B4 8003DBB4 AE000030 */  sw         $zero, 0x30($s0)
/* 3E7B8 8003DBB8 AE000034 */  sw         $zero, 0x34($s0)
/* 3E7BC 8003DBBC AE000038 */  sw         $zero, 0x38($s0)
/* 3E7C0 8003DBC0 2402FFFF */  addiu      $v0, $zero, -1
/* 3E7C4 8003DBC4 A6020044 */  sh         $v0, 0x44($s0)
/* 3E7C8 8003DBC8 A6020046 */  sh         $v0, 0x46($s0)
/* 3E7CC 8003DBCC 02001021 */  addu       $v0, $s0, $zero
.L8003DBD0:
/* 3E7D0 8003DBD0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3E7D4 8003DBD4 8FB00010 */  lw         $s0, 0x10($sp)
/* 3E7D8 8003DBD8 03E00008 */  jr         $ra
/* 3E7DC 8003DBDC 27BD0018 */   addiu     $sp, $sp, 0x18
