	.set noat
	.set noreorder

glabel func_80061228
/* 61E28 80061228 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 61E2C 8006122C AFBF0010 */  sw         $ra, 0x10($sp)
/* 61E30 80061230 308200FF */  andi       $v0, $a0, 0xff
/* 61E34 80061234 30A300FF */  andi       $v1, $a1, 0xff
/* 61E38 80061238 30C700FF */  andi       $a3, $a2, 0xff
/* 61E3C 8006123C 3C04800E */  lui        $a0, %hi(D_800D8AA8)
/* 61E40 80061240 24848AA8 */  addiu      $a0, $a0, %lo(D_800D8AA8)
/* 61E44 80061244 00402821 */  addu       $a1, $v0, $zero
/* 61E48 80061248 0C018437 */  jal        func_800610DC
/* 61E4C 8006124C 00603021 */   addu      $a2, $v1, $zero
/* 61E50 80061250 00021400 */  sll        $v0, $v0, 0x10
/* 61E54 80061254 8FBF0010 */  lw         $ra, 0x10($sp)
/* 61E58 80061258 00021403 */  sra        $v0, $v0, 0x10
/* 61E5C 8006125C 03E00008 */  jr         $ra
/* 61E60 80061260 27BD0018 */   addiu     $sp, $sp, 0x18
