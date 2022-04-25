	.set noat
	.set noreorder

glabel func_8001E360
/* 1EF60 8001E360 00042400 */  sll        $a0, $a0, 0x10
/* 1EF64 8001E364 00042403 */  sra        $a0, $a0, 0x10
/* 1EF68 8001E368 2402FFFF */  addiu      $v0, $zero, -1
/* 1EF6C 8001E36C 1082000F */  beq        $a0, $v0, .L8001E3AC
/* 1EF70 8001E370 000418C0 */   sll       $v1, $a0, 3
/* 1EF74 8001E374 3C02800F */  lui        $v0, %hi(D_800ECDE0)
/* 1EF78 8001E378 8C42CDE0 */  lw         $v0, %lo(D_800ECDE0)($v0)
/* 1EF7C 8001E37C 00641821 */  addu       $v1, $v1, $a0
/* 1EF80 8001E380 00031880 */  sll        $v1, $v1, 2
/* 1EF84 8001E384 00621021 */  addu       $v0, $v1, $v0
/* 1EF88 8001E388 A0450013 */  sb         $a1, 0x13($v0)
/* 1EF8C 8001E38C 3C02800F */  lui        $v0, %hi(D_800ECDE0)
/* 1EF90 8001E390 8C42CDE0 */  lw         $v0, %lo(D_800ECDE0)($v0)
/* 1EF94 8001E394 00621021 */  addu       $v0, $v1, $v0
/* 1EF98 8001E398 A0460014 */  sb         $a2, 0x14($v0)
/* 1EF9C 8001E39C 3C02800F */  lui        $v0, %hi(D_800ECDE0)
/* 1EFA0 8001E3A0 8C42CDE0 */  lw         $v0, %lo(D_800ECDE0)($v0)
/* 1EFA4 8001E3A4 00621821 */  addu       $v1, $v1, $v0
/* 1EFA8 8001E3A8 A0670015 */  sb         $a3, 0x15($v1)
.L8001E3AC:
/* 1EFAC 8001E3AC 03E00008 */  jr         $ra
/* 1EFB0 8001E3B0 00000000 */   nop
