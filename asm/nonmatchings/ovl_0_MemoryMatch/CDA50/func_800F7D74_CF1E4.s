	.set noat
	.set noreorder

glabel func_800F7D74_CF1E4
/* CF1E4 800F7D74 00001821 */  addu       $v1, $zero, $zero
/* CF1E8 800F7D78 2404FFFF */  addiu      $a0, $zero, -1
/* CF1EC 800F7D7C 00031400 */  sll        $v0, $v1, 0x10
.L800F7D80:
/* CF1F0 800F7D80 00021383 */  sra        $v0, $v0, 0xe
/* CF1F4 800F7D84 3C018010 */  lui        $at, %hi(D_800FE158)
/* CF1F8 800F7D88 00220821 */  addu       $at, $at, $v0
/* CF1FC 800F7D8C A424E158 */  sh         $a0, %lo(D_800FE158)($at)
/* CF200 800F7D90 3C018010 */  lui        $at, %hi(D_800FE15A)
/* CF204 800F7D94 00220821 */  addu       $at, $at, $v0
/* CF208 800F7D98 A424E15A */  sh         $a0, %lo(D_800FE15A)($at)
/* CF20C 800F7D9C 24620001 */  addiu      $v0, $v1, 1
/* CF210 800F7DA0 00401821 */  addu       $v1, $v0, $zero
/* CF214 800F7DA4 00021400 */  sll        $v0, $v0, 0x10
/* CF218 800F7DA8 00021403 */  sra        $v0, $v0, 0x10
/* CF21C 800F7DAC 2842000A */  slti       $v0, $v0, 0xa
/* CF220 800F7DB0 5440FFF3 */  bnel       $v0, $zero, .L800F7D80
/* CF224 800F7DB4 00031400 */   sll       $v0, $v1, 0x10
/* CF228 800F7DB8 03E00008 */  jr         $ra
/* CF22C 800F7DBC 00000000 */   nop
