	.set noat
	.set noreorder

glabel func_80052FD4
/* 53BD4 80052FD4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 53BD8 80052FD8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 53BDC 80052FDC AFB00010 */  sw         $s0, 0x10($sp)
/* 53BE0 80052FE0 00042400 */  sll        $a0, $a0, 0x10
/* 53BE4 80052FE4 0C014AA3 */  jal        func_80052A8C
/* 53BE8 80052FE8 00042403 */   sra       $a0, $a0, 0x10
/* 53BEC 80052FEC 00408021 */  addu       $s0, $v0, $zero
/* 53BF0 80052FF0 8E020020 */  lw         $v0, 0x20($s0)
/* 53BF4 80052FF4 10400006 */  beqz       $v0, .L80053010
/* 53BF8 80052FF8 00000000 */   nop
/* 53BFC 80052FFC 0C017764 */  jal        func_8005DD90
/* 53C00 80053000 8E04001C */   lw        $a0, 0x1c($s0)
/* 53C04 80053004 0C00F9A5 */  jal        func_8003E694
/* 53C08 80053008 8E040020 */   lw        $a0, 0x20($s0)
/* 53C0C 8005300C AE000020 */  sw         $zero, 0x20($s0)
.L80053010:
/* 53C10 80053010 8FBF0014 */  lw         $ra, 0x14($sp)
/* 53C14 80053014 8FB00010 */  lw         $s0, 0x10($sp)
/* 53C18 80053018 03E00008 */  jr         $ra
/* 53C1C 8005301C 27BD0018 */   addiu     $sp, $sp, 0x18
