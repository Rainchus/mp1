	.set noat
	.set noreorder

glabel func_8004D0B0
/* 4DCB0 8004D0B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4DCB4 8004D0B4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 4DCB8 8004D0B8 00042400 */  sll        $a0, $a0, 0x10
/* 4DCBC 8004D0BC 00042383 */  sra        $a0, $a0, 0xe
/* 4DCC0 8004D0C0 3C01800C */  lui        $at, %hi(D_800C5200)
/* 4DCC4 8004D0C4 00240821 */  addu       $at, $at, $a0
/* 4DCC8 8004D0C8 0C0136E7 */  jal        func_8004DB9C
/* 4DCCC 8004D0CC 8C245200 */   lw        $a0, %lo(D_800C5200)($at)
/* 4DCD0 8004D0D0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4DCD4 8004D0D4 03E00008 */  jr         $ra
/* 4DCD8 8004D0D8 27BD0018 */   addiu     $sp, $sp, 0x18
