	.set noat
	.set noreorder

glabel func_8004F1D0
/* 4FDD0 8004F1D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4FDD4 8004F1D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4FDD8 8004F1D8 AFB00010 */  sw         $s0, 0x10($sp)
/* 4FDDC 8004F1DC 3C04800C */  lui        $a0, %hi(D_800C5248)
/* 4FDE0 8004F1E0 8C845248 */  lw         $a0, %lo(D_800C5248)($a0)
/* 4FDE4 8004F1E4 10800005 */  beqz       $a0, .L8004F1FC
/* 4FDE8 8004F1E8 00000000 */   nop
/* 4FDEC 8004F1EC 0C0175C6 */  jal        func_8005D718
/* 4FDF0 8004F1F0 00000000 */   nop
/* 4FDF4 8004F1F4 3C01800C */  lui        $at, %hi(D_800C5248)
/* 4FDF8 8004F1F8 AC205248 */  sw         $zero, %lo(D_800C5248)($at)
.L8004F1FC:
/* 4FDFC 8004F1FC 3C02800C */  lui        $v0, %hi(D_800C524C)
/* 4FE00 8004F200 8C42524C */  lw         $v0, %lo(D_800C524C)($v0)
/* 4FE04 8004F204 2410FFFF */  addiu      $s0, $zero, -1
/* 4FE08 8004F208 10500006 */  beq        $v0, $s0, .L8004F224
/* 4FE0C 8004F20C 00000000 */   nop
/* 4FE10 8004F210 3C04800C */  lui        $a0, %hi(D_800C524E)
/* 4FE14 8004F214 0C00915B */  jal        func_8002456C
/* 4FE18 8004F218 8484524E */   lh        $a0, %lo(D_800C524E)($a0)
/* 4FE1C 8004F21C 3C01800C */  lui        $at, %hi(D_800C524C)
/* 4FE20 8004F220 AC30524C */  sw         $s0, %lo(D_800C524C)($at)
.L8004F224:
/* 4FE24 8004F224 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4FE28 8004F228 8FB00010 */  lw         $s0, 0x10($sp)
/* 4FE2C 8004F22C 03E00008 */  jr         $ra
/* 4FE30 8004F230 27BD0018 */   addiu     $sp, $sp, 0x18
