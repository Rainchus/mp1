	.set noat
	.set noreorder

glabel func_800F8AD0_150E30
/* 150E30 800F8AD0 00001821 */  addu       $v1, $zero, $zero
/* 150E34 800F8AD4 3C048010 */  lui        $a0, %hi(D_800FA950)
/* 150E38 800F8AD8 2484A950 */  addiu      $a0, $a0, %lo(D_800FA950)
/* 150E3C 800F8ADC 00031140 */  sll        $v0, $v1, 5
.L800F8AE0:
/* 150E40 800F8AE0 00441021 */  addu       $v0, $v0, $a0
/* 150E44 800F8AE4 9442000A */  lhu        $v0, 0xa($v0)
/* 150E48 800F8AE8 2442FFFD */  addiu      $v0, $v0, -3
/* 150E4C 800F8AEC 2C420002 */  sltiu      $v0, $v0, 2
/* 150E50 800F8AF0 54400003 */  bnel       $v0, $zero, .L800F8B00
/* 150E54 800F8AF4 24630001 */   addiu     $v1, $v1, 1
/* 150E58 800F8AF8 0803E2C4 */  j          .L800F8B10
/* 150E5C 800F8AFC 00001021 */   addu      $v0, $zero, $zero
.L800F8B00:
/* 150E60 800F8B00 28620009 */  slti       $v0, $v1, 9
/* 150E64 800F8B04 1440FFF6 */  bnez       $v0, .L800F8AE0
/* 150E68 800F8B08 00031140 */   sll       $v0, $v1, 5
/* 150E6C 800F8B0C 24020001 */  addiu      $v0, $zero, 1
.L800F8B10:
/* 150E70 800F8B10 03E00008 */  jr         $ra
/* 150E74 800F8B14 00000000 */   nop
