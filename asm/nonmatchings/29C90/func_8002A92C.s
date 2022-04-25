	.set noat
	.set noreorder

glabel func_8002A92C
/* 2B52C 8002A92C 27BDFF20 */  addiu      $sp, $sp, -0xe0
/* 2B530 8002A930 AFBF00CC */  sw         $ra, 0xcc($sp)
/* 2B534 8002A934 AFBE00C8 */  sw         $fp, 0xc8($sp)
/* 2B538 8002A938 AFB700C4 */  sw         $s7, 0xc4($sp)
/* 2B53C 8002A93C AFB600C0 */  sw         $s6, 0xc0($sp)
/* 2B540 8002A940 AFB500BC */  sw         $s5, 0xbc($sp)
/* 2B544 8002A944 AFB400B8 */  sw         $s4, 0xb8($sp)
/* 2B548 8002A948 AFB300B4 */  sw         $s3, 0xb4($sp)
/* 2B54C 8002A94C AFB200B0 */  sw         $s2, 0xb0($sp)
/* 2B550 8002A950 AFB100AC */  sw         $s1, 0xac($sp)
/* 2B554 8002A954 AFB000A8 */  sw         $s0, 0xa8($sp)
/* 2B558 8002A958 F7B600D8 */  sdc1       $f22, 0xd8($sp)
/* 2B55C 8002A95C F7B400D0 */  sdc1       $f20, 0xd0($sp)
/* 2B560 8002A960 0080A821 */  addu       $s5, $a0, $zero
/* 2B564 8002A964 00A09021 */  addu       $s2, $a1, $zero
/* 2B568 8002A968 26A8000C */  addiu      $t0, $s5, 0xc
/* 2B56C 8002A96C AFA80094 */  sw         $t0, 0x94($sp)
/* 2B570 8002A970 96500004 */  lhu        $s0, 4($s2)
/* 2B574 8002A974 02402021 */  addu       $a0, $s2, $zero
/* 2B578 8002A978 0C00A6BB */  jal        func_80029AEC
/* 2B57C 8002A97C 27A50010 */   addiu     $a1, $sp, 0x10
/* 2B580 8002A980 0C021BEC */  jal        func_80086FB0
/* 2B584 8002A984 27A40050 */   addiu     $a0, $sp, 0x50
/* 2B588 8002A988 C6A20004 */  lwc1       $f2, 4($s5)
/* 2B58C 8002A98C C6A8000C */  lwc1       $f8, 0xc($s5)
/* 2B590 8002A990 46081181 */  sub.s      $f6, $f2, $f8
/* 2B594 8002A994 00101400 */  sll        $v0, $s0, 0x10
/* 2B598 8002A998 00021403 */  sra        $v0, $v0, 0x10
/* 2B59C 8002A99C 3C04800F */  lui        $a0, %hi(D_800F32AC)
/* 2B5A0 8002A9A0 8C8432AC */  lw         $a0, %lo(D_800F32AC)($a0)
/* 2B5A4 8002A9A4 000218C0 */  sll        $v1, $v0, 3
/* 2B5A8 8002A9A8 00621821 */  addu       $v1, $v1, $v0
/* 2B5AC 8002A9AC 00031880 */  sll        $v1, $v1, 2
/* 2B5B0 8002A9B0 00641821 */  addu       $v1, $v1, $a0
/* 2B5B4 8002A9B4 C4600000 */  lwc1       $f0, ($v1)
/* 2B5B8 8002A9B8 46800020 */  cvt.s.w    $f0, $f0
/* 2B5BC 8002A9BC C4640008 */  lwc1       $f4, 8($v1)
/* 2B5C0 8002A9C0 46040002 */  mul.s      $f0, $f0, $f4
/* 2B5C4 8002A9C4 3C014000 */  lui        $at, 0x4000
/* 2B5C8 8002A9C8 44815000 */  mtc1       $at, $f10
/* 2B5CC 8002A9CC 00000000 */  nop
/* 2B5D0 8002A9D0 460A0003 */  div.s      $f0, $f0, $f10
/* 2B5D4 8002A9D4 46003180 */  add.s      $f6, $f6, $f0
/* 2B5D8 8002A9D8 46043183 */  div.s      $f6, $f6, $f4
/* 2B5DC 8002A9DC 4600330D */  trunc.w.s  $f12, $f6
/* 2B5E0 8002A9E0 E7AC009C */  swc1       $f12, 0x9c($sp)
/* 2B5E4 8002A9E4 46081080 */  add.s      $f2, $f2, $f8
/* 2B5E8 8002A9E8 46001080 */  add.s      $f2, $f2, $f0
/* 2B5EC 8002A9EC 46041083 */  div.s      $f2, $f2, $f4
/* 2B5F0 8002A9F0 4600100D */  trunc.w.s  $f0, $f2
/* 2B5F4 8002A9F4 44160000 */  mfc1       $s6, $f0
/* 2B5F8 8002A9F8 C6A00008 */  lwc1       $f0, 8($s5)
/* 2B5FC 8002A9FC 46080101 */  sub.s      $f4, $f0, $f8
/* 2B600 8002AA00 C4620004 */  lwc1       $f2, 4($v1)
/* 2B604 8002AA04 468010A0 */  cvt.s.w    $f2, $f2
/* 2B608 8002AA08 C466000C */  lwc1       $f6, 0xc($v1)
/* 2B60C 8002AA0C 46061082 */  mul.s      $f2, $f2, $f6
/* 2B610 8002AA10 460A1083 */  div.s      $f2, $f2, $f10
/* 2B614 8002AA14 46022100 */  add.s      $f4, $f4, $f2
/* 2B618 8002AA18 46062103 */  div.s      $f4, $f4, $f6
/* 2B61C 8002AA1C 4600228D */  trunc.w.s  $f10, $f4
/* 2B620 8002AA20 44055000 */  mfc1       $a1, $f10
/* 2B624 8002AA24 46080000 */  add.s      $f0, $f0, $f8
/* 2B628 8002AA28 46020000 */  add.s      $f0, $f0, $f2
/* 2B62C 8002AA2C 46060003 */  div.s      $f0, $f0, $f6
/* 2B630 8002AA30 4600008D */  trunc.w.s  $f2, $f0
/* 2B634 8002AA34 E7A200A4 */  swc1       $f2, 0xa4($sp)
/* 2B638 8002AA38 8FA8009C */  lw         $t0, 0x9c($sp)
/* 2B63C 8002AA3C 00081027 */  nor        $v0, $zero, $t0
/* 2B640 8002AA40 000217C3 */  sra        $v0, $v0, 0x1f
/* 2B644 8002AA44 00484024 */  and        $t0, $v0, $t0
/* 2B648 8002AA48 AFA8009C */  sw         $t0, 0x9c($sp)
/* 2B64C 8002AA4C 00051027 */  nor        $v0, $zero, $a1
/* 2B650 8002AA50 000217C3 */  sra        $v0, $v0, 0x1f
/* 2B654 8002AA54 00452824 */  and        $a1, $v0, $a1
/* 2B658 8002AA58 8C630000 */  lw         $v1, ($v1)
/* 2B65C 8002AA5C 0076102A */  slt        $v0, $v1, $s6
/* 2B660 8002AA60 54400001 */  bnel       $v0, $zero, .L8002AA68
/* 2B664 8002AA64 0060B021 */   addu      $s6, $v1, $zero
.L8002AA68:
/* 2B668 8002AA68 00101C00 */  sll        $v1, $s0, 0x10
/* 2B66C 8002AA6C 00031C03 */  sra        $v1, $v1, 0x10
/* 2B670 8002AA70 3C04800F */  lui        $a0, %hi(D_800F32AC)
/* 2B674 8002AA74 8C8432AC */  lw         $a0, %lo(D_800F32AC)($a0)
/* 2B678 8002AA78 000310C0 */  sll        $v0, $v1, 3
/* 2B67C 8002AA7C 00431021 */  addu       $v0, $v0, $v1
/* 2B680 8002AA80 00021080 */  sll        $v0, $v0, 2
/* 2B684 8002AA84 00441021 */  addu       $v0, $v0, $a0
/* 2B688 8002AA88 8C430004 */  lw         $v1, 4($v0)
/* 2B68C 8002AA8C 8FA800A4 */  lw         $t0, 0xa4($sp)
/* 2B690 8002AA90 0068102A */  slt        $v0, $v1, $t0
/* 2B694 8002AA94 54400001 */  bnel       $v0, $zero, .L8002AA9C
/* 2B698 8002AA98 AFA300A4 */   sw        $v1, 0xa4($sp)
.L8002AA9C:
/* 2B69C 8002AA9C 00A09821 */  addu       $s3, $a1, $zero
/* 2B6A0 8002AAA0 8FA800A4 */  lw         $t0, 0xa4($sp)
/* 2B6A4 8002AAA4 0268102A */  slt        $v0, $s3, $t0
/* 2B6A8 8002AAA8 10400083 */  beqz       $v0, .L8002ACB8
/* 2B6AC 8002AAAC 00101C00 */   sll       $v1, $s0, 0x10
/* 2B6B0 8002AAB0 00031C03 */  sra        $v1, $v1, 0x10
/* 2B6B4 8002AAB4 000310C0 */  sll        $v0, $v1, 3
/* 2B6B8 8002AAB8 00431021 */  addu       $v0, $v0, $v1
/* 2B6BC 8002AABC 0002A080 */  sll        $s4, $v0, 2
/* 2B6C0 8002AAC0 3C014000 */  lui        $at, 0x4000
/* 2B6C4 8002AAC4 4481B000 */  mtc1       $at, $f22
/* 2B6C8 8002AAC8 2417FFFF */  addiu      $s7, $zero, -1
/* 2B6CC 8002AACC 0003F0C0 */  sll        $fp, $v1, 3
/* 2B6D0 8002AAD0 03C3F021 */  addu       $fp, $fp, $v1
.L8002AAD4:
/* 2B6D4 8002AAD4 44932000 */  mtc1       $s3, $f4
/* 2B6D8 8002AAD8 00000000 */  nop
/* 2B6DC 8002AADC 46802120 */  cvt.s.w    $f4, $f4
/* 2B6E0 8002AAE0 3C02800F */  lui        $v0, %hi(D_800F32AC)
/* 2B6E4 8002AAE4 8C4232AC */  lw         $v0, %lo(D_800F32AC)($v0)
/* 2B6E8 8002AAE8 02821021 */  addu       $v0, $s4, $v0
/* 2B6EC 8002AAEC C442000C */  lwc1       $f2, 0xc($v0)
/* 2B6F0 8002AAF0 46022102 */  mul.s      $f4, $f4, $f2
/* 2B6F4 8002AAF4 C640002C */  lwc1       $f0, 0x2c($s2)
/* 2B6F8 8002AAF8 46002100 */  add.s      $f4, $f4, $f0
/* 2B6FC 8002AAFC 46161003 */  div.s      $f0, $f2, $f22
/* 2B700 8002AB00 46002100 */  add.s      $f4, $f4, $f0
/* 2B704 8002AB04 C4400004 */  lwc1       $f0, 4($v0)
/* 2B708 8002AB08 46800020 */  cvt.s.w    $f0, $f0
/* 2B70C 8002AB0C 46020002 */  mul.s      $f0, $f0, $f2
/* 2B710 8002AB10 46160003 */  div.s      $f0, $f0, $f22
/* 2B714 8002AB14 C6A20008 */  lwc1       $f2, 8($s5)
/* 2B718 8002AB18 46020000 */  add.s      $f0, $f0, $f2
/* 2B71C 8002AB1C 8FB0009C */  lw         $s0, 0x9c($sp)
/* 2B720 8002AB20 0216102A */  slt        $v0, $s0, $s6
/* 2B724 8002AB24 1040005F */  beqz       $v0, .L8002ACA4
/* 2B728 8002AB28 46002501 */   sub.s     $f20, $f4, $f0
.L8002AB2C:
/* 2B72C 8002AB2C 44902000 */  mtc1       $s0, $f4
/* 2B730 8002AB30 00000000 */  nop
/* 2B734 8002AB34 46802120 */  cvt.s.w    $f4, $f4
/* 2B738 8002AB38 3C02800F */  lui        $v0, %hi(D_800F32AC)
/* 2B73C 8002AB3C 8C4232AC */  lw         $v0, %lo(D_800F32AC)($v0)
/* 2B740 8002AB40 02821021 */  addu       $v0, $s4, $v0
/* 2B744 8002AB44 C4420008 */  lwc1       $f2, 8($v0)
/* 2B748 8002AB48 46022102 */  mul.s      $f4, $f4, $f2
/* 2B74C 8002AB4C C6400024 */  lwc1       $f0, 0x24($s2)
/* 2B750 8002AB50 46002100 */  add.s      $f4, $f4, $f0
/* 2B754 8002AB54 46161003 */  div.s      $f0, $f2, $f22
/* 2B758 8002AB58 46002100 */  add.s      $f4, $f4, $f0
/* 2B75C 8002AB5C C4400000 */  lwc1       $f0, ($v0)
/* 2B760 8002AB60 46800020 */  cvt.s.w    $f0, $f0
/* 2B764 8002AB64 46020002 */  mul.s      $f0, $f0, $f2
/* 2B768 8002AB68 46160003 */  div.s      $f0, $f0, $f22
/* 2B76C 8002AB6C C6A20004 */  lwc1       $f2, 4($s5)
/* 2B770 8002AB70 46020000 */  add.s      $f0, $f0, $f2
/* 2B774 8002AB74 46002101 */  sub.s      $f4, $f4, $f0
/* 2B778 8002AB78 46042102 */  mul.s      $f4, $f4, $f4
/* 2B77C 8002AB7C 00000000 */  nop
/* 2B780 8002AB80 4614A302 */  mul.s      $f12, $f20, $f20
/* 2B784 8002AB84 0C02C5D4 */  jal        func_800B1750
/* 2B788 8002AB88 460C2300 */   add.s     $f12, $f4, $f12
/* 2B78C 8002AB8C 8FA80094 */  lw         $t0, 0x94($sp)
/* 2B790 8002AB90 C5020000 */  lwc1       $f2, ($t0)
/* 2B794 8002AB94 4602003C */  c.lt.s     $f0, $f2
/* 2B798 8002AB98 00000000 */  nop
/* 2B79C 8002AB9C 00000000 */  nop
/* 2B7A0 8002ABA0 4502003D */  bc1fl      .L8002AC98
/* 2B7A4 8002ABA4 26100001 */   addiu     $s0, $s0, 1
/* 2B7A8 8002ABA8 3C03800F */  lui        $v1, %hi(D_800F32AC)
/* 2B7AC 8002ABAC 8C6332AC */  lw         $v1, %lo(D_800F32AC)($v1)
/* 2B7B0 8002ABB0 02831821 */  addu       $v1, $s4, $v1
/* 2B7B4 8002ABB4 8C620000 */  lw         $v0, ($v1)
/* 2B7B8 8002ABB8 02620018 */  mult       $s3, $v0
/* 2B7BC 8002ABBC 00001012 */  mflo       $v0
/* 2B7C0 8002ABC0 00508821 */  addu       $s1, $v0, $s0
/* 2B7C4 8002ABC4 8C630014 */  lw         $v1, 0x14($v1)
/* 2B7C8 8002ABC8 00111040 */  sll        $v0, $s1, 1
/* 2B7CC 8002ABCC 00431021 */  addu       $v0, $v0, $v1
/* 2B7D0 8002ABD0 84450000 */  lh         $a1, ($v0)
/* 2B7D4 8002ABD4 10B7000A */  beq        $a1, $s7, .L8002AC00
/* 2B7D8 8002ABD8 00000000 */   nop
/* 2B7DC 8002ABDC 3C06800F */  lui        $a2, %hi(D_800ED52C)
/* 2B7E0 8002ABE0 84C6D52C */  lh         $a2, %lo(D_800ED52C)($a2)
/* 2B7E4 8002ABE4 00063180 */  sll        $a2, $a2, 6
/* 2B7E8 8002ABE8 3C02800F */  lui        $v0, %hi(D_800F374C)
/* 2B7EC 8002ABEC 8C42374C */  lw         $v0, %lo(D_800F374C)($v0)
/* 2B7F0 8002ABF0 8E44006C */  lw         $a0, 0x6c($s2)
/* 2B7F4 8002ABF4 00C23021 */  addu       $a2, $a2, $v0
/* 2B7F8 8002ABF8 0C00B4B3 */  jal        func_8002D2CC
/* 2B7FC 8002ABFC 27A70010 */   addiu     $a3, $sp, 0x10
.L8002AC00:
/* 2B800 8002AC00 3C02800F */  lui        $v0, %hi(D_800F32AC)
/* 2B804 8002AC04 8C4232AC */  lw         $v0, %lo(D_800F32AC)($v0)
/* 2B808 8002AC08 02821021 */  addu       $v0, $s4, $v0
/* 2B80C 8002AC0C 8C430018 */  lw         $v1, 0x18($v0)
/* 2B810 8002AC10 00111040 */  sll        $v0, $s1, 1
/* 2B814 8002AC14 00431021 */  addu       $v0, $v0, $v1
/* 2B818 8002AC18 84450000 */  lh         $a1, ($v0)
/* 2B81C 8002AC1C 10B7000A */  beq        $a1, $s7, .L8002AC48
/* 2B820 8002AC20 00000000 */   nop
/* 2B824 8002AC24 3C06800F */  lui        $a2, %hi(D_800ED52C)
/* 2B828 8002AC28 84C6D52C */  lh         $a2, %lo(D_800ED52C)($a2)
/* 2B82C 8002AC2C 00063180 */  sll        $a2, $a2, 6
/* 2B830 8002AC30 3C02800F */  lui        $v0, %hi(D_800F374C)
/* 2B834 8002AC34 8C42374C */  lw         $v0, %lo(D_800F374C)($v0)
/* 2B838 8002AC38 8E44006C */  lw         $a0, 0x6c($s2)
/* 2B83C 8002AC3C 00C23021 */  addu       $a2, $a2, $v0
/* 2B840 8002AC40 0C00B4B3 */  jal        func_8002D2CC
/* 2B844 8002AC44 27A70010 */   addiu     $a3, $sp, 0x10
.L8002AC48:
/* 2B848 8002AC48 3C03800F */  lui        $v1, %hi(D_800F32AC)
/* 2B84C 8002AC4C 8C6332AC */  lw         $v1, %lo(D_800F32AC)($v1)
/* 2B850 8002AC50 001E1080 */  sll        $v0, $fp, 2
/* 2B854 8002AC54 00431021 */  addu       $v0, $v0, $v1
/* 2B858 8002AC58 8C43001C */  lw         $v1, 0x1c($v0)
/* 2B85C 8002AC5C 00111040 */  sll        $v0, $s1, 1
/* 2B860 8002AC60 00431021 */  addu       $v0, $v0, $v1
/* 2B864 8002AC64 84450000 */  lh         $a1, ($v0)
/* 2B868 8002AC68 50B7000B */  beql       $a1, $s7, .L8002AC98
/* 2B86C 8002AC6C 26100001 */   addiu     $s0, $s0, 1
/* 2B870 8002AC70 3C06800F */  lui        $a2, %hi(D_800ED52C)
/* 2B874 8002AC74 84C6D52C */  lh         $a2, %lo(D_800ED52C)($a2)
/* 2B878 8002AC78 00063180 */  sll        $a2, $a2, 6
/* 2B87C 8002AC7C 3C02800F */  lui        $v0, %hi(D_800F374C)
/* 2B880 8002AC80 8C42374C */  lw         $v0, %lo(D_800F374C)($v0)
/* 2B884 8002AC84 8E44006C */  lw         $a0, 0x6c($s2)
/* 2B888 8002AC88 00C23021 */  addu       $a2, $a2, $v0
/* 2B88C 8002AC8C 0C00B4B3 */  jal        func_8002D2CC
/* 2B890 8002AC90 27A70010 */   addiu     $a3, $sp, 0x10
/* 2B894 8002AC94 26100001 */  addiu      $s0, $s0, 1
.L8002AC98:
/* 2B898 8002AC98 0216102A */  slt        $v0, $s0, $s6
/* 2B89C 8002AC9C 1440FFA3 */  bnez       $v0, .L8002AB2C
/* 2B8A0 8002ACA0 00000000 */   nop
.L8002ACA4:
/* 2B8A4 8002ACA4 26730001 */  addiu      $s3, $s3, 1
/* 2B8A8 8002ACA8 8FA800A4 */  lw         $t0, 0xa4($sp)
/* 2B8AC 8002ACAC 0268102A */  slt        $v0, $s3, $t0
/* 2B8B0 8002ACB0 1440FF88 */  bnez       $v0, .L8002AAD4
/* 2B8B4 8002ACB4 00000000 */   nop
.L8002ACB8:
/* 2B8B8 8002ACB8 3C02800F */  lui        $v0, %hi(D_800ED52C)
/* 2B8BC 8002ACBC 9442D52C */  lhu        $v0, %lo(D_800ED52C)($v0)
/* 2B8C0 8002ACC0 24420001 */  addiu      $v0, $v0, 1
/* 2B8C4 8002ACC4 3C01800F */  lui        $at, %hi(D_800ED52C)
/* 2B8C8 8002ACC8 A422D52C */  sh         $v0, %lo(D_800ED52C)($at)
/* 2B8CC 8002ACCC 8FBF00CC */  lw         $ra, 0xcc($sp)
/* 2B8D0 8002ACD0 8FBE00C8 */  lw         $fp, 0xc8($sp)
/* 2B8D4 8002ACD4 8FB700C4 */  lw         $s7, 0xc4($sp)
/* 2B8D8 8002ACD8 8FB600C0 */  lw         $s6, 0xc0($sp)
/* 2B8DC 8002ACDC 8FB500BC */  lw         $s5, 0xbc($sp)
/* 2B8E0 8002ACE0 8FB400B8 */  lw         $s4, 0xb8($sp)
/* 2B8E4 8002ACE4 8FB300B4 */  lw         $s3, 0xb4($sp)
/* 2B8E8 8002ACE8 8FB200B0 */  lw         $s2, 0xb0($sp)
/* 2B8EC 8002ACEC 8FB100AC */  lw         $s1, 0xac($sp)
/* 2B8F0 8002ACF0 8FB000A8 */  lw         $s0, 0xa8($sp)
/* 2B8F4 8002ACF4 D7B600D8 */  ldc1       $f22, 0xd8($sp)
/* 2B8F8 8002ACF8 D7B400D0 */  ldc1       $f20, 0xd0($sp)
/* 2B8FC 8002ACFC 03E00008 */  jr         $ra
/* 2B900 8002AD00 27BD00E0 */   addiu     $sp, $sp, 0xe0
