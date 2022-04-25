	.set noat
	.set noreorder

glabel func_80059B74
/* 5A774 80059B74 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5A778 80059B78 AFBF0024 */  sw         $ra, 0x24($sp)
/* 5A77C 80059B7C AFB20020 */  sw         $s2, 0x20($sp)
/* 5A780 80059B80 AFB1001C */  sw         $s1, 0x1c($sp)
/* 5A784 80059B84 AFB00018 */  sw         $s0, 0x18($sp)
/* 5A788 80059B88 00042400 */  sll        $a0, $a0, 0x10
/* 5A78C 80059B8C 0C016512 */  jal        func_80059448
/* 5A790 80059B90 00042403 */   sra       $a0, $a0, 0x10
/* 5A794 80059B94 00009021 */  addu       $s2, $zero, $zero
/* 5A798 80059B98 001210C0 */  sll        $v0, $s2, 3
.L80059B9C:
/* 5A79C 80059B9C 00401821 */  addu       $v1, $v0, $zero
/* 5A7A0 80059BA0 3C01800C */  lui        $at, %hi(D_800C5734)
/* 5A7A4 80059BA4 00220821 */  addu       $at, $at, $v0
/* 5A7A8 80059BA8 90225734 */  lbu        $v0, %lo(D_800C5734)($at)
/* 5A7AC 80059BAC 18400012 */  blez       $v0, .L80059BF8
/* 5A7B0 80059BB0 00008021 */   addu      $s0, $zero, $zero
.L80059BB4:
/* 5A7B4 80059BB4 00608821 */  addu       $s1, $v1, $zero
/* 5A7B8 80059BB8 3C02800C */  lui        $v0, %hi(D_800C5730)
/* 5A7BC 80059BBC 00511021 */  addu       $v0, $v0, $s1
/* 5A7C0 80059BC0 8C425730 */  lw         $v0, %lo(D_800C5730)($v0)
/* 5A7C4 80059BC4 00501021 */  addu       $v0, $v0, $s0
/* 5A7C8 80059BC8 90440000 */  lbu        $a0, ($v0)
/* 5A7CC 80059BCC 0C016527 */  jal        func_8005949C
/* 5A7D0 80059BD0 2484FFFF */   addiu     $a0, $a0, -1
/* 5A7D4 80059BD4 00021400 */  sll        $v0, $v0, 0x10
/* 5A7D8 80059BD8 1040000D */  beqz       $v0, .L80059C10
/* 5A7DC 80059BDC 26100001 */   addiu     $s0, $s0, 1
/* 5A7E0 80059BE0 3C02800C */  lui        $v0, %hi(D_800C5734)
/* 5A7E4 80059BE4 00511021 */  addu       $v0, $v0, $s1
/* 5A7E8 80059BE8 90425734 */  lbu        $v0, %lo(D_800C5734)($v0)
/* 5A7EC 80059BEC 0202102A */  slt        $v0, $s0, $v0
/* 5A7F0 80059BF0 1440FFF0 */  bnez       $v0, .L80059BB4
/* 5A7F4 80059BF4 02201821 */   addu      $v1, $s1, $zero
.L80059BF8:
/* 5A7F8 80059BF8 26520001 */  addiu      $s2, $s2, 1
/* 5A7FC 80059BFC 2A420004 */  slti       $v0, $s2, 4
/* 5A800 80059C00 1440FFE6 */  bnez       $v0, .L80059B9C
/* 5A804 80059C04 001210C0 */   sll       $v0, $s2, 3
/* 5A808 80059C08 0C0165F7 */  jal        func_800597DC
/* 5A80C 80059C0C 24040026 */   addiu     $a0, $zero, 0x26
.L80059C10:
/* 5A810 80059C10 8FBF0024 */  lw         $ra, 0x24($sp)
/* 5A814 80059C14 8FB20020 */  lw         $s2, 0x20($sp)
/* 5A818 80059C18 8FB1001C */  lw         $s1, 0x1c($sp)
/* 5A81C 80059C1C 8FB00018 */  lw         $s0, 0x18($sp)
/* 5A820 80059C20 03E00008 */  jr         $ra
/* 5A824 80059C24 27BD0028 */   addiu     $sp, $sp, 0x28
