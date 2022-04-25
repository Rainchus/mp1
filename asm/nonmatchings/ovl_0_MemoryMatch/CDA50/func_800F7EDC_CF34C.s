	.set noat
	.set noreorder

glabel func_800F7EDC_CF34C
/* CF34C 800F7EDC 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* CF350 800F7EE0 AFBF0044 */  sw         $ra, 0x44($sp)
/* CF354 800F7EE4 AFB40040 */  sw         $s4, 0x40($sp)
/* CF358 800F7EE8 AFB3003C */  sw         $s3, 0x3c($sp)
/* CF35C 800F7EEC AFB20038 */  sw         $s2, 0x38($sp)
/* CF360 800F7EF0 AFB10034 */  sw         $s1, 0x34($sp)
/* CF364 800F7EF4 AFB00030 */  sw         $s0, 0x30($sp)
/* CF368 800F7EF8 F7B40048 */  sdc1       $f20, 0x48($sp)
/* CF36C 800F7EFC 3C058010 */  lui        $a1, %hi(D_800FDA78)
/* CF370 800F7F00 24A5DA78 */  addiu      $a1, $a1, %lo(D_800FDA78)
/* CF374 800F7F04 8CA20000 */  lw         $v0, ($a1)
/* CF378 800F7F08 8CA30004 */  lw         $v1, 4($a1)
/* CF37C 800F7F0C 8CA40008 */  lw         $a0, 8($a1)
/* CF380 800F7F10 AFA20018 */  sw         $v0, 0x18($sp)
/* CF384 800F7F14 AFA3001C */  sw         $v1, 0x1c($sp)
/* CF388 800F7F18 AFA40020 */  sw         $a0, 0x20($sp)
/* CF38C 800F7F1C AFA00028 */  sw         $zero, 0x28($sp)
/* CF390 800F7F20 AFA0002C */  sw         $zero, 0x2c($sp)
/* CF394 800F7F24 3C04800F */  lui        $a0, %hi(D_800ED440)
/* CF398 800F7F28 9484D440 */  lhu        $a0, %lo(D_800ED440)($a0)
/* CF39C 800F7F2C 0C00242E */  jal        func_800090B8
/* CF3A0 800F7F30 27B00018 */   addiu     $s0, $sp, 0x18
/* CF3A4 800F7F34 3C028010 */  lui        $v0, %hi(func_800FB0A8_D2518)
/* CF3A8 800F7F38 2442B0A8 */  addiu      $v0, $v0, %lo(func_800FB0A8_D2518)
/* CF3AC 800F7F3C AFA20010 */  sw         $v0, 0x10($sp)
/* CF3B0 800F7F40 00002021 */  addu       $a0, $zero, $zero
/* CF3B4 800F7F44 24050001 */  addiu      $a1, $zero, 1
/* CF3B8 800F7F48 00003021 */  addu       $a2, $zero, $zero
/* CF3BC 800F7F4C 0C0174E1 */  jal        func_8005D384
/* CF3C0 800F7F50 2407FFFF */   addiu     $a3, $zero, -1
/* CF3C4 800F7F54 3C03800F */  lui        $v1, %hi(D_800ED440)
/* CF3C8 800F7F58 9463D440 */  lhu        $v1, %lo(D_800ED440)($v1)
/* CF3CC 800F7F5C 24640001 */  addiu      $a0, $v1, 1
/* CF3D0 800F7F60 3C01800F */  lui        $at, %hi(D_800ED440)
/* CF3D4 800F7F64 A424D440 */  sh         $a0, %lo(D_800ED440)($at)
/* CF3D8 800F7F68 00031880 */  sll        $v1, $v1, 2
/* CF3DC 800F7F6C 3C01800F */  lui        $at, %hi(D_800F2AF8)
/* CF3E0 800F7F70 00230821 */  addu       $at, $at, $v1
/* CF3E4 800F7F74 AC222AF8 */  sw         $v0, %lo(D_800F2AF8)($at)
/* CF3E8 800F7F78 3C028010 */  lui        $v0, %hi(func_800F8130_CF5A0)
/* CF3EC 800F7F7C 24428130 */  addiu      $v0, $v0, %lo(func_800F8130_CF5A0)
/* CF3F0 800F7F80 AFA20010 */  sw         $v0, 0x10($sp)
/* CF3F4 800F7F84 24040001 */  addiu      $a0, $zero, 1
/* CF3F8 800F7F88 24050003 */  addiu      $a1, $zero, 3
/* CF3FC 800F7F8C 00003021 */  addu       $a2, $zero, $zero
/* CF400 800F7F90 0C0174E1 */  jal        func_8005D384
/* CF404 800F7F94 2407FFFF */   addiu     $a3, $zero, -1
/* CF408 800F7F98 3C018010 */  lui        $at, %hi(D_800FDDE0)
/* CF40C 800F7F9C AC22DDE0 */  sw         $v0, %lo(D_800FDDE0)($at)
/* CF410 800F7FA0 00408821 */  addu       $s1, $v0, $zero
/* CF414 800F7FA4 3C040012 */  lui        $a0, 0x12
/* CF418 800F7FA8 0C005D4A */  jal        func_80017528
/* CF41C 800F7FAC 24050099 */   addiu     $a1, $zero, 0x99
/* CF420 800F7FB0 8E230040 */  lw         $v1, 0x40($s1)
/* CF424 800F7FB4 A4620000 */  sh         $v0, ($v1)
/* CF428 800F7FB8 3C040012 */  lui        $a0, 0x12
/* CF42C 800F7FBC 3484000A */  ori        $a0, $a0, 0xa
/* CF430 800F7FC0 0C005D4A */  jal        func_80017528
/* CF434 800F7FC4 240500B9 */   addiu     $a1, $zero, 0xb9
/* CF438 800F7FC8 8E230040 */  lw         $v1, 0x40($s1)
/* CF43C 800F7FCC A4620002 */  sh         $v0, 2($v1)
/* CF440 800F7FD0 3C040012 */  lui        $a0, 0x12
/* CF444 800F7FD4 3484000B */  ori        $a0, $a0, 0xb
/* CF448 800F7FD8 0C005D4A */  jal        func_80017528
/* CF44C 800F7FDC 240500B9 */   addiu     $a1, $zero, 0xb9
/* CF450 800F7FE0 8E230040 */  lw         $v1, 0x40($s1)
/* CF454 800F7FE4 A4620004 */  sh         $v0, 4($v1)
/* CF458 800F7FE8 3C01C407 */  lui        $at, 0xc407
/* CF45C 800F7FEC 44810000 */  mtc1       $at, $f0
/* CF460 800F7FF0 00000000 */  nop
/* CF464 800F7FF4 E7A00018 */  swc1       $f0, 0x18($sp)
/* CF468 800F7FF8 AFA0001C */  sw         $zero, 0x1c($sp)
/* CF46C 800F7FFC 3C01C38C */  lui        $at, 0xc38c
/* CF470 800F8000 44810000 */  mtc1       $at, $f0
/* CF474 800F8004 00000000 */  nop
/* CF478 800F8008 E7A00020 */  swc1       $f0, 0x20($sp)
/* CF47C 800F800C 3C014320 */  lui        $at, 0x4320
/* CF480 800F8010 44810000 */  mtc1       $at, $f0
/* CF484 800F8014 00000000 */  nop
/* CF488 800F8018 E7A00028 */  swc1       $f0, 0x28($sp)
/* CF48C 800F801C 3C014348 */  lui        $at, 0x4348
/* CF490 800F8020 44810000 */  mtc1       $at, $f0
/* CF494 800F8024 00000000 */  nop
/* CF498 800F8028 E7A0002C */  swc1       $f0, 0x2c($sp)
/* CF49C 800F802C 02002021 */  addu       $a0, $s0, $zero
/* CF4A0 800F8030 0C03E361 */  jal        func_800F8D84_D01F4
/* CF4A4 800F8034 27A50028 */   addiu     $a1, $sp, 0x28
/* CF4A8 800F8038 00008021 */  addu       $s0, $zero, $zero
/* CF4AC 800F803C 3C148010 */  lui        $s4, %hi(func_800F87DC_CFC4C)
/* CF4B0 800F8040 269487DC */  addiu      $s4, $s4, %lo(func_800F87DC_CFC4C)
/* CF4B4 800F8044 3C138010 */  lui        $s3, %hi(D_800FE2E8)
/* CF4B8 800F8048 2673E2E8 */  addiu      $s3, $s3, %lo(D_800FE2E8)
/* CF4BC 800F804C 3C128010 */  lui        $s2, %hi(D_800FD85C)
/* CF4C0 800F8050 2652D85C */  addiu      $s2, $s2, %lo(D_800FD85C)
/* CF4C4 800F8054 3C013F80 */  lui        $at, 0x3f80
/* CF4C8 800F8058 4481A000 */  mtc1       $at, $f20
/* CF4CC 800F805C AFB40010 */  sw         $s4, 0x10($sp)
.L800F8060:
/* CF4D0 800F8060 00002021 */  addu       $a0, $zero, $zero
/* CF4D4 800F8064 24050001 */  addiu      $a1, $zero, 1
/* CF4D8 800F8068 00003021 */  addu       $a2, $zero, $zero
/* CF4DC 800F806C 0C0174E1 */  jal        func_8005D384
/* CF4E0 800F8070 2407FFFF */   addiu     $a3, $zero, -1
/* CF4E4 800F8074 3204FFFF */  andi       $a0, $s0, 0xffff
/* CF4E8 800F8078 00041880 */  sll        $v1, $a0, 2
/* CF4EC 800F807C 00731821 */  addu       $v1, $v1, $s3
/* CF4F0 800F8080 AC620000 */  sw         $v0, ($v1)
/* CF4F4 800F8084 00408821 */  addu       $s1, $v0, $zero
/* CF4F8 800F8088 A230004C */  sb         $s0, 0x4c($s1)
/* CF4FC 800F808C 00042040 */  sll        $a0, $a0, 1
/* CF500 800F8090 00922021 */  addu       $a0, $a0, $s2
/* CF504 800F8094 90820001 */  lbu        $v0, 1($a0)
/* CF508 800F8098 A222004D */  sb         $v0, 0x4d($s1)
/* CF50C 800F809C E6340038 */  swc1       $f20, 0x38($s1)
/* CF510 800F80A0 E6340034 */  swc1       $f20, 0x34($s1)
/* CF514 800F80A4 E6340030 */  swc1       $f20, 0x30($s1)
/* CF518 800F80A8 3C028010 */  lui        $v0, %hi(D_800FE30E)
/* CF51C 800F80AC 9442E30E */  lhu        $v0, %lo(D_800FE30E)($v0)
/* CF520 800F80B0 24420001 */  addiu      $v0, $v0, 1
/* CF524 800F80B4 3C018010 */  lui        $at, %hi(D_800FE30E)
/* CF528 800F80B8 A422E30E */  sh         $v0, %lo(D_800FE30E)($at)
/* CF52C 800F80BC 26100001 */  addiu      $s0, $s0, 1
/* CF530 800F80C0 3202FFFF */  andi       $v0, $s0, 0xffff
/* CF534 800F80C4 2C420009 */  sltiu      $v0, $v0, 9
/* CF538 800F80C8 5440FFE5 */  bnel       $v0, $zero, .L800F8060
/* CF53C 800F80CC AFB40010 */   sw        $s4, 0x10($sp)
/* CF540 800F80D0 3C018010 */  lui        $at, %hi(D_800FDE40)
/* CF544 800F80D4 A420DE40 */  sh         $zero, %lo(D_800FDE40)($at)
/* CF548 800F80D8 3C028010 */  lui        $v0, %hi(D_800FDE46)
/* CF54C 800F80DC 2442DE46 */  addiu      $v0, $v0, %lo(D_800FDE46)
/* CF550 800F80E0 2403FFFF */  addiu      $v1, $zero, -1
/* CF554 800F80E4 A4430000 */  sh         $v1, ($v0)
/* CF558 800F80E8 A4430002 */  sh         $v1, 2($v0)
/* CF55C 800F80EC 3C028010 */  lui        $v0, %hi(D_800FDE42)
/* CF560 800F80F0 2442DE42 */  addiu      $v0, $v0, %lo(D_800FDE42)
/* CF564 800F80F4 A4400000 */  sh         $zero, ($v0)
/* CF568 800F80F8 0C03E0C5 */  jal        func_800F8314_CF784
/* CF56C 800F80FC A4400002 */   sh        $zero, 2($v0)
/* CF570 800F8100 00002021 */  addu       $a0, $zero, $zero
/* CF574 800F8104 0C01C991 */  jal        func_80072644
/* CF578 800F8108 24050010 */   addiu     $a1, $zero, 0x10
/* CF57C 800F810C 8FBF0044 */  lw         $ra, 0x44($sp)
/* CF580 800F8110 8FB40040 */  lw         $s4, 0x40($sp)
/* CF584 800F8114 8FB3003C */  lw         $s3, 0x3c($sp)
/* CF588 800F8118 8FB20038 */  lw         $s2, 0x38($sp)
/* CF58C 800F811C 8FB10034 */  lw         $s1, 0x34($sp)
/* CF590 800F8120 8FB00030 */  lw         $s0, 0x30($sp)
/* CF594 800F8124 D7B40048 */  ldc1       $f20, 0x48($sp)
/* CF598 800F8128 03E00008 */  jr         $ra
/* CF59C 800F812C 27BD0050 */   addiu     $sp, $sp, 0x50
