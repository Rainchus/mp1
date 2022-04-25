	.set noat
	.set noreorder

glabel func_8000ADFC
/* B9FC 8000ADFC 00042600 */  sll        $a0, $a0, 0x18
/* BA00 8000AE00 00041603 */  sra        $v0, $a0, 0x18
/* BA04 8000AE04 18400003 */  blez       $v0, .L8000AE14
/* BA08 8000AE08 00021200 */   sll       $v0, $v0, 8
/* BA0C 8000AE0C 08002B86 */  j          .L8000AE18
/* BA10 8000AE10 344200FF */   ori       $v0, $v0, 0xff
.L8000AE14:
/* BA14 8000AE14 00001021 */  addu       $v0, $zero, $zero
.L8000AE18:
/* BA18 8000AE18 03E00008 */  jr         $ra
/* BA1C 8000AE1C 00000000 */   nop
