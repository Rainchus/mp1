	.set noat
	.set noreorder

glabel func_8001D494
/* 1E094 8001D494 00042400 */  sll        $a0, $a0, 0x10
/* 1E098 8001D498 00042403 */  sra        $a0, $a0, 0x10
/* 1E09C 8001D49C 00041080 */  sll        $v0, $a0, 2
/* 1E0A0 8001D4A0 00441021 */  addu       $v0, $v0, $a0
/* 1E0A4 8001D4A4 00021140 */  sll        $v0, $v0, 5
/* 1E0A8 8001D4A8 00441023 */  subu       $v0, $v0, $a0
/* 1E0AC 8001D4AC 000210C0 */  sll        $v0, $v0, 3
/* 1E0B0 8001D4B0 3C03800C */  lui        $v1, %hi(D_800C3110)
/* 1E0B4 8001D4B4 8C633110 */  lw         $v1, %lo(D_800C3110)($v1)
/* 1E0B8 8001D4B8 00431021 */  addu       $v0, $v0, $v1
/* 1E0BC 8001D4BC AC450040 */  sw         $a1, 0x40($v0)
/* 1E0C0 8001D4C0 AC460044 */  sw         $a2, 0x44($v0)
/* 1E0C4 8001D4C4 AC470048 */  sw         $a3, 0x48($v0)
/* 1E0C8 8001D4C8 24030001 */  addiu      $v1, $zero, 1
/* 1E0CC 8001D4CC 03E00008 */  jr         $ra
/* 1E0D0 8001D4D0 A443004C */   sh        $v1, 0x4c($v0)
