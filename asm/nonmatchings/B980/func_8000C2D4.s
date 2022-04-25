	.set noat
	.set noreorder

glabel func_8000C2D4
/* CED4 8000C2D4 3C03800D */  lui        $v1, %hi(D_800CDAEC)
/* CED8 8000C2D8 8C63DAEC */  lw         $v1, %lo(D_800CDAEC)($v1)
/* CEDC 8000C2DC 24020001 */  addiu      $v0, $zero, 1
/* CEE0 8000C2E0 14620029 */  bne        $v1, $v0, .L8000C388
/* CEE4 8000C2E4 00001021 */   addu      $v0, $zero, $zero
/* CEE8 8000C2E8 3C01800D */  lui        $at, %hi(D_800CDAF4)
/* CEEC 8000C2EC C422DAF4 */  lwc1       $f2, %lo(D_800CDAF4)($at)
/* CEF0 8000C2F0 44800000 */  mtc1       $zero, $f0
/* CEF4 8000C2F4 00000000 */  nop
/* CEF8 8000C2F8 46001032 */  c.eq.s     $f2, $f0
/* CEFC 8000C2FC 00000000 */  nop
/* CF00 8000C300 45010021 */  bc1t       .L8000C388
/* CF04 8000C304 00000000 */   nop
/* CF08 8000C308 4600103C */  c.lt.s     $f2, $f0
/* CF0C 8000C30C 00000000 */  nop
/* CF10 8000C310 45000003 */  bc1f       .L8000C320
/* CF14 8000C314 00000000 */   nop
/* CF18 8000C318 080030CA */  j          .L8000C328
/* CF1C 8000C31C 46001107 */   neg.s     $f4, $f2
.L8000C320:
/* CF20 8000C320 3C01800D */  lui        $at, %hi(D_800CDAF4)
/* CF24 8000C324 C424DAF4 */  lwc1       $f4, %lo(D_800CDAF4)($at)
.L8000C328:
/* CF28 8000C328 3C02800D */  lui        $v0, %hi(D_800CDB02)
/* CF2C 8000C32C 8442DB02 */  lh         $v0, %lo(D_800CDB02)($v0)
/* CF30 8000C330 44821000 */  mtc1       $v0, $f2
/* CF34 8000C334 00000000 */  nop
/* CF38 8000C338 468010A0 */  cvt.s.w    $f2, $f2
/* CF3C 8000C33C 46041083 */  div.s      $f2, $f2, $f4
/* CF40 8000C340 3C01800D */  lui        $at, %hi(D_800CDAF8)
/* CF44 8000C344 C420DAF8 */  lwc1       $f0, %lo(D_800CDAF8)($at)
/* CF48 8000C348 46040003 */  div.s      $f0, $f0, $f4
/* CF4C 8000C34C 46001081 */  sub.s      $f2, $f2, $f0
/* CF50 8000C350 4600100D */  trunc.w.s  $f0, $f2
/* CF54 8000C354 44030000 */  mfc1       $v1, $f0
/* CF58 8000C358 3C01800D */  lui        $at, %hi(D_800CDAF4)
/* CF5C 8000C35C C422DAF4 */  lwc1       $f2, %lo(D_800CDAF4)($at)
/* CF60 8000C360 44800000 */  mtc1       $zero, $f0
/* CF64 8000C364 00000000 */  nop
/* CF68 8000C368 4600103C */  c.lt.s     $f2, $f0
/* CF6C 8000C36C 00000000 */  nop
/* CF70 8000C370 00000000 */  nop
/* CF74 8000C374 45000002 */  bc1f       .L8000C380
/* CF78 8000C378 00601021 */   addu      $v0, $v1, $zero
/* CF7C 8000C37C 00031023 */  negu       $v0, $v1
.L8000C380:
/* CF80 8000C380 00021400 */  sll        $v0, $v0, 0x10
/* CF84 8000C384 00021403 */  sra        $v0, $v0, 0x10
.L8000C388:
/* CF88 8000C388 03E00008 */  jr         $ra
/* CF8C 8000C38C 00000000 */   nop
