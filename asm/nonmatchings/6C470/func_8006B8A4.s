	.set noat
	.set noreorder

glabel func_8006B8A4
/* 6C4A4 8006B8A4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 6C4A8 8006B8A8 AFBF0030 */  sw         $ra, 0x30($sp)
/* 6C4AC 8006B8AC AFB5002C */  sw         $s5, 0x2c($sp)
/* 6C4B0 8006B8B0 AFB40028 */  sw         $s4, 0x28($sp)
/* 6C4B4 8006B8B4 AFB30024 */  sw         $s3, 0x24($sp)
/* 6C4B8 8006B8B8 AFB20020 */  sw         $s2, 0x20($sp)
/* 6C4BC 8006B8BC AFB1001C */  sw         $s1, 0x1c($sp)
/* 6C4C0 8006B8C0 AFB00018 */  sw         $s0, 0x18($sp)
/* 6C4C4 8006B8C4 00A09021 */  addu       $s2, $a1, $zero
/* 6C4C8 8006B8C8 00C09821 */  addu       $s3, $a2, $zero
/* 6C4CC 8006B8CC 00E0A021 */  addu       $s4, $a3, $zero
/* 6C4D0 8006B8D0 97B5004A */  lhu        $s5, 0x4a($sp)
/* 6C4D4 8006B8D4 00042400 */  sll        $a0, $a0, 0x10
/* 6C4D8 8006B8D8 3C028007 */  lui        $v0, %hi(func_8006BC38)
/* 6C4DC 8006B8DC 2442BC38 */  addiu      $v0, $v0, %lo(func_8006BC38)
/* 6C4E0 8006B8E0 AFA20010 */  sw         $v0, 0x10($sp)
/* 6C4E4 8006B8E4 00042403 */  sra        $a0, $a0, 0x10
/* 6C4E8 8006B8E8 24050017 */  addiu      $a1, $zero, 0x17
/* 6C4EC 8006B8EC 00003021 */  addu       $a2, $zero, $zero
/* 6C4F0 8006B8F0 0C0174E1 */  jal        func_8005D384
/* 6C4F4 8006B8F4 2407FFFF */   addiu     $a3, $zero, -1
/* 6C4F8 8006B8F8 00408821 */  addu       $s1, $v0, $zero
/* 6C4FC 8006B8FC 8E240040 */  lw         $a0, 0x40($s1)
/* 6C500 8006B900 00001821 */  addu       $v1, $zero, $zero
/* 6C504 8006B904 2405FFFF */  addiu      $a1, $zero, -1
.L8006B908:
/* 6C508 8006B908 A4850000 */  sh         $a1, ($a0)
/* 6C50C 8006B90C 24630001 */  addiu      $v1, $v1, 1
/* 6C510 8006B910 28620017 */  slti       $v0, $v1, 0x17
/* 6C514 8006B914 1440FFFC */  bnez       $v0, .L8006B908
/* 6C518 8006B918 24840002 */   addiu     $a0, $a0, 2
/* 6C51C 8006B91C 24040290 */  addiu      $a0, $zero, 0x290
/* 6C520 8006B920 0C008DA1 */  jal        func_80023684
/* 6C524 8006B924 24057918 */   addiu     $a1, $zero, 0x7918
/* 6C528 8006B928 00408021 */  addu       $s0, $v0, $zero
/* 6C52C 8006B92C AE300050 */  sw         $s0, 0x50($s1)
/* 6C530 8006B930 02002021 */  addu       $a0, $s0, $zero
/* 6C534 8006B934 00002821 */  addu       $a1, $zero, $zero
/* 6C538 8006B938 0C026DDC */  jal        func_8009B770
/* 6C53C 8006B93C 24060290 */   addiu     $a2, $zero, 0x290
/* 6C540 8006B940 A6120282 */  sh         $s2, 0x282($s0)
/* 6C544 8006B944 A6130284 */  sh         $s3, 0x284($s0)
/* 6C548 8006B948 A6140286 */  sh         $s4, 0x286($s0)
/* 6C54C 8006B94C A6150288 */  sh         $s5, 0x288($s0)
/* 6C550 8006B950 24020018 */  addiu      $v0, $zero, 0x18
/* 6C554 8006B954 A602028A */  sh         $v0, 0x28a($s0)
/* 6C558 8006B958 24020078 */  addiu      $v0, $zero, 0x78
/* 6C55C 8006B95C A602028C */  sh         $v0, 0x28c($s0)
/* 6C560 8006B960 24020001 */  addiu      $v0, $zero, 1
/* 6C564 8006B964 A602028E */  sh         $v0, 0x28e($s0)
/* 6C568 8006B968 AE000020 */  sw         $zero, 0x20($s0)
/* 6C56C 8006B96C AE000004 */  sw         $zero, 4($s0)
/* 6C570 8006B970 3C028007 */  lui        $v0, %hi(func_8006C5A8)
/* 6C574 8006B974 2442C5A8 */  addiu      $v0, $v0, %lo(func_8006C5A8)
/* 6C578 8006B978 AE020008 */  sw         $v0, 8($s0)
/* 6C57C 8006B97C 3C028007 */  lui        $v0, %hi(func_8006C7A4)
/* 6C580 8006B980 2442C7A4 */  addiu      $v0, $v0, %lo(func_8006C7A4)
/* 6C584 8006B984 AE02000C */  sw         $v0, 0xc($s0)
/* 6C588 8006B988 02201021 */  addu       $v0, $s1, $zero
/* 6C58C 8006B98C 8FBF0030 */  lw         $ra, 0x30($sp)
/* 6C590 8006B990 8FB5002C */  lw         $s5, 0x2c($sp)
/* 6C594 8006B994 8FB40028 */  lw         $s4, 0x28($sp)
/* 6C598 8006B998 8FB30024 */  lw         $s3, 0x24($sp)
/* 6C59C 8006B99C 8FB20020 */  lw         $s2, 0x20($sp)
/* 6C5A0 8006B9A0 8FB1001C */  lw         $s1, 0x1c($sp)
/* 6C5A4 8006B9A4 8FB00018 */  lw         $s0, 0x18($sp)
/* 6C5A8 8006B9A8 03E00008 */  jr         $ra
/* 6C5AC 8006B9AC 27BD0038 */   addiu     $sp, $sp, 0x38
