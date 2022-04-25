	.set noat
	.set noreorder

glabel func_80063270
/* 63E70 80063270 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 63E74 80063274 AFBF0018 */  sw         $ra, 0x18($sp)
/* 63E78 80063278 AFB10014 */  sw         $s1, 0x14($sp)
/* 63E7C 8006327C AFB00010 */  sw         $s0, 0x10($sp)
/* 63E80 80063280 00808821 */  addu       $s1, $a0, $zero
/* 63E84 80063284 00A08021 */  addu       $s0, $a1, $zero
/* 63E88 80063288 0C018CB1 */  jal        func_800632C4
/* 63E8C 8006328C 02002021 */   addu      $a0, $s0, $zero
/* 63E90 80063290 8E220008 */  lw         $v0, 8($s1)
/* 63E94 80063294 54400001 */  bnel       $v0, $zero, .L8006329C
/* 63E98 80063298 AC500014 */   sw        $s0, 0x14($v0)
.L8006329C:
/* 63E9C 8006329C 8E220008 */  lw         $v0, 8($s1)
/* 63EA0 800632A0 AE020010 */  sw         $v0, 0x10($s0)
/* 63EA4 800632A4 AE000014 */  sw         $zero, 0x14($s0)
/* 63EA8 800632A8 AE300008 */  sw         $s0, 8($s1)
/* 63EAC 800632AC AE11000C */  sw         $s1, 0xc($s0)
/* 63EB0 800632B0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 63EB4 800632B4 8FB10014 */  lw         $s1, 0x14($sp)
/* 63EB8 800632B8 8FB00010 */  lw         $s0, 0x10($sp)
/* 63EBC 800632BC 03E00008 */  jr         $ra
/* 63EC0 800632C0 27BD0020 */   addiu     $sp, $sp, 0x20
