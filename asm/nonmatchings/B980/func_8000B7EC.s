	.set noat
	.set noreorder

glabel func_8000B7EC
/* C3EC 8000B7EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C3F0 8000B7F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* C3F4 8000B7F4 AFB00010 */  sw         $s0, 0x10($sp)
/* C3F8 8000B7F8 30820001 */  andi       $v0, $a0, 1
/* C3FC 8000B7FC 00448021 */  addu       $s0, $v0, $a0
/* C400 8000B800 0C002BE8 */  jal        func_8000AFA0
/* C404 8000B804 02002021 */   addu      $a0, $s0, $zero
/* C408 8000B808 3C01800D */  lui        $at, %hi(D_800CDAE0)
/* C40C 8000B80C AC22DAE0 */  sw         $v0, %lo(D_800CDAE0)($at)
/* C410 8000B810 10400007 */  beqz       $v0, .L8000B830
/* C414 8000B814 00402821 */   addu      $a1, $v0, $zero
/* C418 8000B818 3C04800C */  lui        $a0, %hi(D_800C1874)
/* C41C 8000B81C 8C841874 */  lw         $a0, %lo(D_800C1874)($a0)
/* C420 8000B820 0C002B60 */  jal        func_8000AD80
/* C424 8000B824 02003021 */   addu      $a2, $s0, $zero
/* C428 8000B828 08002E0D */  j          .L8000B834
/* C42C 8000B82C 00001021 */   addu      $v0, $zero, $zero
.L8000B830:
/* C430 8000B830 24020001 */  addiu      $v0, $zero, 1
.L8000B834:
/* C434 8000B834 8FBF0014 */  lw         $ra, 0x14($sp)
/* C438 8000B838 8FB00010 */  lw         $s0, 0x10($sp)
/* C43C 8000B83C 03E00008 */  jr         $ra
/* C440 8000B840 27BD0018 */   addiu     $sp, $sp, 0x18
