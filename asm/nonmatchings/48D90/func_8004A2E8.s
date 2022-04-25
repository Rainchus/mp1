	.set noat
	.set noreorder

glabel func_8004A2E8
/* 4AEE8 8004A2E8 3084FFFF */  andi       $a0, $a0, 0xffff
/* 4AEEC 8004A2EC 10800005 */  beqz       $a0, .L8004A304
/* 4AEF0 8004A2F0 00000000 */   nop
/* 4AEF4 8004A2F4 3C02800D */  lui        $v0, %hi(D_800D6730)
/* 4AEF8 8004A2F8 94426730 */  lhu        $v0, %lo(D_800D6730)($v0)
/* 4AEFC 8004A2FC 080128C4 */  j          .L8004A310
/* 4AF00 8004A300 34420001 */   ori       $v0, $v0, 1
.L8004A304:
/* 4AF04 8004A304 3C02800D */  lui        $v0, %hi(D_800D6730)
/* 4AF08 8004A308 94426730 */  lhu        $v0, %lo(D_800D6730)($v0)
/* 4AF0C 8004A30C 3042FFFE */  andi       $v0, $v0, 0xfffe
.L8004A310:
/* 4AF10 8004A310 3C01800D */  lui        $at, %hi(D_800D6730)
/* 4AF14 8004A314 03E00008 */  jr         $ra
/* 4AF18 8004A318 A4226730 */   sh        $v0, %lo(D_800D6730)($at)
