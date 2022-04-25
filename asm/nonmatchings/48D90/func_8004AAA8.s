	.set noat
	.set noreorder

glabel func_8004AAA8
/* 4B6A8 8004AAA8 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 4B6AC 8004AAAC AFBF0074 */  sw         $ra, 0x74($sp)
/* 4B6B0 8004AAB0 AFBE0070 */  sw         $fp, 0x70($sp)
/* 4B6B4 8004AAB4 AFB7006C */  sw         $s7, 0x6c($sp)
/* 4B6B8 8004AAB8 AFB60068 */  sw         $s6, 0x68($sp)
/* 4B6BC 8004AABC AFB50064 */  sw         $s5, 0x64($sp)
/* 4B6C0 8004AAC0 AFB40060 */  sw         $s4, 0x60($sp)
/* 4B6C4 8004AAC4 AFB3005C */  sw         $s3, 0x5c($sp)
/* 4B6C8 8004AAC8 AFB20058 */  sw         $s2, 0x58($sp)
/* 4B6CC 8004AACC AFB10054 */  sw         $s1, 0x54($sp)
/* 4B6D0 8004AAD0 AFB00050 */  sw         $s0, 0x50($sp)
/* 4B6D4 8004AAD4 00809021 */  addu       $s2, $a0, $zero
/* 4B6D8 8004AAD8 AFA5004C */  sw         $a1, 0x4c($sp)
/* 4B6DC 8004AADC 00E09821 */  addu       $s3, $a3, $zero
/* 4B6E0 8004AAE0 00008821 */  addu       $s1, $zero, $zero
/* 4B6E4 8004AAE4 24160040 */  addiu      $s6, $zero, 0x40
/* 4B6E8 8004AAE8 24150018 */  addiu      $s5, $zero, 0x18
/* 4B6EC 8004AAEC 24C20040 */  addiu      $v0, $a2, 0x40
/* 4B6F0 8004AAF0 00021880 */  sll        $v1, $v0, 2
/* 4B6F4 8004AAF4 00021480 */  sll        $v0, $v0, 0x12
/* 4B6F8 8004AAF8 00021403 */  sra        $v0, $v0, 0x10
/* 4B6FC 8004AAFC 00021027 */  nor        $v0, $zero, $v0
/* 4B700 8004AB00 000217C3 */  sra        $v0, $v0, 0x1f
/* 4B704 8004AB04 00621824 */  and        $v1, $v1, $v0
/* 4B708 8004AB08 30630FFF */  andi       $v1, $v1, 0xfff
/* 4B70C 8004AB0C 0003F300 */  sll        $fp, $v1, 0xc
/* 4B710 8004AB10 0006B880 */  sll        $s7, $a2, 2
/* 4B714 8004AB14 00063480 */  sll        $a2, $a2, 0x12
/* 4B718 8004AB18 0006A403 */  sra        $s4, $a2, 0x10
/* 4B71C 8004AB1C 00118040 */  sll        $s0, $s1, 1
.L8004AB20:
/* 4B720 8004AB20 02118021 */  addu       $s0, $s0, $s1
/* 4B724 8004AB24 00102A80 */  sll        $a1, $s0, 0xa
/* 4B728 8004AB28 AFB60010 */  sw         $s6, 0x10($sp)
/* 4B72C 8004AB2C AFB50014 */  sw         $s5, 0x14($sp)
/* 4B730 8004AB30 AFA00018 */  sw         $zero, 0x18($sp)
/* 4B734 8004AB34 AFA0001C */  sw         $zero, 0x1c($sp)
/* 4B738 8004AB38 AFB60020 */  sw         $s6, 0x20($sp)
/* 4B73C 8004AB3C AFB50024 */  sw         $s5, 0x24($sp)
/* 4B740 8004AB40 AFA00028 */  sw         $zero, 0x28($sp)
/* 4B744 8004AB44 24020002 */  addiu      $v0, $zero, 2
/* 4B748 8004AB48 AFA2002C */  sw         $v0, 0x2c($sp)
/* 4B74C 8004AB4C AFA20030 */  sw         $v0, 0x30($sp)
/* 4B750 8004AB50 AFA00034 */  sw         $zero, 0x34($sp)
/* 4B754 8004AB54 AFA00038 */  sw         $zero, 0x38($sp)
/* 4B758 8004AB58 AFA0003C */  sw         $zero, 0x3c($sp)
/* 4B75C 8004AB5C AFA00040 */  sw         $zero, 0x40($sp)
/* 4B760 8004AB60 02402021 */  addu       $a0, $s2, $zero
/* 4B764 8004AB64 8FA8004C */  lw         $t0, 0x4c($sp)
/* 4B768 8004AB68 01052821 */  addu       $a1, $t0, $a1
/* 4B76C 8004AB6C 00003021 */  addu       $a2, $zero, $zero
/* 4B770 8004AB70 0C00E93B */  jal        func_8003A4EC
/* 4B774 8004AB74 24070002 */   addiu     $a3, $zero, 2
/* 4B778 8004AB78 8E440000 */  lw         $a0, ($s2)
/* 4B77C 8004AB7C 24820008 */  addiu      $v0, $a0, 8
/* 4B780 8004AB80 AE420000 */  sw         $v0, ($s2)
/* 4B784 8004AB84 26230001 */  addiu      $v1, $s1, 1
/* 4B788 8004AB88 00031040 */  sll        $v0, $v1, 1
/* 4B78C 8004AB8C 00431021 */  addu       $v0, $v0, $v1
/* 4B790 8004AB90 000210C0 */  sll        $v0, $v0, 3
/* 4B794 8004AB94 02621021 */  addu       $v0, $s3, $v0
/* 4B798 8004AB98 00021880 */  sll        $v1, $v0, 2
/* 4B79C 8004AB9C 00021480 */  sll        $v0, $v0, 0x12
/* 4B7A0 8004ABA0 00021403 */  sra        $v0, $v0, 0x10
/* 4B7A4 8004ABA4 00021027 */  nor        $v0, $zero, $v0
/* 4B7A8 8004ABA8 000217C3 */  sra        $v0, $v0, 0x1f
/* 4B7AC 8004ABAC 00621824 */  and        $v1, $v1, $v0
/* 4B7B0 8004ABB0 30630FFF */  andi       $v1, $v1, 0xfff
/* 4B7B4 8004ABB4 3C02E400 */  lui        $v0, 0xe400
/* 4B7B8 8004ABB8 00621825 */  or         $v1, $v1, $v0
/* 4B7BC 8004ABBC 03C31825 */  or         $v1, $fp, $v1
/* 4B7C0 8004ABC0 AC830000 */  sw         $v1, ($a0)
/* 4B7C4 8004ABC4 00141027 */  nor        $v0, $zero, $s4
/* 4B7C8 8004ABC8 000217C3 */  sra        $v0, $v0, 0x1f
/* 4B7CC 8004ABCC 02E21024 */  and        $v0, $s7, $v0
/* 4B7D0 8004ABD0 30420FFF */  andi       $v0, $v0, 0xfff
/* 4B7D4 8004ABD4 00021300 */  sll        $v0, $v0, 0xc
/* 4B7D8 8004ABD8 001080C0 */  sll        $s0, $s0, 3
/* 4B7DC 8004ABDC 02708021 */  addu       $s0, $s3, $s0
/* 4B7E0 8004ABE0 00101880 */  sll        $v1, $s0, 2
/* 4B7E4 8004ABE4 00108480 */  sll        $s0, $s0, 0x12
/* 4B7E8 8004ABE8 00108403 */  sra        $s0, $s0, 0x10
/* 4B7EC 8004ABEC 00108027 */  nor        $s0, $zero, $s0
/* 4B7F0 8004ABF0 001087C3 */  sra        $s0, $s0, 0x1f
/* 4B7F4 8004ABF4 00701824 */  and        $v1, $v1, $s0
/* 4B7F8 8004ABF8 30630FFF */  andi       $v1, $v1, 0xfff
/* 4B7FC 8004ABFC 00431025 */  or         $v0, $v0, $v1
/* 4B800 8004AC00 AC820004 */  sw         $v0, 4($a0)
/* 4B804 8004AC04 8E430000 */  lw         $v1, ($s2)
/* 4B808 8004AC08 24620008 */  addiu      $v0, $v1, 8
/* 4B80C 8004AC0C AE420000 */  sw         $v0, ($s2)
/* 4B810 8004AC10 00602821 */  addu       $a1, $v1, $zero
/* 4B814 8004AC14 3C02E100 */  lui        $v0, 0xe100
/* 4B818 8004AC18 06810008 */  bgez       $s4, .L8004AC3C
/* 4B81C 8004AC1C ACA20000 */   sw        $v0, ($a1)
/* 4B820 8004AC20 001420C0 */  sll        $a0, $s4, 3
/* 4B824 8004AC24 28820001 */  slti       $v0, $a0, 1
/* 4B828 8004AC28 00021023 */  negu       $v0, $v0
/* 4B82C 8004AC2C 00442024 */  and        $a0, $v0, $a0
/* 4B830 8004AC30 00042023 */  negu       $a0, $a0
/* 4B834 8004AC34 08012B10 */  j          .L8004AC40
/* 4B838 8004AC38 00042400 */   sll       $a0, $a0, 0x10
.L8004AC3C:
/* 4B83C 8004AC3C 00002021 */  addu       $a0, $zero, $zero
.L8004AC40:
/* 4B840 8004AC40 00131C00 */  sll        $v1, $s3, 0x10
/* 4B844 8004AC44 00031C03 */  sra        $v1, $v1, 0x10
/* 4B848 8004AC48 00111040 */  sll        $v0, $s1, 1
/* 4B84C 8004AC4C 00511021 */  addu       $v0, $v0, $s1
/* 4B850 8004AC50 000210C0 */  sll        $v0, $v0, 3
/* 4B854 8004AC54 00621821 */  addu       $v1, $v1, $v0
/* 4B858 8004AC58 00031880 */  sll        $v1, $v1, 2
/* 4B85C 8004AC5C 0461000B */  bgez       $v1, .L8004AC8C
/* 4B860 8004AC60 ACA40004 */   sw        $a0, 4($a1)
/* 4B864 8004AC64 02621821 */  addu       $v1, $s3, $v0
/* 4B868 8004AC68 00031C80 */  sll        $v1, $v1, 0x12
/* 4B86C 8004AC6C 00031B43 */  sra        $v1, $v1, 0xd
/* 4B870 8004AC70 28620001 */  slti       $v0, $v1, 1
/* 4B874 8004AC74 00021023 */  negu       $v0, $v0
/* 4B878 8004AC78 00431024 */  and        $v0, $v0, $v1
/* 4B87C 8004AC7C 00021023 */  negu       $v0, $v0
/* 4B880 8004AC80 3042FFFF */  andi       $v0, $v0, 0xffff
/* 4B884 8004AC84 00441025 */  or         $v0, $v0, $a0
/* 4B888 8004AC88 ACA20004 */  sw         $v0, 4($a1)
.L8004AC8C:
/* 4B88C 8004AC8C 8E430000 */  lw         $v1, ($s2)
/* 4B890 8004AC90 24620008 */  addiu      $v0, $v1, 8
/* 4B894 8004AC94 AE420000 */  sw         $v0, ($s2)
/* 4B898 8004AC98 3C02F100 */  lui        $v0, 0xf100
/* 4B89C 8004AC9C AC620000 */  sw         $v0, ($v1)
/* 4B8A0 8004ACA0 3C020400 */  lui        $v0, 0x400
/* 4B8A4 8004ACA4 34420400 */  ori        $v0, $v0, 0x400
/* 4B8A8 8004ACA8 AC620004 */  sw         $v0, 4($v1)
/* 4B8AC 8004ACAC 26310001 */  addiu      $s1, $s1, 1
/* 4B8B0 8004ACB0 2A220002 */  slti       $v0, $s1, 2
/* 4B8B4 8004ACB4 1440FF9A */  bnez       $v0, .L8004AB20
/* 4B8B8 8004ACB8 00118040 */   sll       $s0, $s1, 1
/* 4B8BC 8004ACBC 8FBF0074 */  lw         $ra, 0x74($sp)
/* 4B8C0 8004ACC0 8FBE0070 */  lw         $fp, 0x70($sp)
/* 4B8C4 8004ACC4 8FB7006C */  lw         $s7, 0x6c($sp)
/* 4B8C8 8004ACC8 8FB60068 */  lw         $s6, 0x68($sp)
/* 4B8CC 8004ACCC 8FB50064 */  lw         $s5, 0x64($sp)
/* 4B8D0 8004ACD0 8FB40060 */  lw         $s4, 0x60($sp)
/* 4B8D4 8004ACD4 8FB3005C */  lw         $s3, 0x5c($sp)
/* 4B8D8 8004ACD8 8FB20058 */  lw         $s2, 0x58($sp)
/* 4B8DC 8004ACDC 8FB10054 */  lw         $s1, 0x54($sp)
/* 4B8E0 8004ACE0 8FB00050 */  lw         $s0, 0x50($sp)
/* 4B8E4 8004ACE4 03E00008 */  jr         $ra
/* 4B8E8 8004ACE8 27BD0078 */   addiu     $sp, $sp, 0x78
