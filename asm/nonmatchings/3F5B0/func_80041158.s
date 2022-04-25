	.set noat
	.set noreorder

glabel func_80041158
/* 41D58 80041158 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 41D5C 8004115C AFBF0028 */  sw         $ra, 0x28($sp)
/* 41D60 80041160 3C06800D */  lui        $a2, %hi(D_800CACDC)
/* 41D64 80041164 24C6ACDC */  addiu      $a2, $a2, %lo(D_800CACDC)
/* 41D68 80041168 8CC20000 */  lw         $v0, ($a2)
/* 41D6C 8004116C 8CC30004 */  lw         $v1, 4($a2)
/* 41D70 80041170 8CC50008 */  lw         $a1, 8($a2)
/* 41D74 80041174 AFA20010 */  sw         $v0, 0x10($sp)
/* 41D78 80041178 AFA30014 */  sw         $v1, 0x14($sp)
/* 41D7C 8004117C AFA50018 */  sw         $a1, 0x18($sp)
/* 41D80 80041180 8CC2000C */  lw         $v0, 0xc($a2)
/* 41D84 80041184 8CC30010 */  lw         $v1, 0x10($a2)
/* 41D88 80041188 8CC50014 */  lw         $a1, 0x14($a2)
/* 41D8C 8004118C AFA2001C */  sw         $v0, 0x1c($sp)
/* 41D90 80041190 AFA30020 */  sw         $v1, 0x20($sp)
/* 41D94 80041194 AFA50024 */  sw         $a1, 0x24($sp)
/* 41D98 80041198 3C05000A */  lui        $a1, 0xa
/* 41D9C 8004119C 34A50002 */  ori        $a1, $a1, 2
/* 41DA0 800411A0 3C06000A */  lui        $a2, 0xa
/* 41DA4 800411A4 34C6000A */  ori        $a2, $a2, 0xa
/* 41DA8 800411A8 0C010367 */  jal        func_80040D9C
/* 41DAC 800411AC 27A70010 */   addiu     $a3, $sp, 0x10
/* 41DB0 800411B0 24020003 */  addiu      $v0, $zero, 3
/* 41DB4 800411B4 3C01800D */  lui        $at, %hi(D_800D63E1)
/* 41DB8 800411B8 A02263E1 */  sb         $v0, %lo(D_800D63E1)($at)
/* 41DBC 800411BC 8FBF0028 */  lw         $ra, 0x28($sp)
/* 41DC0 800411C0 03E00008 */  jr         $ra
/* 41DC4 800411C4 27BD0030 */   addiu     $sp, $sp, 0x30
