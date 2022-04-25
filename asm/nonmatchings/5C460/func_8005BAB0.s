	.set noat
	.set noreorder

glabel func_8005BAB0
/* 5C6B0 8005BAB0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5C6B4 8005BAB4 AFBF0028 */  sw         $ra, 0x28($sp)
/* 5C6B8 8005BAB8 AFB30024 */  sw         $s3, 0x24($sp)
/* 5C6BC 8005BABC AFB20020 */  sw         $s2, 0x20($sp)
/* 5C6C0 8005BAC0 AFB1001C */  sw         $s1, 0x1c($sp)
/* 5C6C4 8005BAC4 AFB00018 */  sw         $s0, 0x18($sp)
/* 5C6C8 8005BAC8 00809821 */  addu       $s3, $a0, $zero
/* 5C6CC 8005BACC 3C12800E */  lui        $s2, %hi(D_800D8920)
/* 5C6D0 8005BAD0 96528920 */  lhu        $s2, %lo(D_800D8920)($s2)
/* 5C6D4 8005BAD4 0C0180AB */  jal        func_800602AC
/* 5C6D8 8005BAD8 24040036 */   addiu     $a0, $zero, 0x36
/* 5C6DC 8005BADC AFA00010 */  sw         $zero, 0x10($sp)
/* 5C6E0 8005BAE0 AFA00014 */  sw         $zero, 0x14($sp)
/* 5C6E4 8005BAE4 24040048 */  addiu      $a0, $zero, 0x48
/* 5C6E8 8005BAE8 24050096 */  addiu      $a1, $zero, 0x96
/* 5C6EC 8005BAEC 240600AD */  addiu      $a2, $zero, 0xad
/* 5C6F0 8005BAF0 0C01B404 */  jal        func_8006D010
/* 5C6F4 8005BAF4 24070030 */   addiu     $a3, $zero, 0x30
/* 5C6F8 8005BAF8 00408821 */  addu       $s1, $v0, $zero
/* 5C6FC 8005BAFC 00111400 */  sll        $v0, $s1, 0x10
/* 5C700 8005BB00 00028403 */  sra        $s0, $v0, 0x10
/* 5C704 8005BB04 02002021 */  addu       $a0, $s0, $zero
/* 5C708 8005BB08 0C01B829 */  jal        func_8006E0A4
/* 5C70C 8005BB0C 24050005 */   addiu     $a1, $zero, 5
/* 5C710 8005BB10 02002021 */  addu       $a0, $s0, $zero
/* 5C714 8005BB14 0C01B855 */  jal        func_8006E154
/* 5C718 8005BB18 240500DC */   addiu     $a1, $zero, 0xdc
/* 5C71C 8005BB1C 0C01C5F0 */  jal        func_800717C0
/* 5C720 8005BB20 02002021 */   addu      $a0, $s0, $zero
/* 5C724 8005BB24 5660002C */  bnel       $s3, $zero, .L8005BBD8
/* 5C728 8005BB28 00112400 */   sll       $a0, $s1, 0x10
/* 5C72C 8005BB2C 00121400 */  sll        $v0, $s2, 0x10
/* 5C730 8005BB30 00021403 */  sra        $v0, $v0, 0x10
/* 5C734 8005BB34 2403FFFE */  addiu      $v1, $zero, -2
/* 5C738 8005BB38 5443000B */  bnel       $v0, $v1, .L8005BB68
/* 5C73C 8005BB3C 00122400 */   sll       $a0, $s2, 0x10
/* 5C740 8005BB40 3C02800F */  lui        $v0, %hi(D_800ED154)
/* 5C744 8005BB44 8442D154 */  lh         $v0, %lo(D_800ED154)($v0)
/* 5C748 8005BB48 50400004 */  beql       $v0, $zero, .L8005BB5C
/* 5C74C 8005BB4C 00112400 */   sll       $a0, $s1, 0x10
/* 5C750 8005BB50 02002021 */  addu       $a0, $s0, $zero
/* 5C754 8005BB54 08016EF8 */  j          .L8005BBE0
/* 5C758 8005BB58 240504AD */   addiu     $a1, $zero, 0x4ad
.L8005BB5C:
/* 5C75C 8005BB5C 00042403 */  sra        $a0, $a0, 0x10
/* 5C760 8005BB60 08016EF8 */  j          .L8005BBE0
/* 5C764 8005BB64 240504AC */   addiu     $a1, $zero, 0x4ac
.L8005BB68:
/* 5C768 8005BB68 00042403 */  sra        $a0, $a0, 0x10
/* 5C76C 8005BB6C 0C017392 */  jal        func_8005CE48
/* 5C770 8005BB70 24840007 */   addiu     $a0, $a0, 7
/* 5C774 8005BB74 10400004 */  beqz       $v0, .L8005BB88
/* 5C778 8005BB78 240504AA */   addiu     $a1, $zero, 0x4aa
/* 5C77C 8005BB7C 00112400 */  sll        $a0, $s1, 0x10
/* 5C780 8005BB80 08016EE5 */  j          .L8005BB94
/* 5C784 8005BB84 00042403 */   sra       $a0, $a0, 0x10
.L8005BB88:
/* 5C788 8005BB88 00112400 */  sll        $a0, $s1, 0x10
/* 5C78C 8005BB8C 00042403 */  sra        $a0, $a0, 0x10
/* 5C790 8005BB90 240504AB */  addiu      $a1, $zero, 0x4ab
.L8005BB94:
/* 5C794 8005BB94 2406FFFF */  addiu      $a2, $zero, -1
/* 5C798 8005BB98 0C01B5F6 */  jal        func_8006D7D8
/* 5C79C 8005BB9C 2407FFFF */   addiu     $a3, $zero, -1
/* 5C7A0 8005BBA0 00112400 */  sll        $a0, $s1, 0x10
/* 5C7A4 8005BBA4 00121C00 */  sll        $v1, $s2, 0x10
/* 5C7A8 8005BBA8 00031C03 */  sra        $v1, $v1, 0x10
/* 5C7AC 8005BBAC 00031040 */  sll        $v0, $v1, 1
/* 5C7B0 8005BBB0 00431021 */  addu       $v0, $v0, $v1
/* 5C7B4 8005BBB4 3C05800C */  lui        $a1, %hi(D_800C5820)
/* 5C7B8 8005BBB8 00A22821 */  addu       $a1, $a1, $v0
/* 5C7BC 8005BBBC 80A55820 */  lb         $a1, %lo(D_800C5820)($a1)
/* 5C7C0 8005BBC0 00042403 */  sra        $a0, $a0, 0x10
/* 5C7C4 8005BBC4 24A50325 */  addiu      $a1, $a1, 0x325
/* 5C7C8 8005BBC8 0C01C637 */  jal        func_800718DC
/* 5C7CC 8005BBCC 00003021 */   addu      $a2, $zero, $zero
/* 5C7D0 8005BBD0 08016EFC */  j          .L8005BBF0
/* 5C7D4 8005BBD4 00118400 */   sll       $s0, $s1, 0x10
.L8005BBD8:
/* 5C7D8 8005BBD8 00042403 */  sra        $a0, $a0, 0x10
/* 5C7DC 8005BBDC 02602821 */  addu       $a1, $s3, $zero
.L8005BBE0:
/* 5C7E0 8005BBE0 2406FFFF */  addiu      $a2, $zero, -1
/* 5C7E4 8005BBE4 0C01B5F6 */  jal        func_8006D7D8
/* 5C7E8 8005BBE8 2407FFFF */   addiu     $a3, $zero, -1
/* 5C7EC 8005BBEC 00118400 */  sll        $s0, $s1, 0x10
.L8005BBF0:
/* 5C7F0 8005BBF0 00108403 */  sra        $s0, $s0, 0x10
/* 5C7F4 8005BBF4 02002021 */  addu       $a0, $s0, $zero
/* 5C7F8 8005BBF8 0C01B81C */  jal        func_8006E070
/* 5C7FC 8005BBFC 00002821 */   addu      $a1, $zero, $zero
/* 5C800 8005BC00 0C0180AB */  jal        func_800602AC
/* 5C804 8005BC04 24040037 */   addiu     $a0, $zero, 0x37
/* 5C808 8005BC08 02001021 */  addu       $v0, $s0, $zero
/* 5C80C 8005BC0C 8FBF0028 */  lw         $ra, 0x28($sp)
/* 5C810 8005BC10 8FB30024 */  lw         $s3, 0x24($sp)
/* 5C814 8005BC14 8FB20020 */  lw         $s2, 0x20($sp)
/* 5C818 8005BC18 8FB1001C */  lw         $s1, 0x1c($sp)
/* 5C81C 8005BC1C 8FB00018 */  lw         $s0, 0x18($sp)
/* 5C820 8005BC20 03E00008 */  jr         $ra
/* 5C824 8005BC24 27BD0030 */   addiu     $sp, $sp, 0x30
