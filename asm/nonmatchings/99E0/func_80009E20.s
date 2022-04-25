	.set noat
	.set noreorder

glabel func_80009E20
/* AA20 80009E20 8C840050 */  lw         $a0, 0x50($a0)
/* AA24 80009E24 00001821 */  addu       $v1, $zero, $zero
/* AA28 80009E28 00031080 */  sll        $v0, $v1, 2
.L80009E2C:
/* AA2C 80009E2C 00441021 */  addu       $v0, $v0, $a0
/* AA30 80009E30 AC40006C */  sw         $zero, 0x6c($v0)
/* AA34 80009E34 24630001 */  addiu      $v1, $v1, 1
/* AA38 80009E38 28620006 */  slti       $v0, $v1, 6
/* AA3C 80009E3C 5440FFFB */  bnel       $v0, $zero, .L80009E2C
/* AA40 80009E40 00031080 */   sll       $v0, $v1, 2
/* AA44 80009E44 03E00008 */  jr         $ra
/* AA48 80009E48 00000000 */   nop
