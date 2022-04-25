	.set noat
	.set noreorder

glabel func_8005D98C
/* 5E58C 8005D98C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5E590 8005D990 AFBF0024 */  sw         $ra, 0x24($sp)
/* 5E594 8005D994 AFB20020 */  sw         $s2, 0x20($sp)
/* 5E598 8005D998 AFB1001C */  sw         $s1, 0x1c($sp)
/* 5E59C 8005D99C AFB00018 */  sw         $s0, 0x18($sp)
/* 5E5A0 8005D9A0 3084FFFF */  andi       $a0, $a0, 0xffff
/* 5E5A4 8005D9A4 00042100 */  sll        $a0, $a0, 4
/* 5E5A8 8005D9A8 3C02800F */  lui        $v0, %hi(D_800ED618)
/* 5E5AC 8005D9AC 2442D618 */  addiu      $v0, $v0, %lo(D_800ED618)
/* 5E5B0 8005D9B0 00828821 */  addu       $s1, $a0, $v0
/* 5E5B4 8005D9B4 8E24000C */  lw         $a0, 0xc($s1)
/* 5E5B8 8005D9B8 10800003 */  beqz       $a0, .L8005D9C8
/* 5E5BC 8005D9BC 00A09021 */   addu      $s2, $a1, $zero
/* 5E5C0 8005D9C0 0C008DCA */  jal        func_80023728
/* 5E5C4 8005D9C4 00000000 */   nop
.L8005D9C8:
/* 5E5C8 8005D9C8 8E240008 */  lw         $a0, 8($s1)
/* 5E5CC 8005D9CC 50800004 */  beql       $a0, $zero, .L8005D9E0
/* 5E5D0 8005D9D0 A6200000 */   sh        $zero, ($s1)
/* 5E5D4 8005D9D4 0C008DCA */  jal        func_80023728
/* 5E5D8 8005D9D8 00000000 */   nop
/* 5E5DC 8005D9DC A6200000 */  sh         $zero, ($s1)
.L8005D9E0:
/* 5E5E0 8005D9E0 A6320002 */  sh         $s2, 2($s1)
/* 5E5E4 8005D9E4 A6200004 */  sh         $zero, 4($s1)
/* 5E5E8 8005D9E8 3250FFFF */  andi       $s0, $s2, 0xffff
/* 5E5EC 8005D9EC 00102080 */  sll        $a0, $s0, 2
/* 5E5F0 8005D9F0 0C008DA1 */  jal        func_80023684
/* 5E5F4 8005D9F4 24057918 */   addiu     $a1, $zero, 0x7918
/* 5E5F8 8005D9F8 AE22000C */  sw         $v0, 0xc($s1)
/* 5E5FC 8005D9FC 00102040 */  sll        $a0, $s0, 1
/* 5E600 8005DA00 0C008DA1 */  jal        func_80023684
/* 5E604 8005DA04 24057918 */   addiu     $a1, $zero, 0x7918
/* 5E608 8005DA08 AE220008 */  sw         $v0, 8($s1)
/* 5E60C 8005DA0C 1200000F */  beqz       $s0, .L8005DA4C
/* 5E610 8005DA10 00002021 */   addu      $a0, $zero, $zero
/* 5E614 8005DA14 3245FFFF */  andi       $a1, $s2, 0xffff
.L8005DA18:
/* 5E618 8005DA18 8E23000C */  lw         $v1, 0xc($s1)
/* 5E61C 8005DA1C 00041080 */  sll        $v0, $a0, 2
/* 5E620 8005DA20 00431021 */  addu       $v0, $v0, $v1
/* 5E624 8005DA24 AC400000 */  sw         $zero, ($v0)
/* 5E628 8005DA28 8E230008 */  lw         $v1, 8($s1)
/* 5E62C 8005DA2C 00041040 */  sll        $v0, $a0, 1
/* 5E630 8005DA30 00431021 */  addu       $v0, $v0, $v1
/* 5E634 8005DA34 24830001 */  addiu      $v1, $a0, 1
/* 5E638 8005DA38 A4430000 */  sh         $v1, ($v0)
/* 5E63C 8005DA3C 00602021 */  addu       $a0, $v1, $zero
/* 5E640 8005DA40 0085102A */  slt        $v0, $a0, $a1
/* 5E644 8005DA44 1440FFF4 */  bnez       $v0, .L8005DA18
/* 5E648 8005DA48 00000000 */   nop
.L8005DA4C:
/* 5E64C 8005DA4C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 5E650 8005DA50 8FB20020 */  lw         $s2, 0x20($sp)
/* 5E654 8005DA54 8FB1001C */  lw         $s1, 0x1c($sp)
/* 5E658 8005DA58 8FB00018 */  lw         $s0, 0x18($sp)
/* 5E65C 8005DA5C 03E00008 */  jr         $ra
/* 5E660 8005DA60 27BD0028 */   addiu     $sp, $sp, 0x28
