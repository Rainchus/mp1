	.set noat
	.set noreorder

glabel func_8006DDC8
/* 6E9C8 8006DDC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6E9CC 8006DDCC AFBF0010 */  sw         $ra, 0x10($sp)
/* 6E9D0 8006DDD0 00042400 */  sll        $a0, $a0, 0x10
/* 6E9D4 8006DDD4 00042403 */  sra        $a0, $a0, 0x10
/* 6E9D8 8006DDD8 00041080 */  sll        $v0, $a0, 2
/* 6E9DC 8006DDDC 00441021 */  addu       $v0, $v0, $a0
/* 6E9E0 8006DDE0 00021140 */  sll        $v0, $v0, 5
/* 6E9E4 8006DDE4 00441023 */  subu       $v0, $v0, $a0
/* 6E9E8 8006DDE8 00021080 */  sll        $v0, $v0, 2
/* 6E9EC 8006DDEC 3C03800F */  lui        $v1, %hi(D_800ED4B0)
/* 6E9F0 8006DDF0 8C63D4B0 */  lw         $v1, %lo(D_800ED4B0)($v1)
/* 6E9F4 8006DDF4 00431021 */  addu       $v0, $v0, $v1
/* 6E9F8 8006DDF8 00051C00 */  sll        $v1, $a1, 0x10
/* 6E9FC 8006DDFC 00063C00 */  sll        $a3, $a2, 0x10
/* 6EA00 8006DE00 84440044 */  lh         $a0, 0x44($v0)
/* 6EA04 8006DE04 00002821 */  addu       $a1, $zero, $zero
/* 6EA08 8006DE08 00033403 */  sra        $a2, $v1, 0x10
/* 6EA0C 8006DE0C 0C019B71 */  jal        func_80066DC4
/* 6EA10 8006DE10 00073C03 */   sra       $a3, $a3, 0x10
/* 6EA14 8006DE14 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6EA18 8006DE18 03E00008 */  jr         $ra
/* 6EA1C 8006DE1C 27BD0018 */   addiu     $sp, $sp, 0x18
