	.set noat
	.set noreorder

glabel func_8007B168
/* 7BD68 8007B168 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7BD6C 8007B16C AFBF0020 */  sw         $ra, 0x20($sp)
/* 7BD70 8007B170 AFB3001C */  sw         $s3, 0x1c($sp)
/* 7BD74 8007B174 AFB20018 */  sw         $s2, 0x18($sp)
/* 7BD78 8007B178 AFB10014 */  sw         $s1, 0x14($sp)
/* 7BD7C 8007B17C AFB00010 */  sw         $s0, 0x10($sp)
/* 7BD80 8007B180 00808021 */  addu       $s0, $a0, $zero
/* 7BD84 8007B184 00A09821 */  addu       $s3, $a1, $zero
/* 7BD88 8007B188 0C00EDA9 */  jal        func_8003B6A4
/* 7BD8C 8007B18C 24040200 */   addiu     $a0, $zero, 0x200
/* 7BD90 8007B190 00409021 */  addu       $s2, $v0, $zero
/* 7BD94 8007B194 02408821 */  addu       $s1, $s2, $zero
/* 7BD98 8007B198 02402021 */  addu       $a0, $s2, $zero
/* 7BD9C 8007B19C 0C01C527 */  jal        func_8007149C
/* 7BDA0 8007B1A0 02002821 */   addu      $a1, $s0, $zero
/* 7BDA4 8007B1A4 92420000 */  lbu        $v0, ($s2)
/* 7BDA8 8007B1A8 1040000E */  beqz       $v0, .L8007B1E4
/* 7BDAC 8007B1AC 24020001 */   addiu     $v0, $zero, 1
/* 7BDB0 8007B1B0 02202021 */  addu       $a0, $s1, $zero
.L8007B1B4:
/* 7BDB4 8007B1B4 0C01DACB */  jal        func_80076B2C
/* 7BDB8 8007B1B8 326500FF */   andi      $a1, $s3, 0xff
/* 7BDBC 8007B1BC 92220001 */  lbu        $v0, 1($s1)
/* 7BDC0 8007B1C0 24420080 */  addiu      $v0, $v0, 0x80
/* 7BDC4 8007B1C4 304200FF */  andi       $v0, $v0, 0xff
/* 7BDC8 8007B1C8 2C420002 */  sltiu      $v0, $v0, 2
/* 7BDCC 8007B1CC 02228821 */  addu       $s1, $s1, $v0
/* 7BDD0 8007B1D0 26310001 */  addiu      $s1, $s1, 1
/* 7BDD4 8007B1D4 92220000 */  lbu        $v0, ($s1)
/* 7BDD8 8007B1D8 1440FFF6 */  bnez       $v0, .L8007B1B4
/* 7BDDC 8007B1DC 02202021 */   addu      $a0, $s1, $zero
/* 7BDE0 8007B1E0 24020001 */  addiu      $v0, $zero, 1
.L8007B1E4:
/* 7BDE4 8007B1E4 3C01800F */  lui        $at, %hi(D_800F3753)
/* 7BDE8 8007B1E8 A0223753 */  sb         $v0, %lo(D_800F3753)($at)
/* 7BDEC 8007B1EC 0C00EDB2 */  jal        func_8003B6C8
/* 7BDF0 8007B1F0 02402021 */   addu      $a0, $s2, $zero
/* 7BDF4 8007B1F4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 7BDF8 8007B1F8 8FB3001C */  lw         $s3, 0x1c($sp)
/* 7BDFC 8007B1FC 8FB20018 */  lw         $s2, 0x18($sp)
/* 7BE00 8007B200 8FB10014 */  lw         $s1, 0x14($sp)
/* 7BE04 8007B204 8FB00010 */  lw         $s0, 0x10($sp)
/* 7BE08 8007B208 03E00008 */  jr         $ra
/* 7BE0C 8007B20C 27BD0028 */   addiu     $sp, $sp, 0x28
