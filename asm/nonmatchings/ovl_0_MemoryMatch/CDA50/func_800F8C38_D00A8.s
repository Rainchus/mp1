	.set noat
	.set noreorder

glabel func_800F8C38_D00A8
/* D00A8 800F8C38 3C038010 */  lui        $v1, %hi(D_800FDE50)
/* D00AC 800F8C3C 2463DE50 */  addiu      $v1, $v1, %lo(D_800FDE50)
/* D00B0 800F8C40 00002021 */  addu       $a0, $zero, $zero
/* D00B4 800F8C44 44800000 */  mtc1       $zero, $f0
.L800F8C48:
/* D00B8 800F8C48 A4600000 */  sh         $zero, ($v1)
/* D00BC 800F8C4C A4600002 */  sh         $zero, 2($v1)
/* D00C0 800F8C50 AC600004 */  sw         $zero, 4($v1)
/* D00C4 800F8C54 AC600008 */  sw         $zero, 8($v1)
/* D00C8 800F8C58 E4600014 */  swc1       $f0, 0x14($v1)
/* D00CC 800F8C5C E4600010 */  swc1       $f0, 0x10($v1)
/* D00D0 800F8C60 E460000C */  swc1       $f0, 0xc($v1)
/* D00D4 800F8C64 24840001 */  addiu      $a0, $a0, 1
/* D00D8 800F8C68 3082FFFF */  andi       $v0, $a0, 0xffff
/* D00DC 800F8C6C 2C420008 */  sltiu      $v0, $v0, 8
/* D00E0 800F8C70 1440FFF5 */  bnez       $v0, .L800F8C48
/* D00E4 800F8C74 24630018 */   addiu     $v1, $v1, 0x18
/* D00E8 800F8C78 03E00008 */  jr         $ra
/* D00EC 800F8C7C 00000000 */   nop
