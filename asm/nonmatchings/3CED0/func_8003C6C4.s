	.set noat
	.set noreorder

glabel func_8003C6C4
/* 3D2C4 8003C6C4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 3D2C8 8003C6C8 AFBF0030 */  sw         $ra, 0x30($sp)
/* 3D2CC 8003C6CC AFB5002C */  sw         $s5, 0x2c($sp)
/* 3D2D0 8003C6D0 AFB40028 */  sw         $s4, 0x28($sp)
/* 3D2D4 8003C6D4 AFB30024 */  sw         $s3, 0x24($sp)
/* 3D2D8 8003C6D8 AFB20020 */  sw         $s2, 0x20($sp)
/* 3D2DC 8003C6DC AFB1001C */  sw         $s1, 0x1c($sp)
/* 3D2E0 8003C6E0 AFB00018 */  sw         $s0, 0x18($sp)
/* 3D2E4 8003C6E4 00009021 */  addu       $s2, $zero, $zero
/* 3D2E8 8003C6E8 241400FF */  addiu      $s4, $zero, 0xff
/* 3D2EC 8003C6EC 24130080 */  addiu      $s3, $zero, 0x80
/* 3D2F0 8003C6F0 3C15800D */  lui        $s5, %hi(D_800D61A8)
/* 3D2F4 8003C6F4 26B561A8 */  addiu      $s5, $s5, %lo(D_800D61A8)
/* 3D2F8 8003C6F8 24040002 */  addiu      $a0, $zero, 2
.L8003C6FC:
/* 3D2FC 8003C6FC 0C014CFE */  jal        func_800533F8
/* 3D300 8003C700 00002821 */   addu      $a1, $zero, $zero
/* 3D304 8003C704 00408021 */  addu       $s0, $v0, $zero
/* 3D308 8003C708 3C04000A */  lui        $a0, 0xa
/* 3D30C 8003C70C 0C00516C */  jal        func_800145B0
/* 3D310 8003C710 3484010B */   ori       $a0, $a0, 0x10b
/* 3D314 8003C714 00408821 */  addu       $s1, $v0, $zero
/* 3D318 8003C718 0C019E29 */  jal        func_800678A4
/* 3D31C 8003C71C 02202021 */   addu      $a0, $s1, $zero
/* 3D320 8003C720 8E03000C */  lw         $v1, 0xc($s0)
/* 3D324 8003C724 A4620000 */  sh         $v0, ($v1)
/* 3D328 8003C728 8E02000C */  lw         $v0, 0xc($s0)
/* 3D32C 8003C72C 8604000A */  lh         $a0, 0xa($s0)
/* 3D330 8003C730 00002821 */  addu       $a1, $zero, $zero
/* 3D334 8003C734 84460000 */  lh         $a2, ($v0)
/* 3D338 8003C738 0C019C82 */  jal        func_80067208
/* 3D33C 8003C73C 00003821 */   addu      $a3, $zero, $zero
/* 3D340 8003C740 8604000A */  lh         $a0, 0xa($s0)
/* 3D344 8003C744 00002821 */  addu       $a1, $zero, $zero
/* 3D348 8003C748 3C060100 */  lui        $a2, 0x100
/* 3D34C 8003C74C 0C019D2F */  jal        func_800674BC
/* 3D350 8003C750 34C61808 */   ori       $a2, $a2, 0x1808
/* 3D354 8003C754 8604000A */  lh         $a0, 0xa($s0)
/* 3D358 8003C758 00002821 */  addu       $a1, $zero, $zero
/* 3D35C 8003C75C 0C019CE1 */  jal        func_80067384
/* 3D360 8003C760 24060002 */   addiu     $a2, $zero, 2
/* 3D364 8003C764 8604000A */  lh         $a0, 0xa($s0)
/* 3D368 8003C768 AFB40010 */  sw         $s4, 0x10($sp)
/* 3D36C 8003C76C AFB30014 */  sw         $s3, 0x14($sp)
/* 3D370 8003C770 00002821 */  addu       $a1, $zero, $zero
/* 3D374 8003C774 00003021 */  addu       $a2, $zero, $zero
/* 3D378 8003C778 0C019D56 */  jal        func_80067558
/* 3D37C 8003C77C 00003821 */   addu      $a3, $zero, $zero
/* 3D380 8003C780 0C0051CC */  jal        func_80014730
/* 3D384 8003C784 02202021 */   addu      $a0, $s1, $zero
/* 3D388 8003C788 3C04000A */  lui        $a0, 0xa
/* 3D38C 8003C78C 0C00516C */  jal        func_800145B0
/* 3D390 8003C790 34840020 */   ori       $a0, $a0, 0x20
/* 3D394 8003C794 00408821 */  addu       $s1, $v0, $zero
/* 3D398 8003C798 0C019E29 */  jal        func_800678A4
/* 3D39C 8003C79C 02202021 */   addu      $a0, $s1, $zero
/* 3D3A0 8003C7A0 8E03000C */  lw         $v1, 0xc($s0)
/* 3D3A4 8003C7A4 A4620002 */  sh         $v0, 2($v1)
/* 3D3A8 8003C7A8 8E02000C */  lw         $v0, 0xc($s0)
/* 3D3AC 8003C7AC 8604000A */  lh         $a0, 0xa($s0)
/* 3D3B0 8003C7B0 24050001 */  addiu      $a1, $zero, 1
/* 3D3B4 8003C7B4 84460002 */  lh         $a2, 2($v0)
/* 3D3B8 8003C7B8 0C019C82 */  jal        func_80067208
/* 3D3BC 8003C7BC 00003821 */   addu      $a3, $zero, $zero
/* 3D3C0 8003C7C0 8604000A */  lh         $a0, 0xa($s0)
/* 3D3C4 8003C7C4 24050001 */  addiu      $a1, $zero, 1
/* 3D3C8 8003C7C8 3C060100 */  lui        $a2, 0x100
/* 3D3CC 8003C7CC 0C019D2F */  jal        func_800674BC
/* 3D3D0 8003C7D0 34C61808 */   ori       $a2, $a2, 0x1808
/* 3D3D4 8003C7D4 8604000A */  lh         $a0, 0xa($s0)
/* 3D3D8 8003C7D8 24050001 */  addiu      $a1, $zero, 1
/* 3D3DC 8003C7DC 0C019CE1 */  jal        func_80067384
/* 3D3E0 8003C7E0 24060002 */   addiu     $a2, $zero, 2
/* 3D3E4 8003C7E4 8604000A */  lh         $a0, 0xa($s0)
/* 3D3E8 8003C7E8 AFB40010 */  sw         $s4, 0x10($sp)
/* 3D3EC 8003C7EC AFB30014 */  sw         $s3, 0x14($sp)
/* 3D3F0 8003C7F0 24050001 */  addiu      $a1, $zero, 1
/* 3D3F4 8003C7F4 00003021 */  addu       $a2, $zero, $zero
/* 3D3F8 8003C7F8 0C019D56 */  jal        func_80067558
/* 3D3FC 8003C7FC 00003821 */   addu      $a3, $zero, $zero
/* 3D400 8003C800 0C0051CC */  jal        func_80014730
/* 3D404 8003C804 02202021 */   addu      $a0, $s1, $zero
/* 3D408 8003C808 00122C00 */  sll        $a1, $s2, 0x10
/* 3D40C 8003C80C 02002021 */  addu       $a0, $s0, $zero
/* 3D410 8003C810 0C00F165 */  jal        func_8003C594
/* 3D414 8003C814 00052C03 */   sra       $a1, $a1, 0x10
/* 3D418 8003C818 00121080 */  sll        $v0, $s2, 2
/* 3D41C 8003C81C 00551021 */  addu       $v0, $v0, $s5
/* 3D420 8003C820 AC500000 */  sw         $s0, ($v0)
/* 3D424 8003C824 26520001 */  addiu      $s2, $s2, 1
/* 3D428 8003C828 2A420004 */  slti       $v0, $s2, 4
/* 3D42C 8003C82C 1440FFB3 */  bnez       $v0, .L8003C6FC
/* 3D430 8003C830 24040002 */   addiu     $a0, $zero, 2
/* 3D434 8003C834 8FBF0030 */  lw         $ra, 0x30($sp)
/* 3D438 8003C838 8FB5002C */  lw         $s5, 0x2c($sp)
/* 3D43C 8003C83C 8FB40028 */  lw         $s4, 0x28($sp)
/* 3D440 8003C840 8FB30024 */  lw         $s3, 0x24($sp)
/* 3D444 8003C844 8FB20020 */  lw         $s2, 0x20($sp)
/* 3D448 8003C848 8FB1001C */  lw         $s1, 0x1c($sp)
/* 3D44C 8003C84C 8FB00018 */  lw         $s0, 0x18($sp)
/* 3D450 8003C850 03E00008 */  jr         $ra
/* 3D454 8003C854 27BD0038 */   addiu     $sp, $sp, 0x38
