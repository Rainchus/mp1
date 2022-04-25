	.set noat
	.set noreorder

glabel func_8007B210
/* 7BE10 8007B210 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7BE14 8007B214 AFBF0018 */  sw         $ra, 0x18($sp)
/* 7BE18 8007B218 3C040002 */  lui        $a0, 2
/* 7BE1C 8007B21C 0C008D9A */  jal        func_80023668
/* 7BE20 8007B220 34845840 */   ori       $a0, $a0, 0x5840
/* 7BE24 8007B224 3C01800E */  lui        $at, %hi(D_800E4340)
/* 7BE28 8007B228 AC224340 */  sw         $v0, %lo(D_800E4340)($at)
/* 7BE2C 8007B22C 0C008D9A */  jal        func_80023668
/* 7BE30 8007B230 24041900 */   addiu     $a0, $zero, 0x1900
/* 7BE34 8007B234 3C01800E */  lui        $at, %hi(D_800E434C)
/* 7BE38 8007B238 AC22434C */  sw         $v0, %lo(D_800E434C)($at)
/* 7BE3C 8007B23C AFA20010 */  sw         $v0, 0x10($sp)
/* 7BE40 8007B240 3C02800E */  lui        $v0, %hi(D_800E4340)
/* 7BE44 8007B244 8C424340 */  lw         $v0, %lo(D_800E4340)($v0)
/* 7BE48 8007B248 2442003F */  addiu      $v0, $v0, 0x3f
/* 7BE4C 8007B24C 2403FFC0 */  addiu      $v1, $zero, -0x40
/* 7BE50 8007B250 00431024 */  and        $v0, $v0, $v1
/* 7BE54 8007B254 3C01800E */  lui        $at, %hi(D_800E4344)
/* 7BE58 8007B258 AC224344 */  sw         $v0, %lo(D_800E4344)($at)
/* 7BE5C 8007B25C 00002021 */  addu       $a0, $zero, $zero
/* 7BE60 8007B260 3C058008 */  lui        $a1, %hi(func_8007B420)
/* 7BE64 8007B264 24A5B420 */  addiu      $a1, $a1, %lo(func_8007B420)
/* 7BE68 8007B268 0C009147 */  jal        func_8002451C
/* 7BE6C 8007B26C 24060006 */   addiu     $a2, $zero, 6
/* 7BE70 8007B270 3C01800E */  lui        $at, %hi(D_800E4350)
/* 7BE74 8007B274 A4224350 */  sh         $v0, %lo(D_800E4350)($at)
/* 7BE78 8007B278 8FA30010 */  lw         $v1, 0x10($sp)
/* 7BE7C 8007B27C 24620008 */  addiu      $v0, $v1, 8
/* 7BE80 8007B280 AFA20010 */  sw         $v0, 0x10($sp)
/* 7BE84 8007B284 3C02DE00 */  lui        $v0, 0xde00
/* 7BE88 8007B288 AC620000 */  sw         $v0, ($v1)
/* 7BE8C 8007B28C 3C02800C */  lui        $v0, %hi(D_800C6108)
/* 7BE90 8007B290 24426108 */  addiu      $v0, $v0, %lo(D_800C6108)
/* 7BE94 8007B294 AC620004 */  sw         $v0, 4($v1)
/* 7BE98 8007B298 3C05800E */  lui        $a1, %hi(D_800E4344)
/* 7BE9C 8007B29C 8CA54344 */  lw         $a1, %lo(D_800E4344)($a1)
/* 7BEA0 8007B2A0 0C01CB0D */  jal        func_80072C34
/* 7BEA4 8007B2A4 27A40010 */   addiu     $a0, $sp, 0x10
/* 7BEA8 8007B2A8 8FA30010 */  lw         $v1, 0x10($sp)
/* 7BEAC 8007B2AC 3C02DF00 */  lui        $v0, 0xdf00
/* 7BEB0 8007B2B0 AC620000 */  sw         $v0, ($v1)
/* 7BEB4 8007B2B4 AC600004 */  sw         $zero, 4($v1)
/* 7BEB8 8007B2B8 3C01800E */  lui        $at, %hi(D_800E4348)
/* 7BEBC 8007B2BC A0204348 */  sb         $zero, %lo(D_800E4348)($at)
/* 7BEC0 8007B2C0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 7BEC4 8007B2C4 03E00008 */  jr         $ra
/* 7BEC8 8007B2C8 27BD0020 */   addiu     $sp, $sp, 0x20
