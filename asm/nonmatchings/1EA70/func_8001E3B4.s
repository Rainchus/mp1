	.set noat
	.set noreorder

glabel func_8001E3B4
/* 1EFB4 8001E3B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1EFB8 8001E3B8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1EFBC 8001E3BC 00042400 */  sll        $a0, $a0, 0x10
/* 1EFC0 8001E3C0 00042403 */  sra        $a0, $a0, 0x10
/* 1EFC4 8001E3C4 000418C0 */  sll        $v1, $a0, 3
/* 1EFC8 8001E3C8 00641821 */  addu       $v1, $v1, $a0
/* 1EFCC 8001E3CC 00031880 */  sll        $v1, $v1, 2
/* 1EFD0 8001E3D0 3C02800F */  lui        $v0, %hi(D_800ECDE0)
/* 1EFD4 8001E3D4 8C42CDE0 */  lw         $v0, %lo(D_800ECDE0)($v0)
/* 1EFD8 8001E3D8 00621821 */  addu       $v1, $v1, $v0
/* 1EFDC 8001E3DC A460000A */  sh         $zero, 0xa($v1)
/* 1EFE0 8001E3E0 A4600004 */  sh         $zero, 4($v1)
/* 1EFE4 8001E3E4 94620010 */  lhu        $v0, 0x10($v1)
/* 1EFE8 8001E3E8 3042FF7F */  andi       $v0, $v0, 0xff7f
/* 1EFEC 8001E3EC A4620010 */  sh         $v0, 0x10($v1)
/* 1EFF0 8001E3F0 84640000 */  lh         $a0, ($v1)
/* 1EFF4 8001E3F4 24050004 */  addiu      $a1, $zero, 4
/* 1EFF8 8001E3F8 0C00963B */  jal        func_800258EC
/* 1EFFC 8001E3FC 00003021 */   addu      $a2, $zero, $zero
/* 1F000 8001E400 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1F004 8001E404 03E00008 */  jr         $ra
/* 1F008 8001E408 27BD0018 */   addiu     $sp, $sp, 0x18
