	.set noat
	.set noreorder

glabel func_8000DCCC
/* E8CC 8000DCCC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* E8D0 8000DCD0 AFBF0020 */  sw         $ra, 0x20($sp)
/* E8D4 8000DCD4 AFB1001C */  sw         $s1, 0x1c($sp)
/* E8D8 8000DCD8 AFB00018 */  sw         $s0, 0x18($sp)
/* E8DC 8000DCDC 00808821 */  addu       $s1, $a0, $zero
/* E8E0 8000DCE0 8E220014 */  lw         $v0, 0x14($s1)
/* E8E4 8000DCE4 1040003C */  beqz       $v0, .L8000DDD8
/* E8E8 8000DCE8 00001021 */   addu      $v0, $zero, $zero
/* E8EC 8000DCEC 8E220018 */  lw         $v0, 0x18($s1)
/* E8F0 8000DCF0 10400039 */  beqz       $v0, .L8000DDD8
/* E8F4 8000DCF4 00001021 */   addu      $v0, $zero, $zero
/* E8F8 8000DCF8 8E300018 */  lw         $s0, 0x18($s1)
/* E8FC 8000DCFC 32020001 */  andi       $v0, $s0, 1
/* E900 8000DD00 02028021 */  addu       $s0, $s0, $v0
/* E904 8000DD04 0C002BE8 */  jal        func_8000AFA0
/* E908 8000DD08 02002021 */   addu      $a0, $s0, $zero
/* E90C 8000DD0C 3C01800D */  lui        $at, %hi(D_800CEABC)
/* E910 8000DD10 AC22EABC */  sw         $v0, %lo(D_800CEABC)($at)
/* E914 8000DD14 10400030 */  beqz       $v0, .L8000DDD8
/* E918 8000DD18 24020001 */   addiu     $v0, $zero, 1
/* E91C 8000DD1C 8E240014 */  lw         $a0, 0x14($s1)
/* E920 8000DD20 3C02800C */  lui        $v0, %hi(D_800C1888)
/* E924 8000DD24 8C421888 */  lw         $v0, %lo(D_800C1888)($v0)
/* E928 8000DD28 00822021 */  addu       $a0, $a0, $v0
/* E92C 8000DD2C AE240014 */  sw         $a0, 0x14($s1)
/* E930 8000DD30 3C05800D */  lui        $a1, %hi(D_800CEABC)
/* E934 8000DD34 8CA5EABC */  lw         $a1, %lo(D_800CEABC)($a1)
/* E938 8000DD38 0C002B60 */  jal        func_8000AD80
/* E93C 8000DD3C 02003021 */   addu      $a2, $s0, $zero
/* E940 8000DD40 3C03800D */  lui        $v1, %hi(D_800CEABC)
/* E944 8000DD44 8C63EABC */  lw         $v1, %lo(D_800CEABC)($v1)
/* E948 8000DD48 8C620000 */  lw         $v0, ($v1)
/* E94C 8000DD4C 00621021 */  addu       $v0, $v1, $v0
/* E950 8000DD50 AC620000 */  sw         $v0, ($v1)
/* E954 8000DD54 3C03800D */  lui        $v1, %hi(D_800CEABC)
/* E958 8000DD58 8C63EABC */  lw         $v1, %lo(D_800CEABC)($v1)
/* E95C 8000DD5C 8C620004 */  lw         $v0, 4($v1)
/* E960 8000DD60 00621021 */  addu       $v0, $v1, $v0
/* E964 8000DD64 AC620004 */  sw         $v0, 4($v1)
/* E968 8000DD68 3C02800D */  lui        $v0, %hi(D_800CEA9C)
/* E96C 8000DD6C 8C42EA9C */  lw         $v0, %lo(D_800CEA9C)($v0)
/* E970 8000DD70 00022080 */  sll        $a0, $v0, 2
/* E974 8000DD74 00822021 */  addu       $a0, $a0, $v0
/* E978 8000DD78 00042080 */  sll        $a0, $a0, 2
/* E97C 8000DD7C 00822021 */  addu       $a0, $a0, $v0
/* E980 8000DD80 0C002BE8 */  jal        func_8000AFA0
/* E984 8000DD84 00042080 */   sll       $a0, $a0, 2
/* E988 8000DD88 3C01800D */  lui        $at, %hi(D_800CEAC0)
/* E98C 8000DD8C AC22EAC0 */  sw         $v0, %lo(D_800CEAC0)($at)
/* E990 8000DD90 10400011 */  beqz       $v0, .L8000DDD8
/* E994 8000DD94 24020001 */   addiu     $v0, $zero, 1
/* E998 8000DD98 3C02800D */  lui        $v0, %hi(D_800CEA9C)
/* E99C 8000DD9C 8C42EA9C */  lw         $v0, %lo(D_800CEA9C)($v0)
/* E9A0 8000DDA0 1840000A */  blez       $v0, .L8000DDCC
/* E9A4 8000DDA4 00008021 */   addu      $s0, $zero, $zero
/* E9A8 8000DDA8 00102400 */  sll        $a0, $s0, 0x10
.L8000DDAC:
/* E9AC 8000DDAC 0C004044 */  jal        func_80010110
/* E9B0 8000DDB0 00042403 */   sra       $a0, $a0, 0x10
/* E9B4 8000DDB4 26100001 */  addiu      $s0, $s0, 1
/* E9B8 8000DDB8 3C02800D */  lui        $v0, %hi(D_800CEA9C)
/* E9BC 8000DDBC 8C42EA9C */  lw         $v0, %lo(D_800CEA9C)($v0)
/* E9C0 8000DDC0 0202102A */  slt        $v0, $s0, $v0
/* E9C4 8000DDC4 5440FFF9 */  bnel       $v0, $zero, .L8000DDAC
/* E9C8 8000DDC8 00102400 */   sll       $a0, $s0, 0x10
.L8000DDCC:
/* E9CC 8000DDCC 3C01800D */  lui        $at, %hi(D_800CEABB)
/* E9D0 8000DDD0 A020EABB */  sb         $zero, %lo(D_800CEABB)($at)
/* E9D4 8000DDD4 00001021 */  addu       $v0, $zero, $zero
.L8000DDD8:
/* E9D8 8000DDD8 8FBF0020 */  lw         $ra, 0x20($sp)
/* E9DC 8000DDDC 8FB1001C */  lw         $s1, 0x1c($sp)
/* E9E0 8000DDE0 8FB00018 */  lw         $s0, 0x18($sp)
/* E9E4 8000DDE4 03E00008 */  jr         $ra
/* E9E8 8000DDE8 27BD0028 */   addiu     $sp, $sp, 0x28
