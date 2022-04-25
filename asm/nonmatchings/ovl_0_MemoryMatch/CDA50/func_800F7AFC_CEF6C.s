	.set noat
	.set noreorder

glabel func_800F7AFC_CEF6C
/* CEF6C 800F7AFC 3C028010 */  lui        $v0, %hi(D_800FD7E0)
/* CEF70 800F7B00 8C42D7E0 */  lw         $v0, %lo(D_800FD7E0)($v0)
/* CEF74 800F7B04 3C031997 */  lui        $v1, 0x1997
/* CEF78 800F7B08 34631204 */  ori        $v1, $v1, 0x1204
/* CEF7C 800F7B0C 00430018 */  mult       $v0, $v1
/* CEF80 800F7B10 00001012 */  mflo       $v0
/* CEF84 800F7B14 3C031976 */  lui        $v1, 0x1976
/* CEF88 800F7B18 34630831 */  ori        $v1, $v1, 0x831
/* CEF8C 800F7B1C 00431021 */  addu       $v0, $v0, $v1
/* CEF90 800F7B20 00021402 */  srl        $v0, $v0, 0x10
/* CEF94 800F7B24 3C018010 */  lui        $at, %hi(D_800FD7E0)
/* CEF98 800F7B28 AC22D7E0 */  sw         $v0, %lo(D_800FD7E0)($at)
/* CEF9C 800F7B2C 3084FFFF */  andi       $a0, $a0, 0xffff
/* CEFA0 800F7B30 1080000A */  beqz       $a0, .L800F7B5C
/* CEFA4 800F7B34 00000000 */   nop
/* CEFA8 800F7B38 0044001B */  divu       $zero, $v0, $a0
/* CEFAC 800F7B3C 14800002 */  bnez       $a0, .L800F7B48
/* CEFB0 800F7B40 00000000 */   nop
/* CEFB4 800F7B44 0007000D */  break      7
.L800F7B48:
/* CEFB8 800F7B48 00001010 */   mfhi      $v0
/* CEFBC 800F7B4C 00000000 */  nop
/* CEFC0 800F7B50 00000000 */  nop
/* CEFC4 800F7B54 0803DED9 */  j          .L800F7B64
/* CEFC8 800F7B58 3042FFFF */   andi      $v0, $v0, 0xffff
.L800F7B5C:
/* CEFCC 800F7B5C 3C028010 */  lui        $v0, %hi(D_800FD7E2)
/* CEFD0 800F7B60 9442D7E2 */  lhu        $v0, %lo(D_800FD7E2)($v0)
.L800F7B64:
/* CEFD4 800F7B64 03E00008 */  jr         $ra
/* CEFD8 800F7B68 00000000 */   nop
