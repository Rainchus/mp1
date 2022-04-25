	.set noat
	.set noreorder

glabel func_80039C48
/* 3A848 80039C48 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3A84C 80039C4C AFBF0020 */  sw         $ra, 0x20($sp)
/* 3A850 80039C50 AFB3001C */  sw         $s3, 0x1c($sp)
/* 3A854 80039C54 AFB20018 */  sw         $s2, 0x18($sp)
/* 3A858 80039C58 AFB10014 */  sw         $s1, 0x14($sp)
/* 3A85C 80039C5C AFB00010 */  sw         $s0, 0x10($sp)
/* 3A860 80039C60 00808821 */  addu       $s1, $a0, $zero
/* 3A864 80039C64 0C007340 */  jal        func_8001CD00
/* 3A868 80039C68 00A09821 */   addu      $s3, $a1, $zero
/* 3A86C 80039C6C 00008021 */  addu       $s0, $zero, $zero
/* 3A870 80039C70 3052FFFF */  andi       $s2, $v0, 0xffff
/* 3A874 80039C74 3203FFFF */  andi       $v1, $s0, 0xffff
.L80039C78:
/* 3A878 80039C78 3C04800F */  lui        $a0, %hi(D_800F37AC)
/* 3A87C 80039C7C 8C8437AC */  lw         $a0, %lo(D_800F37AC)($a0)
/* 3A880 80039C80 00031040 */  sll        $v0, $v1, 1
/* 3A884 80039C84 00431021 */  addu       $v0, $v0, $v1
/* 3A888 80039C88 00021100 */  sll        $v0, $v0, 4
/* 3A88C 80039C8C 00442021 */  addu       $a0, $v0, $a0
/* 3A890 80039C90 94820020 */  lhu        $v0, 0x20($a0)
/* 3A894 80039C94 54520006 */  bnel       $v0, $s2, .L80039CB0
/* 3A898 80039C98 26100001 */   addiu     $s0, $s0, 1
/* 3A89C 80039C9C 0C026E14 */  jal        func_8009B850
/* 3A8A0 80039CA0 02202821 */   addu      $a1, $s1, $zero
/* 3A8A4 80039CA4 10400007 */  beqz       $v0, .L80039CC4
/* 3A8A8 80039CA8 3204FFFF */   andi      $a0, $s0, 0xffff
/* 3A8AC 80039CAC 26100001 */  addiu      $s0, $s0, 1
.L80039CB0:
/* 3A8B0 80039CB0 3202FFFF */  andi       $v0, $s0, 0xffff
/* 3A8B4 80039CB4 2C420080 */  sltiu      $v0, $v0, 0x80
/* 3A8B8 80039CB8 1440FFEF */  bnez       $v0, .L80039C78
/* 3A8BC 80039CBC 3203FFFF */   andi      $v1, $s0, 0xffff
/* 3A8C0 80039CC0 3204FFFF */  andi       $a0, $s0, 0xffff
.L80039CC4:
/* 3A8C4 80039CC4 24020080 */  addiu      $v0, $zero, 0x80
/* 3A8C8 80039CC8 1082000A */  beq        $a0, $v0, .L80039CF4
/* 3A8CC 80039CCC 00041040 */   sll       $v0, $a0, 1
/* 3A8D0 80039CD0 3C03800F */  lui        $v1, %hi(D_800F37AC)
/* 3A8D4 80039CD4 8C6337AC */  lw         $v1, %lo(D_800F37AC)($v1)
/* 3A8D8 80039CD8 00441021 */  addu       $v0, $v0, $a0
/* 3A8DC 80039CDC 00021100 */  sll        $v0, $v0, 4
/* 3A8E0 80039CE0 00431021 */  addu       $v0, $v0, $v1
/* 3A8E4 80039CE4 9043001A */  lbu        $v1, 0x1a($v0)
/* 3A8E8 80039CE8 A6630000 */  sh         $v1, ($s3)
/* 3A8EC 80039CEC 9042001B */  lbu        $v0, 0x1b($v0)
/* 3A8F0 80039CF0 A6620002 */  sh         $v0, 2($s3)
.L80039CF4:
/* 3A8F4 80039CF4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 3A8F8 80039CF8 8FB3001C */  lw         $s3, 0x1c($sp)
/* 3A8FC 80039CFC 8FB20018 */  lw         $s2, 0x18($sp)
/* 3A900 80039D00 8FB10014 */  lw         $s1, 0x14($sp)
/* 3A904 80039D04 8FB00010 */  lw         $s0, 0x10($sp)
/* 3A908 80039D08 03E00008 */  jr         $ra
/* 3A90C 80039D0C 27BD0028 */   addiu     $sp, $sp, 0x28
