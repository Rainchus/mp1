	.set noat
	.set noreorder

glabel func_80064C94
/* 65894 80064C94 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 65898 80064C98 AFBF0018 */  sw         $ra, 0x18($sp)
/* 6589C 80064C9C AFB10014 */  sw         $s1, 0x14($sp)
/* 658A0 80064CA0 AFB00010 */  sw         $s0, 0x10($sp)
/* 658A4 80064CA4 00808821 */  addu       $s1, $a0, $zero
/* 658A8 80064CA8 00A08021 */  addu       $s0, $a1, $zero
/* 658AC 80064CAC 00042400 */  sll        $a0, $a0, 0x10
/* 658B0 80064CB0 00042383 */  sra        $a0, $a0, 0xe
/* 658B4 80064CB4 0C008D9A */  jal        func_80023668
/* 658B8 80064CB8 2484000C */   addiu     $a0, $a0, 0xc
/* 658BC 80064CBC 00401821 */  addu       $v1, $v0, $zero
/* 658C0 80064CC0 54600003 */  bnel       $v1, $zero, .L80064CD0
/* 658C4 80064CC4 A4700008 */   sh        $s0, 8($v1)
/* 658C8 80064CC8 08019349 */  j          .L80064D24
/* 658CC 80064CCC 00001021 */   addu      $v0, $zero, $zero
.L80064CD0:
/* 658D0 80064CD0 A471000A */  sh         $s1, 0xa($v1)
/* 658D4 80064CD4 3C02800F */  lui        $v0, %hi(D_800ECB04)
/* 658D8 80064CD8 8C42CB04 */  lw         $v0, %lo(D_800ECB04)($v0)
/* 658DC 80064CDC 14400003 */  bnez       $v0, .L80064CEC
/* 658E0 80064CE0 00000000 */   nop
/* 658E4 80064CE4 3C01800F */  lui        $at, %hi(D_800ECB04)
/* 658E8 80064CE8 AC23CB04 */  sw         $v1, %lo(D_800ECB04)($at)
.L80064CEC:
/* 658EC 80064CEC 3C02800F */  lui        $v0, %hi(D_800ED0C0)
/* 658F0 80064CF0 8C42D0C0 */  lw         $v0, %lo(D_800ED0C0)($v0)
/* 658F4 80064CF4 10400002 */  beqz       $v0, .L80064D00
/* 658F8 80064CF8 AC620000 */   sw        $v0, ($v1)
/* 658FC 80064CFC AC430004 */  sw         $v1, 4($v0)
.L80064D00:
/* 65900 80064D00 AC600004 */  sw         $zero, 4($v1)
/* 65904 80064D04 3C01800F */  lui        $at, %hi(D_800ED0C0)
/* 65908 80064D08 AC23D0C0 */  sw         $v1, %lo(D_800ED0C0)($at)
/* 6590C 80064D0C 3C02800F */  lui        $v0, %hi(D_800F502E)
/* 65910 80064D10 9442502E */  lhu        $v0, %lo(D_800F502E)($v0)
/* 65914 80064D14 24420001 */  addiu      $v0, $v0, 1
/* 65918 80064D18 3C01800F */  lui        $at, %hi(D_800F502E)
/* 6591C 80064D1C A422502E */  sh         $v0, %lo(D_800F502E)($at)
/* 65920 80064D20 00601021 */  addu       $v0, $v1, $zero
.L80064D24:
/* 65924 80064D24 8FBF0018 */  lw         $ra, 0x18($sp)
/* 65928 80064D28 8FB10014 */  lw         $s1, 0x14($sp)
/* 6592C 80064D2C 8FB00010 */  lw         $s0, 0x10($sp)
/* 65930 80064D30 03E00008 */  jr         $ra
/* 65934 80064D34 27BD0020 */   addiu     $sp, $sp, 0x20
