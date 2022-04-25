	.set noat
	.set noreorder

glabel func_8005AA88
/* 5B688 8005AA88 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5B68C 8005AA8C AFBF0028 */  sw         $ra, 0x28($sp)
/* 5B690 8005AA90 AFB30024 */  sw         $s3, 0x24($sp)
/* 5B694 8005AA94 AFB20020 */  sw         $s2, 0x20($sp)
/* 5B698 8005AA98 AFB1001C */  sw         $s1, 0x1c($sp)
/* 5B69C 8005AA9C AFB00018 */  sw         $s0, 0x18($sp)
/* 5B6A0 8005AAA0 0C01672E */  jal        func_80059CB8
/* 5B6A4 8005AAA4 00809821 */   addu      $s3, $a0, $zero
/* 5B6A8 8005AAA8 00408021 */  addu       $s0, $v0, $zero
/* 5B6AC 8005AAAC 32020100 */  andi       $v0, $s0, 0x100
/* 5B6B0 8005AAB0 1040000C */  beqz       $v0, .L8005AAE4
/* 5B6B4 8005AAB4 32020200 */   andi      $v0, $s0, 0x200
/* 5B6B8 8005AAB8 3C02800E */  lui        $v0, %hi(D_800D872C)
/* 5B6BC 8005AABC 8C42872C */  lw         $v0, %lo(D_800D872C)($v0)
/* 5B6C0 8005AAC0 14400008 */  bnez       $v0, .L8005AAE4
/* 5B6C4 8005AAC4 32020200 */   andi      $v0, $s0, 0x200
/* 5B6C8 8005AAC8 24020010 */  addiu      $v0, $zero, 0x10
/* 5B6CC 8005AACC 3C01800E */  lui        $at, %hi(D_800D8730)
/* 5B6D0 8005AAD0 AC228730 */  sw         $v0, %lo(D_800D8730)($at)
/* 5B6D4 8005AAD4 24020014 */  addiu      $v0, $zero, 0x14
/* 5B6D8 8005AAD8 3C01800E */  lui        $at, %hi(D_800D872C)
/* 5B6DC 8005AADC AC22872C */  sw         $v0, %lo(D_800D872C)($at)
/* 5B6E0 8005AAE0 32020200 */  andi       $v0, $s0, 0x200
.L8005AAE4:
/* 5B6E4 8005AAE4 1040000B */  beqz       $v0, .L8005AB14
/* 5B6E8 8005AAE8 00008821 */   addu      $s1, $zero, $zero
/* 5B6EC 8005AAEC 3C02800E */  lui        $v0, %hi(D_800D872C)
/* 5B6F0 8005AAF0 8C42872C */  lw         $v0, %lo(D_800D872C)($v0)
/* 5B6F4 8005AAF4 14400007 */  bnez       $v0, .L8005AB14
/* 5B6F8 8005AAF8 24020010 */   addiu     $v0, $zero, 0x10
/* 5B6FC 8005AAFC 3C01800E */  lui        $at, %hi(D_800D8730)
/* 5B700 8005AB00 AC228730 */  sw         $v0, %lo(D_800D8730)($at)
/* 5B704 8005AB04 2402FFEC */  addiu      $v0, $zero, -0x14
/* 5B708 8005AB08 3C01800E */  lui        $at, %hi(D_800D872C)
/* 5B70C 8005AB0C AC22872C */  sw         $v0, %lo(D_800D872C)($at)
/* 5B710 8005AB10 00008821 */  addu       $s1, $zero, $zero
.L8005AB14:
/* 5B714 8005AB14 3C12800E */  lui        $s2, %hi(D_800D8722)
/* 5B718 8005AB18 26528722 */  addiu      $s2, $s2, %lo(D_800D8722)
/* 5B71C 8005AB1C 00111040 */  sll        $v0, $s1, 1
.L8005AB20:
/* 5B720 8005AB20 00521021 */  addu       $v0, $v0, $s2
/* 5B724 8005AB24 0C01B758 */  jal        func_8006DD60
/* 5B728 8005AB28 84440000 */   lh        $a0, ($v0)
/* 5B72C 8005AB2C 00403821 */  addu       $a3, $v0, $zero
/* 5B730 8005AB30 94E40044 */  lhu        $a0, 0x44($a3)
/* 5B734 8005AB34 94E30014 */  lhu        $v1, 0x14($a3)
/* 5B738 8005AB38 3C02800E */  lui        $v0, %hi(D_800D872E)
/* 5B73C 8005AB3C 9442872E */  lhu        $v0, %lo(D_800D872E)($v0)
/* 5B740 8005AB40 00621821 */  addu       $v1, $v1, $v0
/* 5B744 8005AB44 00031400 */  sll        $v0, $v1, 0x10
/* 5B748 8005AB48 00021403 */  sra        $v0, $v0, 0x10
/* 5B74C 8005AB4C 28420141 */  slti       $v0, $v0, 0x141
/* 5B750 8005AB50 14400003 */  bnez       $v0, .L8005AB60
/* 5B754 8005AB54 A4E30014 */   sh        $v1, 0x14($a3)
/* 5B758 8005AB58 2462FD80 */  addiu      $v0, $v1, -0x280
/* 5B75C 8005AB5C A4E20014 */  sh         $v0, 0x14($a3)
.L8005AB60:
/* 5B760 8005AB60 84E20014 */  lh         $v0, 0x14($a3)
/* 5B764 8005AB64 00401821 */  addu       $v1, $v0, $zero
/* 5B768 8005AB68 2842FEC1 */  slti       $v0, $v0, -0x13f
/* 5B76C 8005AB6C 10400002 */  beqz       $v0, .L8005AB78
/* 5B770 8005AB70 24620280 */   addiu     $v0, $v1, 0x280
/* 5B774 8005AB74 A4E20014 */  sh         $v0, 0x14($a3)
.L8005AB78:
/* 5B778 8005AB78 00042400 */  sll        $a0, $a0, 0x10
/* 5B77C 8005AB7C 00042403 */  sra        $a0, $a0, 0x10
/* 5B780 8005AB80 84E60014 */  lh         $a2, 0x14($a3)
/* 5B784 8005AB84 84E70016 */  lh         $a3, 0x16($a3)
/* 5B788 8005AB88 0C019B71 */  jal        func_80066DC4
/* 5B78C 8005AB8C 00002821 */   addu      $a1, $zero, $zero
/* 5B790 8005AB90 26310001 */  addiu      $s1, $s1, 1
/* 5B794 8005AB94 2A220004 */  slti       $v0, $s1, 4
/* 5B798 8005AB98 1440FFE1 */  bnez       $v0, .L8005AB20
/* 5B79C 8005AB9C 00111040 */   sll       $v0, $s1, 1
/* 5B7A0 8005ABA0 3C02800E */  lui        $v0, %hi(D_800D872C)
/* 5B7A4 8005ABA4 8C42872C */  lw         $v0, %lo(D_800D872C)($v0)
/* 5B7A8 8005ABA8 1040000A */  beqz       $v0, .L8005ABD4
/* 5B7AC 8005ABAC 32021000 */   andi      $v0, $s0, 0x1000
/* 5B7B0 8005ABB0 3C02800E */  lui        $v0, %hi(D_800D8730)
/* 5B7B4 8005ABB4 8C428730 */  lw         $v0, %lo(D_800D8730)($v0)
/* 5B7B8 8005ABB8 2442FFFF */  addiu      $v0, $v0, -1
/* 5B7BC 8005ABBC 3C01800E */  lui        $at, %hi(D_800D8730)
/* 5B7C0 8005ABC0 AC228730 */  sw         $v0, %lo(D_800D8730)($at)
/* 5B7C4 8005ABC4 14400003 */  bnez       $v0, .L8005ABD4
/* 5B7C8 8005ABC8 32021000 */   andi      $v0, $s0, 0x1000
/* 5B7CC 8005ABCC 3C01800E */  lui        $at, %hi(D_800D872C)
/* 5B7D0 8005ABD0 AC20872C */  sw         $zero, %lo(D_800D872C)($at)
.L8005ABD4:
/* 5B7D4 8005ABD4 10400017 */  beqz       $v0, .L8005AC34
/* 5B7D8 8005ABD8 2404007F */   addiu     $a0, $zero, 0x7f
/* 5B7DC 8005ABDC 0C016D92 */  jal        func_8005B648
/* 5B7E0 8005ABE0 24050012 */   addiu     $a1, $zero, 0x12
/* 5B7E4 8005ABE4 0C017FB3 */  jal        func_8005FECC
/* 5B7E8 8005ABE8 00008821 */   addu      $s1, $zero, $zero
/* 5B7EC 8005ABEC 3C12800E */  lui        $s2, %hi(D_800D8722)
/* 5B7F0 8005ABF0 26528722 */  addiu      $s2, $s2, %lo(D_800D8722)
/* 5B7F4 8005ABF4 00118040 */  sll        $s0, $s1, 1
.L8005ABF8:
/* 5B7F8 8005ABF8 02128021 */  addu       $s0, $s0, $s2
/* 5B7FC 8005ABFC 86040000 */  lh         $a0, ($s0)
/* 5B800 8005AC00 0C016A76 */  jal        func_8005A9D8
/* 5B804 8005AC04 26310001 */   addiu     $s1, $s1, 1
/* 5B808 8005AC08 86040000 */  lh         $a0, ($s0)
/* 5B80C 8005AC0C 0C01C364 */  jal        func_80070D90
/* 5B810 8005AC10 00000000 */   nop
/* 5B814 8005AC14 2A220004 */  slti       $v0, $s1, 4
/* 5B818 8005AC18 1440FFF7 */  bnez       $v0, .L8005ABF8
/* 5B81C 8005AC1C 00118040 */   sll       $s0, $s1, 1
/* 5B820 8005AC20 24020005 */  addiu      $v0, $zero, 5
/* 5B824 8005AC24 A262004C */  sb         $v0, 0x4c($s3)
/* 5B828 8005AC28 3C028006 */  lui        $v0, %hi(func_8005AA5C)
/* 5B82C 8005AC2C 2442AA5C */  addiu      $v0, $v0, %lo(func_8005AA5C)
/* 5B830 8005AC30 AE620014 */  sw         $v0, 0x14($s3)
.L8005AC34:
/* 5B834 8005AC34 8FBF0028 */  lw         $ra, 0x28($sp)
/* 5B838 8005AC38 8FB30024 */  lw         $s3, 0x24($sp)
/* 5B83C 8005AC3C 8FB20020 */  lw         $s2, 0x20($sp)
/* 5B840 8005AC40 8FB1001C */  lw         $s1, 0x1c($sp)
/* 5B844 8005AC44 8FB00018 */  lw         $s0, 0x18($sp)
/* 5B848 8005AC48 03E00008 */  jr         $ra
/* 5B84C 8005AC4C 27BD0030 */   addiu     $sp, $sp, 0x30
