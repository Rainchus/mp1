	.set noat
	.set noreorder

glabel func_8005B470
/* 5C070 8005B470 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5C074 8005B474 AFBF0020 */  sw         $ra, 0x20($sp)
/* 5C078 8005B478 AFB3001C */  sw         $s3, 0x1c($sp)
/* 5C07C 8005B47C AFB20018 */  sw         $s2, 0x18($sp)
/* 5C080 8005B480 AFB10014 */  sw         $s1, 0x14($sp)
/* 5C084 8005B484 AFB00010 */  sw         $s0, 0x10($sp)
/* 5C088 8005B488 00809821 */  addu       $s3, $a0, $zero
/* 5C08C 8005B48C 24120001 */  addiu      $s2, $zero, 1
/* 5C090 8005B490 00008821 */  addu       $s1, $zero, $zero
.L8005B494:
/* 5C094 8005B494 00112400 */  sll        $a0, $s1, 0x10
/* 5C098 8005B498 0C00507F */  jal        func_800141FC
/* 5C09C 8005B49C 00042403 */   sra       $a0, $a0, 0x10
/* 5C0A0 8005B4A0 14400007 */  bnez       $v0, .L8005B4C0
/* 5C0A4 8005B4A4 26220001 */   addiu     $v0, $s1, 1
/* 5C0A8 8005B4A8 00408821 */  addu       $s1, $v0, $zero
/* 5C0AC 8005B4AC 00021400 */  sll        $v0, $v0, 0x10
/* 5C0B0 8005B4B0 00021403 */  sra        $v0, $v0, 0x10
/* 5C0B4 8005B4B4 28420004 */  slti       $v0, $v0, 4
/* 5C0B8 8005B4B8 1440FFF6 */  bnez       $v0, .L8005B494
/* 5C0BC 8005B4BC 00129040 */   sll       $s2, $s2, 1
.L8005B4C0:
/* 5C0C0 8005B4C0 00118400 */  sll        $s0, $s1, 0x10
/* 5C0C4 8005B4C4 00108403 */  sra        $s0, $s0, 0x10
/* 5C0C8 8005B4C8 3A100004 */  xori       $s0, $s0, 4
/* 5C0CC 8005B4CC 0010802B */  sltu       $s0, $zero, $s0
/* 5C0D0 8005B4D0 00108023 */  negu       $s0, $s0
/* 5C0D4 8005B4D4 02118024 */  and        $s0, $s0, $s1
/* 5C0D8 8005B4D8 00132400 */  sll        $a0, $s3, 0x10
/* 5C0DC 8005B4DC 00122C00 */  sll        $a1, $s2, 0x10
/* 5C0E0 8005B4E0 00042403 */  sra        $a0, $a0, 0x10
/* 5C0E4 8005B4E4 0C01C557 */  jal        func_8007155C
/* 5C0E8 8005B4E8 00052C03 */   sra       $a1, $a1, 0x10
/* 5C0EC 8005B4EC 00108400 */  sll        $s0, $s0, 0x10
/* 5C0F0 8005B4F0 00101403 */  sra        $v0, $s0, 0x10
/* 5C0F4 8005B4F4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 5C0F8 8005B4F8 8FB3001C */  lw         $s3, 0x1c($sp)
/* 5C0FC 8005B4FC 8FB20018 */  lw         $s2, 0x18($sp)
/* 5C100 8005B500 8FB10014 */  lw         $s1, 0x14($sp)
/* 5C104 8005B504 8FB00010 */  lw         $s0, 0x10($sp)
/* 5C108 8005B508 03E00008 */  jr         $ra
/* 5C10C 8005B50C 27BD0028 */   addiu     $sp, $sp, 0x28
