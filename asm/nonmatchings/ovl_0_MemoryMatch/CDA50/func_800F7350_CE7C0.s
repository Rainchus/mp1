	.set noat
	.set noreorder

glabel func_800F7350_CE7C0
/* CE7C0 800F7350 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CE7C4 800F7354 AFBF0010 */  sw         $ra, 0x10($sp)
/* CE7C8 800F7358 3C02800C */  lui        $v0, %hi(D_800C3110)
/* CE7CC 800F735C 8C423110 */  lw         $v0, %lo(D_800C3110)($v0)
/* CE7D0 800F7360 3C014234 */  lui        $at, 0x4234
/* CE7D4 800F7364 44810000 */  mtc1       $at, $f0
/* CE7D8 800F7368 00000000 */  nop
/* CE7DC 800F736C E4400040 */  swc1       $f0, 0x40($v0)
/* CE7E0 800F7370 0C022DA8 */  jal        func_8008B6A0
/* CE7E4 800F7374 00002021 */   addu      $a0, $zero, $zero
/* CE7E8 800F7378 0C018066 */  jal        func_80060198
/* CE7EC 800F737C 00000000 */   nop
/* CE7F0 800F7380 0C03E538 */  jal        func_800F94E0_D0950
/* CE7F4 800F7384 00000000 */   nop
/* CE7F8 800F7388 0C03E0C3 */  jal        func_800F830C_CF77C
/* CE7FC 800F738C 00000000 */   nop
/* CE800 800F7390 0C0177EE */  jal        func_8005DFB8
/* CE804 800F7394 24040001 */   addiu     $a0, $zero, 1
/* CE808 800F7398 8FBF0010 */  lw         $ra, 0x10($sp)
/* CE80C 800F739C 03E00008 */  jr         $ra
/* CE810 800F73A0 27BD0018 */   addiu     $sp, $sp, 0x18
