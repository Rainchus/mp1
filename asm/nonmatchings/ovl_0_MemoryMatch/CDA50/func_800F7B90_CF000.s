	.set noat
	.set noreorder

glabel func_800F7B90_CF000
/* CF000 800F7B90 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CF004 800F7B94 AFBF0010 */  sw         $ra, 0x10($sp)
/* CF008 800F7B98 0C02C336 */  jal        func_800B0CD8
/* CF00C 800F7B9C 00000000 */   nop
/* CF010 800F7BA0 46000106 */  mov.s      $f4, $f0
/* CF014 800F7BA4 46002021 */  cvt.d.s    $f0, $f4
/* CF018 800F7BA8 3C018010 */  lui        $at, %hi(D_800FDA58)
/* CF01C 800F7BAC D422DA58 */  ldc1       $f2, %lo(D_800FDA58)($at)
/* CF020 800F7BB0 4620103C */  c.lt.d     $f2, $f0
/* CF024 800F7BB4 00000000 */  nop
/* CF028 800F7BB8 00000000 */  nop
/* CF02C 800F7BBC 45020003 */  bc1fl      .L800F7BCC
/* CF030 800F7BC0 460020A1 */   cvt.d.s   $f2, $f4
/* CF034 800F7BC4 0803DEFD */  j          .L800F7BF4
/* CF038 800F7BC8 46220001 */   sub.d     $f0, $f0, $f2
.L800F7BCC:
/* CF03C 800F7BCC 44800000 */  mtc1       $zero, $f0
/* CF040 800F7BD0 44800800 */  mtc1       $zero, $f1
/* CF044 800F7BD4 00000000 */  nop
/* CF048 800F7BD8 4620103C */  c.lt.d     $f2, $f0
/* CF04C 800F7BDC 00000000 */  nop
/* CF050 800F7BE0 45000005 */  bc1f       .L800F7BF8
/* CF054 800F7BE4 00000000 */   nop
/* CF058 800F7BE8 3C018010 */  lui        $at, %hi(D_800FDA60)
/* CF05C 800F7BEC D420DA60 */  ldc1       $f0, %lo(D_800FDA60)($at)
/* CF060 800F7BF0 46201000 */  add.d      $f0, $f2, $f0
.L800F7BF4:
/* CF064 800F7BF4 46200120 */  cvt.s.d    $f4, $f0
.L800F7BF8:
/* CF068 800F7BF8 8FBF0010 */  lw         $ra, 0x10($sp)
/* CF06C 800F7BFC 46002006 */  mov.s      $f0, $f4
/* CF070 800F7C00 03E00008 */  jr         $ra
/* CF074 800F7C04 27BD0018 */   addiu     $sp, $sp, 0x18
