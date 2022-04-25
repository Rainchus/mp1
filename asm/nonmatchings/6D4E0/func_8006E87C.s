	.set noat
	.set noreorder

glabel func_8006E87C
/* 6F47C 8006E87C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6F480 8006E880 AFBF0010 */  sw         $ra, 0x10($sp)
/* 6F484 8006E884 00802821 */  addu       $a1, $a0, $zero
/* 6F488 8006E888 90A30013 */  lbu        $v1, 0x13($a1)
/* 6F48C 8006E88C 90A20009 */  lbu        $v0, 9($a1)
/* 6F490 8006E890 00621821 */  addu       $v1, $v1, $v0
/* 6F494 8006E894 94A2002C */  lhu        $v0, 0x2c($a1)
/* 6F498 8006E898 00431021 */  addu       $v0, $v0, $v1
/* 6F49C 8006E89C A4A2002C */  sh         $v0, 0x2c($a1)
/* 6F4A0 8006E8A0 3C02800C */  lui        $v0, %hi(D_800C5DF2)
/* 6F4A4 8006E8A4 90425DF2 */  lbu        $v0, %lo(D_800C5DF2)($v0)
/* 6F4A8 8006E8A8 14400004 */  bnez       $v0, .L8006E8BC
/* 6F4AC 8006E8AC 24020008 */   addiu     $v0, $zero, 8
/* 6F4B0 8006E8B0 90A30007 */  lbu        $v1, 7($a1)
/* 6F4B4 8006E8B4 0801BA3D */  j          .L8006E8F4
/* 6F4B8 8006E8B8 00000000 */   nop
.L8006E8BC:
/* 6F4BC 8006E8BC 90A30005 */  lbu        $v1, 5($a1)
/* 6F4C0 8006E8C0 14620007 */  bne        $v1, $v0, .L8006E8E0
/* 6F4C4 8006E8C4 00000000 */   nop
/* 6F4C8 8006E8C8 8CA200B0 */  lw         $v0, 0xb0($a1)
/* 6F4CC 8006E8CC 90420000 */  lbu        $v0, ($v0)
/* 6F4D0 8006E8D0 3C03800C */  lui        $v1, %hi(D_800C5F34)
/* 6F4D4 8006E8D4 00621821 */  addu       $v1, $v1, $v0
/* 6F4D8 8006E8D8 0801BA3D */  j          .L8006E8F4
/* 6F4DC 8006E8DC 90635F34 */   lbu       $v1, %lo(D_800C5F34)($v1)
.L8006E8E0:
/* 6F4E0 8006E8E0 8CA200B0 */  lw         $v0, 0xb0($a1)
/* 6F4E4 8006E8E4 90420000 */  lbu        $v0, ($v0)
/* 6F4E8 8006E8E8 3C03800C */  lui        $v1, %hi(D_800C5E34)
/* 6F4EC 8006E8EC 00621821 */  addu       $v1, $v1, $v0
/* 6F4F0 8006E8F0 90635E34 */  lbu        $v1, %lo(D_800C5E34)($v1)
.L8006E8F4:
/* 6F4F4 8006E8F4 84A2002C */  lh         $v0, 0x2c($a1)
/* 6F4F8 8006E8F8 00621021 */  addu       $v0, $v1, $v0
/* 6F4FC 8006E8FC 84A30024 */  lh         $v1, 0x24($a1)
/* 6F500 8006E900 84A40028 */  lh         $a0, 0x28($a1)
/* 6F504 8006E904 00641821 */  addu       $v1, $v1, $a0
/* 6F508 8006E908 0062182A */  slt        $v1, $v1, $v0
/* 6F50C 8006E90C 10600008 */  beqz       $v1, .L8006E930
/* 6F510 8006E910 24020001 */   addiu     $v0, $zero, 1
/* 6F514 8006E914 8CA200B0 */  lw         $v0, 0xb0($a1)
/* 6F518 8006E918 90420000 */  lbu        $v0, ($v0)
/* 6F51C 8006E91C 2C420020 */  sltiu      $v0, $v0, 0x20
/* 6F520 8006E920 14400003 */  bnez       $v0, .L8006E930
/* 6F524 8006E924 24020001 */   addiu     $v0, $zero, 1
/* 6F528 8006E928 0C01BA4F */  jal        func_8006E93C
/* 6F52C 8006E92C 00A02021 */   addu      $a0, $a1, $zero
.L8006E930:
/* 6F530 8006E930 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6F534 8006E934 03E00008 */  jr         $ra
/* 6F538 8006E938 27BD0018 */   addiu     $sp, $sp, 0x18
