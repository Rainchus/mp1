	.set noat
	.set noreorder

glabel func_8004D8A4
/* 4E4A4 8004D8A4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4E4A8 8004D8A8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4E4AC 8004D8AC AFB10014 */  sw         $s1, 0x14($sp)
/* 4E4B0 8004D8B0 AFB00010 */  sw         $s0, 0x10($sp)
/* 4E4B4 8004D8B4 3C11800F */  lui        $s1, %hi(D_800ED5C0)
/* 4E4B8 8004D8B8 2631D5C0 */  addiu      $s1, $s1, %lo(D_800ED5C0)
/* 4E4BC 8004D8BC 8624001A */  lh         $a0, 0x1a($s1)
/* 4E4C0 8004D8C0 0C0165F7 */  jal        func_800597DC
/* 4E4C4 8004D8C4 00008021 */   addu      $s0, $zero, $zero
/* 4E4C8 8004D8C8 0C0165F7 */  jal        func_800597DC
/* 4E4CC 8004D8CC 2404004E */   addiu     $a0, $zero, 0x4e
/* 4E4D0 8004D8D0 0C0165E6 */  jal        func_80059798
/* 4E4D4 8004D8D4 24040043 */   addiu     $a0, $zero, 0x43
/* 4E4D8 8004D8D8 1040000E */  beqz       $v0, .L8004D914
/* 4E4DC 8004D8DC 24020007 */   addiu     $v0, $zero, 7
/* 4E4E0 8004D8E0 3C03800F */  lui        $v1, %hi(D_800ED5C2)
/* 4E4E4 8004D8E4 8463D5C2 */  lh         $v1, %lo(D_800ED5C2)($v1)
/* 4E4E8 8004D8E8 54620006 */  bnel       $v1, $v0, .L8004D904
/* 4E4EC 8004D8EC 2404FFFE */   addiu     $a0, $zero, -2
/* 4E4F0 8004D8F0 8623000A */  lh         $v1, 0xa($s1)
/* 4E4F4 8004D8F4 24020006 */  addiu      $v0, $zero, 6
/* 4E4F8 8004D8F8 14620007 */  bne        $v1, $v0, .L8004D918
/* 4E4FC 8004D8FC 02001021 */   addu      $v0, $s0, $zero
/* 4E500 8004D900 2404FFFE */  addiu      $a0, $zero, -2
.L8004D904:
/* 4E504 8004D904 24050004 */  addiu      $a1, $zero, 4
/* 4E508 8004D908 0C0159CC */  jal        func_80056730
/* 4E50C 8004D90C 24060092 */   addiu     $a2, $zero, 0x92
/* 4E510 8004D910 24100001 */  addiu      $s0, $zero, 1
.L8004D914:
/* 4E514 8004D914 02001021 */  addu       $v0, $s0, $zero
.L8004D918:
/* 4E518 8004D918 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4E51C 8004D91C 8FB10014 */  lw         $s1, 0x14($sp)
/* 4E520 8004D920 8FB00010 */  lw         $s0, 0x10($sp)
/* 4E524 8004D924 03E00008 */  jr         $ra
/* 4E528 8004D928 27BD0020 */   addiu     $sp, $sp, 0x20
/* 4E52C 8004D92C 00000000 */  nop
