	.set noat
	.set noreorder

glabel func_8006DB3C
/* 6E73C 8006DB3C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 6E740 8006DB40 AFBF002C */  sw         $ra, 0x2c($sp)
/* 6E744 8006DB44 AFB60028 */  sw         $s6, 0x28($sp)
/* 6E748 8006DB48 AFB50024 */  sw         $s5, 0x24($sp)
/* 6E74C 8006DB4C AFB40020 */  sw         $s4, 0x20($sp)
/* 6E750 8006DB50 AFB3001C */  sw         $s3, 0x1c($sp)
/* 6E754 8006DB54 AFB20018 */  sw         $s2, 0x18($sp)
/* 6E758 8006DB58 AFB10014 */  sw         $s1, 0x14($sp)
/* 6E75C 8006DB5C AFB00010 */  sw         $s0, 0x10($sp)
/* 6E760 8006DB60 00C0A821 */  addu       $s5, $a2, $zero
/* 6E764 8006DB64 00E0B021 */  addu       $s6, $a3, $zero
/* 6E768 8006DB68 97B40042 */  lhu        $s4, 0x42($sp)
/* 6E76C 8006DB6C 00042400 */  sll        $a0, $a0, 0x10
/* 6E770 8006DB70 00042403 */  sra        $a0, $a0, 0x10
/* 6E774 8006DB74 00041080 */  sll        $v0, $a0, 2
/* 6E778 8006DB78 00441021 */  addu       $v0, $v0, $a0
/* 6E77C 8006DB7C 00021140 */  sll        $v0, $v0, 5
/* 6E780 8006DB80 00441023 */  subu       $v0, $v0, $a0
/* 6E784 8006DB84 00021080 */  sll        $v0, $v0, 2
/* 6E788 8006DB88 3C03800F */  lui        $v1, %hi(D_800ED4B0)
/* 6E78C 8006DB8C 8C63D4B0 */  lw         $v1, %lo(D_800ED4B0)($v1)
/* 6E790 8006DB90 00439821 */  addu       $s3, $v0, $v1
/* 6E794 8006DB94 2403000C */  addiu      $v1, $zero, 0xc
/* 6E798 8006DB98 2404FFFF */  addiu      $a0, $zero, -1
/* 6E79C 8006DB9C 00031400 */  sll        $v0, $v1, 0x10
.L8006DBA0:
/* 6E7A0 8006DBA0 000213C3 */  sra        $v0, $v0, 0xf
/* 6E7A4 8006DBA4 00531021 */  addu       $v0, $v0, $s3
/* 6E7A8 8006DBA8 84420046 */  lh         $v0, 0x46($v0)
/* 6E7AC 8006DBAC 10440007 */  beq        $v0, $a0, .L8006DBCC
/* 6E7B0 8006DBB0 24620001 */   addiu     $v0, $v1, 1
/* 6E7B4 8006DBB4 00401821 */  addu       $v1, $v0, $zero
/* 6E7B8 8006DBB8 00021400 */  sll        $v0, $v0, 0x10
/* 6E7BC 8006DBBC 00021403 */  sra        $v0, $v0, 0x10
/* 6E7C0 8006DBC0 28420014 */  slti       $v0, $v0, 0x14
/* 6E7C4 8006DBC4 1440FFF6 */  bnez       $v0, .L8006DBA0
/* 6E7C8 8006DBC8 00031400 */   sll       $v0, $v1, 0x10
.L8006DBCC:
/* 6E7CC 8006DBCC 00031400 */  sll        $v0, $v1, 0x10
/* 6E7D0 8006DBD0 00029403 */  sra        $s2, $v0, 0x10
/* 6E7D4 8006DBD4 24020014 */  addiu      $v0, $zero, 0x14
/* 6E7D8 8006DBD8 5242001E */  beql       $s2, $v0, .L8006DC54
/* 6E7DC 8006DBDC 2402FFFF */   addiu     $v0, $zero, -1
/* 6E7E0 8006DBE0 0C00516C */  jal        func_800145B0
/* 6E7E4 8006DBE4 00A02021 */   addu      $a0, $a1, $zero
/* 6E7E8 8006DBE8 00408821 */  addu       $s1, $v0, $zero
/* 6E7EC 8006DBEC 0C019E29 */  jal        func_800678A4
/* 6E7F0 8006DBF0 02202021 */   addu      $a0, $s1, $zero
/* 6E7F4 8006DBF4 00408021 */  addu       $s0, $v0, $zero
/* 6E7F8 8006DBF8 00121040 */  sll        $v0, $s2, 1
/* 6E7FC 8006DBFC 00531021 */  addu       $v0, $v0, $s3
/* 6E800 8006DC00 A4500046 */  sh         $s0, 0x46($v0)
/* 6E804 8006DC04 0C00EDB2 */  jal        func_8003B6C8
/* 6E808 8006DC08 02202021 */   addu      $a0, $s1, $zero
/* 6E80C 8006DC0C 00108400 */  sll        $s0, $s0, 0x10
/* 6E810 8006DC10 86640044 */  lh         $a0, 0x44($s3)
/* 6E814 8006DC14 02402821 */  addu       $a1, $s2, $zero
/* 6E818 8006DC18 00103403 */  sra        $a2, $s0, 0x10
/* 6E81C 8006DC1C 0C019C82 */  jal        func_80067208
/* 6E820 8006DC20 3287FFFF */   andi      $a3, $s4, 0xffff
/* 6E824 8006DC24 00153400 */  sll        $a2, $s5, 0x10
/* 6E828 8006DC28 00163C00 */  sll        $a3, $s6, 0x10
/* 6E82C 8006DC2C 86640044 */  lh         $a0, 0x44($s3)
/* 6E830 8006DC30 02402821 */  addu       $a1, $s2, $zero
/* 6E834 8006DC34 00063403 */  sra        $a2, $a2, 0x10
/* 6E838 8006DC38 0C019B71 */  jal        func_80066DC4
/* 6E83C 8006DC3C 00073C03 */   sra       $a3, $a3, 0x10
/* 6E840 8006DC40 86640044 */  lh         $a0, 0x44($s3)
/* 6E844 8006DC44 02402821 */  addu       $a1, $s2, $zero
/* 6E848 8006DC48 0C019D66 */  jal        func_80067598
/* 6E84C 8006DC4C 00003021 */   addu      $a2, $zero, $zero
/* 6E850 8006DC50 02401021 */  addu       $v0, $s2, $zero
.L8006DC54:
/* 6E854 8006DC54 8FBF002C */  lw         $ra, 0x2c($sp)
/* 6E858 8006DC58 8FB60028 */  lw         $s6, 0x28($sp)
/* 6E85C 8006DC5C 8FB50024 */  lw         $s5, 0x24($sp)
/* 6E860 8006DC60 8FB40020 */  lw         $s4, 0x20($sp)
/* 6E864 8006DC64 8FB3001C */  lw         $s3, 0x1c($sp)
/* 6E868 8006DC68 8FB20018 */  lw         $s2, 0x18($sp)
/* 6E86C 8006DC6C 8FB10014 */  lw         $s1, 0x14($sp)
/* 6E870 8006DC70 8FB00010 */  lw         $s0, 0x10($sp)
/* 6E874 8006DC74 03E00008 */  jr         $ra
/* 6E878 8006DC78 27BD0030 */   addiu     $sp, $sp, 0x30
