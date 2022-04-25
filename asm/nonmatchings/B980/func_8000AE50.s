	.set noat
	.set noreorder

glabel func_8000AE50
/* BA50 8000AE50 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BA54 8000AE54 AFBF0018 */  sw         $ra, 0x18($sp)
/* BA58 8000AE58 AFB10014 */  sw         $s1, 0x14($sp)
/* BA5C 8000AE5C AFB00010 */  sw         $s0, 0x10($sp)
/* BA60 8000AE60 0C002BE8 */  jal        func_8000AFA0
/* BA64 8000AE64 24040008 */   addiu     $a0, $zero, 8
/* BA68 8000AE68 3C01800D */  lui        $at, %hi(D_800CDAC8)
/* BA6C 8000AE6C AC22DAC8 */  sw         $v0, %lo(D_800CDAC8)($at)
/* BA70 8000AE70 50400046 */  beql       $v0, $zero, .L8000AF8C
/* BA74 8000AE74 24020001 */   addiu     $v0, $zero, 1
/* BA78 8000AE78 3C05800D */  lui        $a1, %hi(D_800CDAC8)
/* BA7C 8000AE7C 8CA5DAC8 */  lw         $a1, %lo(D_800CDAC8)($a1)
/* BA80 8000AE80 ACA00004 */  sw         $zero, 4($a1)
/* BA84 8000AE84 3C04800C */  lui        $a0, %hi(D_800C1898)
/* BA88 8000AE88 8C841898 */  lw         $a0, %lo(D_800C1898)($a0)
/* BA8C 8000AE8C 1080000A */  beqz       $a0, .L8000AEB8
/* BA90 8000AE90 00000000 */   nop
/* BA94 8000AE94 0C002B60 */  jal        func_8000AD80
/* BA98 8000AE98 24060008 */   addiu     $a2, $zero, 8
/* BA9C 8000AE9C 3C04800D */  lui        $a0, %hi(D_800CDAC8)
/* BAA0 8000AEA0 8C84DAC8 */  lw         $a0, %lo(D_800CDAC8)($a0)
/* BAA4 8000AEA4 8C830000 */  lw         $v1, ($a0)
/* BAA8 8000AEA8 3C024658 */  lui        $v0, 0x4658
/* BAAC 8000AEAC 34424430 */  ori        $v0, $v0, 0x4430
/* BAB0 8000AEB0 54620001 */  bnel       $v1, $v0, .L8000AEB8
/* BAB4 8000AEB4 AC800004 */   sw        $zero, 4($a0)
.L8000AEB8:
/* BAB8 8000AEB8 3C04800C */  lui        $a0, %hi(D_800C18B4)
/* BABC 8000AEBC 8C8418B4 */  lw         $a0, %lo(D_800C18B4)($a0)
/* BAC0 8000AEC0 28820014 */  slti       $v0, $a0, 0x14
/* BAC4 8000AEC4 1440001B */  bnez       $v0, .L8000AF34
/* BAC8 8000AEC8 2491FFEC */   addiu     $s1, $a0, -0x14
/* BACC 8000AECC 3C02800D */  lui        $v0, %hi(D_800CDAC8)
/* BAD0 8000AED0 8C42DAC8 */  lw         $v0, %lo(D_800CDAC8)($v0)
/* BAD4 8000AED4 8C420004 */  lw         $v0, 4($v0)
/* BAD8 8000AED8 0222102A */  slt        $v0, $s1, $v0
/* BADC 8000AEDC 10400026 */  beqz       $v0, .L8000AF78
/* BAE0 8000AEE0 00111180 */   sll       $v0, $s1, 6
/* BAE4 8000AEE4 3C10800C */  lui        $s0, %hi(D_800C1898)
/* BAE8 8000AEE8 26101898 */  addiu      $s0, $s0, %lo(D_800C1898)
/* BAEC 8000AEEC 00511021 */  addu       $v0, $v0, $s1
/* BAF0 8000AEF0 000210C0 */  sll        $v0, $v0, 3
/* BAF4 8000AEF4 8E030000 */  lw         $v1, ($s0)
/* BAF8 8000AEF8 00438821 */  addu       $s1, $v0, $v1
/* BAFC 8000AEFC 26310010 */  addiu      $s1, $s1, 0x10
/* BB00 8000AF00 0C002BE8 */  jal        func_8000AFA0
/* BB04 8000AF04 24040208 */   addiu     $a0, $zero, 0x208
/* BB08 8000AF08 14400003 */  bnez       $v0, .L8000AF18
/* BB0C 8000AF0C AE020020 */   sw        $v0, 0x20($s0)
/* BB10 8000AF10 08002BE3 */  j          .L8000AF8C
/* BB14 8000AF14 24020001 */   addiu     $v0, $zero, 1
.L8000AF18:
/* BB18 8000AF18 02202021 */  addu       $a0, $s1, $zero
/* BB1C 8000AF1C 3C05800C */  lui        $a1, %hi(D_800C18B8)
/* BB20 8000AF20 8CA518B8 */  lw         $a1, %lo(D_800C18B8)($a1)
/* BB24 8000AF24 0C002B60 */  jal        func_8000AD80
/* BB28 8000AF28 24060208 */   addiu     $a2, $zero, 0x208
/* BB2C 8000AF2C 08002BE3 */  j          .L8000AF8C
/* BB30 8000AF30 00001021 */   addu      $v0, $zero, $zero
.L8000AF34:
/* BB34 8000AF34 3C03800C */  lui        $v1, %hi(D_800C18B4)
/* BB38 8000AF38 246318B4 */  addiu      $v1, $v1, %lo(D_800C18B4)
/* BB3C 8000AF3C 8C620000 */  lw         $v0, ($v1)
/* BB40 8000AF40 28420006 */  slti       $v0, $v0, 6
/* BB44 8000AF44 10400003 */  beqz       $v0, .L8000AF54
/* BB48 8000AF48 00001021 */   addu      $v0, $zero, $zero
/* BB4C 8000AF4C 08002BE3 */  j          .L8000AF8C
/* BB50 8000AF50 AC600004 */   sw        $zero, 4($v1)
.L8000AF54:
/* BB54 8000AF54 3C04800C */  lui        $a0, %hi(D_800C18B4)
/* BB58 8000AF58 248418B4 */  addiu      $a0, $a0, %lo(D_800C18B4)
/* BB5C 8000AF5C 8C830000 */  lw         $v1, ($a0)
/* BB60 8000AF60 24020006 */  addiu      $v0, $zero, 6
/* BB64 8000AF64 54620005 */  bnel       $v1, $v0, .L8000AF7C
/* BB68 8000AF68 00002021 */   addu      $a0, $zero, $zero
/* BB6C 8000AF6C 8C820004 */  lw         $v0, 4($a0)
/* BB70 8000AF70 14400006 */  bnez       $v0, .L8000AF8C
/* BB74 8000AF74 00001021 */   addu      $v0, $zero, $zero
.L8000AF78:
/* BB78 8000AF78 00002021 */  addu       $a0, $zero, $zero
.L8000AF7C:
/* BB7C 8000AF7C 00002821 */  addu       $a1, $zero, $zero
/* BB80 8000AF80 0C002BFE */  jal        func_8000AFF8
/* BB84 8000AF84 24060020 */   addiu     $a2, $zero, 0x20
/* BB88 8000AF88 24020064 */  addiu      $v0, $zero, 0x64
.L8000AF8C:
/* BB8C 8000AF8C 8FBF0018 */  lw         $ra, 0x18($sp)
/* BB90 8000AF90 8FB10014 */  lw         $s1, 0x14($sp)
/* BB94 8000AF94 8FB00010 */  lw         $s0, 0x10($sp)
/* BB98 8000AF98 03E00008 */  jr         $ra
/* BB9C 8000AF9C 27BD0020 */   addiu     $sp, $sp, 0x20
