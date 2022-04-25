	.set noat
	.set noreorder

glabel func_8004D930
/* 4E530 8004D930 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 4E534 8004D934 AFBF0020 */  sw         $ra, 0x20($sp)
/* 4E538 8004D938 AFB1001C */  sw         $s1, 0x1c($sp)
/* 4E53C 8004D93C AFB00018 */  sw         $s0, 0x18($sp)
/* 4E540 8004D940 00042400 */  sll        $a0, $a0, 0x10
/* 4E544 8004D944 00052C00 */  sll        $a1, $a1, 0x10
/* 4E548 8004D948 00061840 */  sll        $v1, $a2, 1
/* 4E54C 8004D94C 00661821 */  addu       $v1, $v1, $a2
/* 4E550 8004D950 00031880 */  sll        $v1, $v1, 2
/* 4E554 8004D954 00661823 */  subu       $v1, $v1, $a2
/* 4E558 8004D958 24630008 */  addiu      $v1, $v1, 8
/* 4E55C 8004D95C 00031C00 */  sll        $v1, $v1, 0x10
/* 4E560 8004D960 000710C0 */  sll        $v0, $a3, 3
/* 4E564 8004D964 00471023 */  subu       $v0, $v0, $a3
/* 4E568 8004D968 00021040 */  sll        $v0, $v0, 1
/* 4E56C 8004D96C 24420006 */  addiu      $v0, $v0, 6
/* 4E570 8004D970 00021400 */  sll        $v0, $v0, 0x10
/* 4E574 8004D974 AFA00010 */  sw         $zero, 0x10($sp)
/* 4E578 8004D978 AFA00014 */  sw         $zero, 0x14($sp)
/* 4E57C 8004D97C 00042403 */  sra        $a0, $a0, 0x10
/* 4E580 8004D980 00052C03 */  sra        $a1, $a1, 0x10
/* 4E584 8004D984 00033403 */  sra        $a2, $v1, 0x10
/* 4E588 8004D988 0C01B404 */  jal        func_8006D010
/* 4E58C 8004D98C 00023C03 */   sra       $a3, $v0, 0x10
/* 4E590 8004D990 00028400 */  sll        $s0, $v0, 0x10
/* 4E594 8004D994 00108403 */  sra        $s0, $s0, 0x10
/* 4E598 8004D998 02008821 */  addu       $s1, $s0, $zero
/* 4E59C 8004D99C 02202021 */  addu       $a0, $s1, $zero
/* 4E5A0 8004D9A0 0C01B855 */  jal        func_8006E154
/* 4E5A4 8004D9A4 240500C8 */   addiu     $a1, $zero, 0xc8
/* 4E5A8 8004D9A8 0C01C5F0 */  jal        func_800717C0
/* 4E5AC 8004D9AC 02002021 */   addu      $a0, $s0, $zero
/* 4E5B0 8004D9B0 02202021 */  addu       $a0, $s1, $zero
/* 4E5B4 8004D9B4 24050040 */  addiu      $a1, $zero, 0x40
/* 4E5B8 8004D9B8 0C01B687 */  jal        func_8006DA1C
/* 4E5BC 8004D9BC 24060040 */   addiu     $a2, $zero, 0x40
/* 4E5C0 8004D9C0 02001021 */  addu       $v0, $s0, $zero
/* 4E5C4 8004D9C4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 4E5C8 8004D9C8 8FB1001C */  lw         $s1, 0x1c($sp)
/* 4E5CC 8004D9CC 8FB00018 */  lw         $s0, 0x18($sp)
/* 4E5D0 8004D9D0 03E00008 */  jr         $ra
/* 4E5D4 8004D9D4 27BD0028 */   addiu     $sp, $sp, 0x28
