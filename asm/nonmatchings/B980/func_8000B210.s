	.set noat
	.set noreorder

glabel func_8000B210
/* BE10 8000B210 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BE14 8000B214 AFBF0010 */  sw         $ra, 0x10($sp)
/* BE18 8000B218 3C02800C */  lui        $v0, %hi(D_800C18A0)
/* BE1C 8000B21C 244218A0 */  addiu      $v0, $v0, %lo(D_800C18A0)
/* BE20 8000B220 3C04800D */  lui        $a0, %hi(D_800CDAA8)
/* BE24 8000B224 2484DAA8 */  addiu      $a0, $a0, %lo(D_800CDAA8)
/* BE28 8000B228 8C450000 */  lw         $a1, ($v0)
/* BE2C 8000B22C 0C02265C */  jal        func_80089970
/* BE30 8000B230 8C460004 */   lw        $a2, 4($v0)
/* BE34 8000B234 3C02800D */  lui        $v0, %hi(D_800CDAB8)
/* BE38 8000B238 2442DAB8 */  addiu      $v0, $v0, %lo(D_800CDAB8)
/* BE3C 8000B23C AC40000C */  sw         $zero, 0xc($v0)
/* BE40 8000B240 AC400008 */  sw         $zero, 8($v0)
/* BE44 8000B244 AC400004 */  sw         $zero, 4($v0)
/* BE48 8000B248 0C002B94 */  jal        func_8000AE50
/* BE4C 8000B24C AC400000 */   sw        $zero, ($v0)
/* BE50 8000B250 14400017 */  bnez       $v0, .L8000B2B0
/* BE54 8000B254 00000000 */   nop
/* BE58 8000B258 3C04800C */  lui        $a0, %hi(D_800C1874)
/* BE5C 8000B25C 24841874 */  addiu      $a0, $a0, %lo(D_800C1874)
/* BE60 8000B260 3C05800D */  lui        $a1, %hi(D_800CDAA8)
/* BE64 8000B264 0C004B3C */  jal        func_80012CF0
/* BE68 8000B268 24A5DAA8 */   addiu     $a1, $a1, %lo(D_800CDAA8)
/* BE6C 8000B26C 14400010 */  bnez       $v0, .L8000B2B0
/* BE70 8000B270 00000000 */   nop
/* BE74 8000B274 0C002CFA */  jal        func_8000B3E8
/* BE78 8000B278 00000000 */   nop
/* BE7C 8000B27C 1440000C */  bnez       $v0, .L8000B2B0
/* BE80 8000B280 00000000 */   nop
/* BE84 8000B284 0C003597 */  jal        func_8000D65C
/* BE88 8000B288 00000000 */   nop
/* BE8C 8000B28C 14400008 */  bnez       $v0, .L8000B2B0
/* BE90 8000B290 00000000 */   nop
/* BE94 8000B294 3C04800C */  lui        $a0, %hi(D_800C1874)
/* BE98 8000B298 0C004C04 */  jal        func_80013010
/* BE9C 8000B29C 24841874 */   addiu     $a0, $a0, %lo(D_800C1874)
/* BEA0 8000B2A0 34028000 */  ori        $v0, $zero, 0x8000
/* BEA4 8000B2A4 3C01800C */  lui        $at, %hi(D_800C1870)
/* BEA8 8000B2A8 AC221870 */  sw         $v0, %lo(D_800C1870)($at)
/* BEAC 8000B2AC 00001021 */  addu       $v0, $zero, $zero
.L8000B2B0:
/* BEB0 8000B2B0 8FBF0010 */  lw         $ra, 0x10($sp)
/* BEB4 8000B2B4 03E00008 */  jr         $ra
/* BEB8 8000B2B8 27BD0018 */   addiu     $sp, $sp, 0x18
