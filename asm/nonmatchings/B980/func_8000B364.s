	.set noat
	.set noreorder

glabel func_8000B364
/* BF64 8000B364 27BDFFF8 */  addiu      $sp, $sp, -8
/* BF68 8000B368 30840001 */  andi       $a0, $a0, 1
/* BF6C 8000B36C 3C01800F */  lui        $at, %hi(D_800ECB2C)
/* BF70 8000B370 A024CB2C */  sb         $a0, %lo(D_800ECB2C)($at)
/* BF74 8000B374 3C02800D */  lui        $v0, %hi(D_800CEA9C)
/* BF78 8000B378 8C42EA9C */  lw         $v0, %lo(D_800CEA9C)($v0)
/* BF7C 8000B37C 18400015 */  blez       $v0, .L8000B3D4
/* BF80 8000B380 00002021 */   addu      $a0, $zero, $zero
/* BF84 8000B384 3C06800D */  lui        $a2, %hi(D_800CEA94)
/* BF88 8000B388 8CC6EA94 */  lw         $a2, %lo(D_800CEA94)($a2)
/* BF8C 8000B38C 24070001 */  addiu      $a3, $zero, 1
/* BF90 8000B390 3C05800D */  lui        $a1, %hi(D_800CEA9C)
/* BF94 8000B394 8CA5EA9C */  lw         $a1, %lo(D_800CEA9C)($a1)
/* BF98 8000B398 00041040 */  sll        $v0, $a0, 1
.L8000B39C:
/* BF9C 8000B39C 00441021 */  addu       $v0, $v0, $a0
/* BFA0 8000B3A0 00021080 */  sll        $v0, $v0, 2
/* BFA4 8000B3A4 00441023 */  subu       $v0, $v0, $a0
/* BFA8 8000B3A8 00021080 */  sll        $v0, $v0, 2
/* BFAC 8000B3AC 00461821 */  addu       $v1, $v0, $a2
/* BFB0 8000B3B0 8C62000C */  lw         $v0, 0xc($v1)
/* BFB4 8000B3B4 14470004 */  bne        $v0, $a3, .L8000B3C8
/* BFB8 8000B3B8 24840001 */   addiu     $a0, $a0, 1
/* BFBC 8000B3BC 8C620008 */  lw         $v0, 8($v1)
/* BFC0 8000B3C0 34420004 */  ori        $v0, $v0, 4
/* BFC4 8000B3C4 AC620008 */  sw         $v0, 8($v1)
.L8000B3C8:
/* BFC8 8000B3C8 0085102A */  slt        $v0, $a0, $a1
/* BFCC 8000B3CC 1440FFF3 */  bnez       $v0, .L8000B39C
/* BFD0 8000B3D0 00041040 */   sll       $v0, $a0, 1
.L8000B3D4:
/* BFD4 8000B3D4 27BD0008 */  addiu      $sp, $sp, 8
/* BFD8 8000B3D8 03E00008 */  jr         $ra
/* BFDC 8000B3DC 00000000 */   nop
