	.set noat
	.set noreorder

glabel func_8006CB1C
/* 6D71C 8006CB1C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6D720 8006CB20 AFBF001C */  sw         $ra, 0x1c($sp)
/* 6D724 8006CB24 AFB00018 */  sw         $s0, 0x18($sp)
/* 6D728 8006CB28 3C01800E */  lui        $at, %hi(D_800E4328)
/* 6D72C 8006CB2C A4204328 */  sh         $zero, %lo(D_800E4328)($at)
/* 6D730 8006CB30 00008021 */  addu       $s0, $zero, $zero
/* 6D734 8006CB34 A7B00010 */  sh         $s0, 0x10($sp)
.L8006CB38:
/* 6D738 8006CB38 0C01B368 */  jal        func_8006CDA0
/* 6D73C 8006CB3C 27A40010 */   addiu     $a0, $sp, 0x10
/* 6D740 8006CB40 26020001 */  addiu      $v0, $s0, 1
/* 6D744 8006CB44 00408021 */  addu       $s0, $v0, $zero
/* 6D748 8006CB48 00021400 */  sll        $v0, $v0, 0x10
/* 6D74C 8006CB4C 00021403 */  sra        $v0, $v0, 0x10
/* 6D750 8006CB50 28420004 */  slti       $v0, $v0, 4
/* 6D754 8006CB54 5440FFF8 */  bnel       $v0, $zero, .L8006CB38
/* 6D758 8006CB58 A7B00010 */   sh        $s0, 0x10($sp)
/* 6D75C 8006CB5C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 6D760 8006CB60 8FB00018 */  lw         $s0, 0x18($sp)
/* 6D764 8006CB64 03E00008 */  jr         $ra
/* 6D768 8006CB68 27BD0020 */   addiu     $sp, $sp, 0x20
