	.set noat
	.set noreorder

glabel func_80081250
/* 81E50 80081250 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 81E54 80081254 AFBF0014 */  sw         $ra, 0x14($sp)
/* 81E58 80081258 3C04800F */  lui        $a0, %hi(D_800EA150)
/* 81E5C 8008125C 3C050500 */  lui        $a1, 0x500
/* 81E60 80081260 34A50520 */  ori        $a1, $a1, 0x520
/* 81E64 80081264 8C84A150 */  lw         $a0, %lo(D_800EA150)($a0)
/* 81E68 80081268 0C024154 */  jal        func_80090550
/* 81E6C 8008126C 3C06AAAA */   lui       $a2, 0xaaaa
/* 81E70 80081270 8FBF0014 */  lw         $ra, 0x14($sp)
/* 81E74 80081274 27BD0018 */  addiu      $sp, $sp, 0x18
/* 81E78 80081278 03E00008 */  jr         $ra
/* 81E7C 8008127C 00000000 */   nop
