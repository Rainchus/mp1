	.set noat
	.set noreorder

glabel func_8000C184
/* CD84 8000C184 3C02800D */  lui        $v0, %hi(D_800CDAF0)
/* CD88 8000C188 8C42DAF0 */  lw         $v0, %lo(D_800CDAF0)($v0)
/* CD8C 8000C18C 30428000 */  andi       $v0, $v0, 0x8000
/* CD90 8000C190 10400004 */  beqz       $v0, .L8000C1A4
/* CD94 8000C194 00001021 */   addu      $v0, $zero, $zero
/* CD98 8000C198 3C02800D */  lui        $v0, %hi(D_800CDAE0)
/* CD9C 8000C19C 8C42DAE0 */  lw         $v0, %lo(D_800CDAE0)($v0)
/* CDA0 8000C1A0 84420002 */  lh         $v0, 2($v0)
.L8000C1A4:
/* CDA4 8000C1A4 03E00008 */  jr         $ra
/* CDA8 8000C1A8 00000000 */   nop
