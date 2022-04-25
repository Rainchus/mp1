	.set noat
	.set noreorder

glabel func_8000F238
/* FE38 8000F238 27BDFFF8 */  addiu      $sp, $sp, -8
/* FE3C 8000F23C 3C02800D */  lui        $v0, %hi(D_800CEAF0)
/* FE40 8000F240 8C42EAF0 */  lw         $v0, %lo(D_800CEAF0)($v0)
/* FE44 8000F244 10400011 */  beqz       $v0, .L8000F28C
/* FE48 8000F248 00402821 */   addu      $a1, $v0, $zero
/* FE4C 8000F24C 1840000D */  blez       $v0, .L8000F284
/* FE50 8000F250 00001821 */   addu      $v1, $zero, $zero
/* FE54 8000F254 3C04800D */  lui        $a0, %hi(D_800CEAE4)
/* FE58 8000F258 8C84EAE4 */  lw         $a0, %lo(D_800CEAE4)($a0)
/* FE5C 8000F25C 2406FFFF */  addiu      $a2, $zero, -1
/* FE60 8000F260 00031040 */  sll        $v0, $v1, 1
.L8000F264:
/* FE64 8000F264 00431021 */  addu       $v0, $v0, $v1
/* FE68 8000F268 00021080 */  sll        $v0, $v0, 2
/* FE6C 8000F26C 00441021 */  addu       $v0, $v0, $a0
/* FE70 8000F270 A4460000 */  sh         $a2, ($v0)
/* FE74 8000F274 24630001 */  addiu      $v1, $v1, 1
/* FE78 8000F278 0065102A */  slt        $v0, $v1, $a1
/* FE7C 8000F27C 1440FFF9 */  bnez       $v0, .L8000F264
/* FE80 8000F280 00031040 */   sll       $v0, $v1, 1
.L8000F284:
/* FE84 8000F284 3C01800D */  lui        $at, %hi(D_800CEAF6)
/* FE88 8000F288 A020EAF6 */  sb         $zero, %lo(D_800CEAF6)($at)
.L8000F28C:
/* FE8C 8000F28C 03E00008 */  jr         $ra
/* FE90 8000F290 27BD0008 */   addiu     $sp, $sp, 8
