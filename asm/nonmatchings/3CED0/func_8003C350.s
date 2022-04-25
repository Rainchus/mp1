	.set noat
	.set noreorder

glabel func_8003C350
/* 3CF50 8003C350 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3CF54 8003C354 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3CF58 8003C358 AFB20018 */  sw         $s2, 0x18($sp)
/* 3CF5C 8003C35C AFB10014 */  sw         $s1, 0x14($sp)
/* 3CF60 8003C360 AFB00010 */  sw         $s0, 0x10($sp)
/* 3CF64 8003C364 00008821 */  addu       $s1, $zero, $zero
/* 3CF68 8003C368 3C12800D */  lui        $s2, %hi(D_800D6058)
/* 3CF6C 8003C36C 26526058 */  addiu      $s2, $s2, %lo(D_800D6058)
/* 3CF70 8003C370 00111100 */  sll        $v0, $s1, 4
.L8003C374:
/* 3CF74 8003C374 00528021 */  addu       $s0, $v0, $s2
/* 3CF78 8003C378 82020000 */  lb         $v0, ($s0)
/* 3CF7C 8003C37C 04420008 */  bltzl      $v0, .L8003C3A0
/* 3CF80 8003C380 26310001 */   addiu     $s1, $s1, 1
/* 3CF84 8003C384 8E040008 */  lw         $a0, 8($s0)
/* 3CF88 8003C388 50800004 */  beql       $a0, $zero, .L8003C39C
/* 3CF8C 8003C38C AE000008 */   sw        $zero, 8($s0)
/* 3CF90 8003C390 0C017764 */  jal        func_8005DD90
/* 3CF94 8003C394 00000000 */   nop
/* 3CF98 8003C398 AE000008 */  sw         $zero, 8($s0)
.L8003C39C:
/* 3CF9C 8003C39C 26310001 */  addiu      $s1, $s1, 1
.L8003C3A0:
/* 3CFA0 8003C3A0 2A220014 */  slti       $v0, $s1, 0x14
/* 3CFA4 8003C3A4 1440FFF3 */  bnez       $v0, .L8003C374
/* 3CFA8 8003C3A8 00111100 */   sll       $v0, $s1, 4
/* 3CFAC 8003C3AC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3CFB0 8003C3B0 8FB20018 */  lw         $s2, 0x18($sp)
/* 3CFB4 8003C3B4 8FB10014 */  lw         $s1, 0x14($sp)
/* 3CFB8 8003C3B8 8FB00010 */  lw         $s0, 0x10($sp)
/* 3CFBC 8003C3BC 03E00008 */  jr         $ra
/* 3CFC0 8003C3C0 27BD0020 */   addiu     $sp, $sp, 0x20
