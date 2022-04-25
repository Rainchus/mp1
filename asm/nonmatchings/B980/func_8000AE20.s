	.set noat
	.set noreorder

glabel func_8000AE20
/* BA20 8000AE20 84820000 */  lh         $v0, ($a0)
/* BA24 8000AE24 04410003 */  bgez       $v0, .L8000AE34
/* BA28 8000AE28 00051400 */   sll       $v0, $a1, 0x10
/* BA2C 8000AE2C 08002B92 */  j          .L8000AE48
/* BA30 8000AE30 A4800000 */   sh        $zero, ($a0)
.L8000AE34:
/* BA34 8000AE34 84830000 */  lh         $v1, ($a0)
/* BA38 8000AE38 00021403 */  sra        $v0, $v0, 0x10
/* BA3C 8000AE3C 0043102A */  slt        $v0, $v0, $v1
/* BA40 8000AE40 54400001 */  bnel       $v0, $zero, .L8000AE48
/* BA44 8000AE44 A4850000 */   sh        $a1, ($a0)
.L8000AE48:
/* BA48 8000AE48 03E00008 */  jr         $ra
/* BA4C 8000AE4C 00000000 */   nop
