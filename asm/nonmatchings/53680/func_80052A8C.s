	.set noat
	.set noreorder

glabel func_80052A8C
/* 5368C 80052A8C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 53690 80052A90 04810005 */  bgez       $a0, .L80052AA8
/* 53694 80052A94 AFBF0010 */   sw        $ra, 0x10($sp)
/* 53698 80052A98 0C014AA0 */  jal        func_80052A80
/* 5369C 80052A9C 00000000 */   nop
/* 536A0 80052AA0 00021400 */  sll        $v0, $v0, 0x10
/* 536A4 80052AA4 00022403 */  sra        $a0, $v0, 0x10
.L80052AA8:
/* 536A8 80052AA8 00041040 */  sll        $v0, $a0, 1
/* 536AC 80052AAC 00441021 */  addu       $v0, $v0, $a0
/* 536B0 80052AB0 00021100 */  sll        $v0, $v0, 4
/* 536B4 80052AB4 3C03800F */  lui        $v1, %hi(D_800F32B0)
/* 536B8 80052AB8 246332B0 */  addiu      $v1, $v1, %lo(D_800F32B0)
/* 536BC 80052ABC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 536C0 80052AC0 00431021 */  addu       $v0, $v0, $v1
/* 536C4 80052AC4 03E00008 */  jr         $ra
/* 536C8 80052AC8 27BD0018 */   addiu     $sp, $sp, 0x18
