	.set noat
	.set noreorder

glabel func_80052BB8
/* 537B8 80052BB8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 537BC 80052BBC AFBF0014 */  sw         $ra, 0x14($sp)
/* 537C0 80052BC0 AFB00010 */  sw         $s0, 0x10($sp)
/* 537C4 80052BC4 0C014AA3 */  jal        func_80052A8C
/* 537C8 80052BC8 00A08021 */   addu      $s0, $a1, $zero
/* 537CC 80052BCC 84420008 */  lh         $v0, 8($v0)
/* 537D0 80052BD0 0050102A */  slt        $v0, $v0, $s0
/* 537D4 80052BD4 38420001 */  xori       $v0, $v0, 1
/* 537D8 80052BD8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 537DC 80052BDC 8FB00010 */  lw         $s0, 0x10($sp)
/* 537E0 80052BE0 03E00008 */  jr         $ra
/* 537E4 80052BE4 27BD0018 */   addiu     $sp, $sp, 0x18
