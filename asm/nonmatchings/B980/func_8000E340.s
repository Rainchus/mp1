	.set noat
	.set noreorder

glabel func_8000E340
/* EF40 8000E340 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* EF44 8000E344 00004821 */  addu       $t1, $zero, $zero
/* EF48 8000E348 00006021 */  addu       $t4, $zero, $zero
/* EF4C 8000E34C 84820002 */  lh         $v0, 2($a0)
/* EF50 8000E350 1840003A */  blez       $v0, .L8000E43C
/* EF54 8000E354 00401821 */   addu      $v1, $v0, $zero
/* EF58 8000E358 00007021 */  addu       $t6, $zero, $zero
/* EF5C 8000E35C 00051400 */  sll        $v0, $a1, 0x10
/* EF60 8000E360 00026C03 */  sra        $t5, $v0, 0x10
/* EF64 8000E364 00031400 */  sll        $v0, $v1, 0x10
/* EF68 8000E368 00027C03 */  sra        $t7, $v0, 0x10
/* EF6C 8000E36C 000C1400 */  sll        $v0, $t4, 0x10
.L8000E370:
/* EF70 8000E370 00021383 */  sra        $v0, $v0, 0xe
/* EF74 8000E374 00441021 */  addu       $v0, $v0, $a0
/* EF78 8000E378 8C4A0004 */  lw         $t2, 4($v0)
/* EF7C 8000E37C 85420000 */  lh         $v0, ($t2)
/* EF80 8000E380 00401821 */  addu       $v1, $v0, $zero
/* EF84 8000E384 01C2102A */  slt        $v0, $t6, $v0
/* EF88 8000E388 10400025 */  beqz       $v0, .L8000E420
/* EF8C 8000E38C 00004021 */   addu      $t0, $zero, $zero
/* EF90 8000E390 00031400 */  sll        $v0, $v1, 0x10
/* EF94 8000E394 00025C03 */  sra        $t3, $v0, 0x10
/* EF98 8000E398 00081400 */  sll        $v0, $t0, 0x10
.L8000E39C:
/* EF9C 8000E39C 00021383 */  sra        $v0, $v0, 0xe
/* EFA0 8000E3A0 004A1021 */  addu       $v0, $v0, $t2
/* EFA4 8000E3A4 8C46000C */  lw         $a2, 0xc($v0)
/* EFA8 8000E3A8 84C2000E */  lh         $v0, 0xe($a2)
/* EFAC 8000E3AC 00401821 */  addu       $v1, $v0, $zero
/* EFB0 8000E3B0 01C2102A */  slt        $v0, $t6, $v0
/* EFB4 8000E3B4 10400013 */  beqz       $v0, .L8000E404
/* EFB8 8000E3B8 00002821 */   addu      $a1, $zero, $zero
/* EFBC 8000E3BC 00031400 */  sll        $v0, $v1, 0x10
/* EFC0 8000E3C0 00023C03 */  sra        $a3, $v0, 0x10
.L8000E3C4:
/* EFC4 8000E3C4 00051400 */  sll        $v0, $a1, 0x10
/* EFC8 8000E3C8 00021383 */  sra        $v0, $v0, 0xe
/* EFCC 8000E3CC 00461021 */  addu       $v0, $v0, $a2
/* EFD0 8000E3D0 8C430010 */  lw         $v1, 0x10($v0)
/* EFD4 8000E3D4 00091400 */  sll        $v0, $t1, 0x10
/* EFD8 8000E3D8 00021403 */  sra        $v0, $v0, 0x10
/* EFDC 8000E3DC 144D0003 */  bne        $v0, $t5, .L8000E3EC
/* EFE0 8000E3E0 24A20001 */   addiu     $v0, $a1, 1
/* EFE4 8000E3E4 08003910 */  j          .L8000E440
/* EFE8 8000E3E8 00601021 */   addu      $v0, $v1, $zero
.L8000E3EC:
/* EFEC 8000E3EC 00402821 */  addu       $a1, $v0, $zero
/* EFF0 8000E3F0 00021400 */  sll        $v0, $v0, 0x10
/* EFF4 8000E3F4 00021403 */  sra        $v0, $v0, 0x10
/* EFF8 8000E3F8 0047102A */  slt        $v0, $v0, $a3
/* EFFC 8000E3FC 1440FFF1 */  bnez       $v0, .L8000E3C4
/* F000 8000E400 25290001 */   addiu     $t1, $t1, 1
.L8000E404:
/* F004 8000E404 25020001 */  addiu      $v0, $t0, 1
/* F008 8000E408 00404021 */  addu       $t0, $v0, $zero
/* F00C 8000E40C 00021400 */  sll        $v0, $v0, 0x10
/* F010 8000E410 00021403 */  sra        $v0, $v0, 0x10
/* F014 8000E414 004B102A */  slt        $v0, $v0, $t3
/* F018 8000E418 1440FFE0 */  bnez       $v0, .L8000E39C
/* F01C 8000E41C 00081400 */   sll       $v0, $t0, 0x10
.L8000E420:
/* F020 8000E420 25820001 */  addiu      $v0, $t4, 1
/* F024 8000E424 00406021 */  addu       $t4, $v0, $zero
/* F028 8000E428 00021400 */  sll        $v0, $v0, 0x10
/* F02C 8000E42C 00021403 */  sra        $v0, $v0, 0x10
/* F030 8000E430 004F102A */  slt        $v0, $v0, $t7
/* F034 8000E434 1440FFCE */  bnez       $v0, .L8000E370
/* F038 8000E438 000C1400 */   sll       $v0, $t4, 0x10
.L8000E43C:
/* F03C 8000E43C 00001021 */  addu       $v0, $zero, $zero
.L8000E440:
/* F040 8000E440 03E00008 */  jr         $ra
/* F044 8000E444 27BD0018 */   addiu     $sp, $sp, 0x18
