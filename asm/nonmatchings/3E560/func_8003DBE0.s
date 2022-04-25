	.set noat
	.set noreorder

glabel func_8003DBE0
/* 3E7E0 8003DBE0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 3E7E4 8003DBE4 AFBF002C */  sw         $ra, 0x2c($sp)
/* 3E7E8 8003DBE8 AFB40028 */  sw         $s4, 0x28($sp)
/* 3E7EC 8003DBEC AFB30024 */  sw         $s3, 0x24($sp)
/* 3E7F0 8003DBF0 AFB20020 */  sw         $s2, 0x20($sp)
/* 3E7F4 8003DBF4 AFB1001C */  sw         $s1, 0x1c($sp)
/* 3E7F8 8003DBF8 AFB00018 */  sw         $s0, 0x18($sp)
/* 3E7FC 8003DBFC F7B40030 */  sdc1       $f20, 0x30($sp)
/* 3E800 8003DC00 00A09021 */  addu       $s2, $a1, $zero
/* 3E804 8003DC04 00808021 */  addu       $s0, $a0, $zero
/* 3E808 8003DC08 0C00F6C7 */  jal        func_8003DB1C
/* 3E80C 8003DC0C 0000A021 */   addu      $s4, $zero, $zero
/* 3E810 8003DC10 00409821 */  addu       $s3, $v0, $zero
/* 3E814 8003DC14 52600089 */  beql       $s3, $zero, .L8003DE3C
/* 3E818 8003DC18 02601021 */   addu      $v0, $s3, $zero
/* 3E81C 8003DC1C 12400003 */  beqz       $s2, .L8003DC2C
/* 3E820 8003DC20 A2700008 */   sb        $s0, 8($s3)
/* 3E824 8003DC24 96540002 */  lhu        $s4, 2($s2)
/* 3E828 8003DC28 26520004 */  addiu      $s2, $s2, 4
.L8003DC2C:
/* 3E82C 8003DC2C 3C028004 */  lui        $v0, %hi(func_8003DE60)
/* 3E830 8003DC30 2442DE60 */  addiu      $v0, $v0, %lo(func_8003DE60)
/* 3E834 8003DC34 AFA20010 */  sw         $v0, 0x10($sp)
/* 3E838 8003DC38 24044000 */  addiu      $a0, $zero, 0x4000
/* 3E83C 8003DC3C 24050001 */  addiu      $a1, $zero, 1
/* 3E840 8003DC40 3286FFFF */  andi       $a2, $s4, 0xffff
/* 3E844 8003DC44 0C0174E1 */  jal        func_8005D384
/* 3E848 8003DC48 2407FFFF */   addiu     $a3, $zero, -1
/* 3E84C 8003DC4C AE62003C */  sw         $v0, 0x3c($s3)
/* 3E850 8003DC50 00408821 */  addu       $s1, $v0, $zero
/* 3E854 8003DC54 92620008 */  lbu        $v0, 8($s3)
/* 3E858 8003DC58 00021100 */  sll        $v0, $v0, 4
/* 3E85C 8003DC5C 3C04800C */  lui        $a0, %hi(D_800C4350)
/* 3E860 8003DC60 00822021 */  addu       $a0, $a0, $v0
/* 3E864 8003DC64 8C844350 */  lw         $a0, %lo(D_800C4350)($a0)
/* 3E868 8003DC68 0C005D4A */  jal        func_80017528
/* 3E86C 8003DC6C 240506A9 */   addiu     $a1, $zero, 0x6a9
/* 3E870 8003DC70 00408021 */  addu       $s0, $v0, $zero
/* 3E874 8003DC74 02202021 */  addu       $a0, $s1, $zero
/* 3E878 8003DC78 0C01762E */  jal        func_8005D8B8
/* 3E87C 8003DC7C 24050080 */   addiu     $a1, $zero, 0x80
/* 3E880 8003DC80 8E220040 */  lw         $v0, 0x40($s1)
/* 3E884 8003DC84 A4500000 */  sh         $s0, ($v0)
/* 3E888 8003DC88 02202021 */  addu       $a0, $s1, $zero
/* 3E88C 8003DC8C 00002821 */  addu       $a1, $zero, $zero
/* 3E890 8003DC90 00A03021 */  addu       $a2, $a1, $zero
/* 3E894 8003DC94 0C01765B */  jal        func_8005D96C
/* 3E898 8003DC98 00A03821 */   addu      $a3, $a1, $zero
/* 3E89C 8003DC9C 00108400 */  sll        $s0, $s0, 0x10
/* 3E8A0 8003DCA0 00108403 */  sra        $s0, $s0, 0x10
/* 3E8A4 8003DCA4 02002021 */  addu       $a0, $s0, $zero
/* 3E8A8 8003DCA8 24050002 */  addiu      $a1, $zero, 2
/* 3E8AC 8003DCAC 0C0097AD */  jal        func_80025EB4
/* 3E8B0 8003DCB0 24060002 */   addiu     $a2, $zero, 2
/* 3E8B4 8003DCB4 02002021 */  addu       $a0, $s0, $zero
/* 3E8B8 8003DCB8 0C0097C4 */  jal        func_80025F10
/* 3E8BC 8003DCBC 24050001 */   addiu     $a1, $zero, 1
/* 3E8C0 8003DCC0 0C009792 */  jal        func_80025E48
/* 3E8C4 8003DCC4 02002021 */   addu      $a0, $s0, $zero
/* 3E8C8 8003DCC8 00021400 */  sll        $v0, $v0, 0x10
/* 3E8CC 8003DCCC 0C00F664 */  jal        func_8003D990
/* 3E8D0 8003DCD0 00022403 */   sra       $a0, $v0, 0x10
/* 3E8D4 8003DCD4 A6620044 */  sh         $v0, 0x44($s3)
/* 3E8D8 8003DCD8 0C00EDDD */  jal        func_8003B774
/* 3E8DC 8003DCDC 24040008 */   addiu     $a0, $zero, 8
/* 3E8E0 8003DCE0 00401821 */  addu       $v1, $v0, $zero
/* 3E8E4 8003DCE4 AE230050 */  sw         $v1, 0x50($s1)
/* 3E8E8 8003DCE8 AC730000 */  sw         $s3, ($v1)
/* 3E8EC 8003DCEC 92620008 */  lbu        $v0, 8($s3)
/* 3E8F0 8003DCF0 00021100 */  sll        $v0, $v0, 4
/* 3E8F4 8003DCF4 3C01800C */  lui        $at, %hi(D_800C4358)
/* 3E8F8 8003DCF8 00220821 */  addu       $at, $at, $v0
/* 3E8FC 8003DCFC C4204358 */  lwc1       $f0, %lo(D_800C4358)($at)
/* 3E900 8003DD00 E4600004 */  swc1       $f0, 4($v1)
/* 3E904 8003DD04 00141400 */  sll        $v0, $s4, 0x10
/* 3E908 8003DD08 18400012 */  blez       $v0, .L8003DD54
/* 3E90C 8003DD0C 00008021 */   addu      $s0, $zero, $zero
/* 3E910 8003DD10 00141400 */  sll        $v0, $s4, 0x10
/* 3E914 8003DD14 0002A403 */  sra        $s4, $v0, 0x10
.L8003DD18:
/* 3E918 8003DD18 8E440000 */  lw         $a0, ($s2)
/* 3E91C 8003DD1C 0C00F66E */  jal        func_8003D9B8
/* 3E920 8003DD20 26520004 */   addiu     $s2, $s2, 4
/* 3E924 8003DD24 00101C00 */  sll        $v1, $s0, 0x10
/* 3E928 8003DD28 8E240048 */  lw         $a0, 0x48($s1)
/* 3E92C 8003DD2C 00031BC3 */  sra        $v1, $v1, 0xf
/* 3E930 8003DD30 00641821 */  addu       $v1, $v1, $a0
/* 3E934 8003DD34 A4620000 */  sh         $v0, ($v1)
/* 3E938 8003DD38 26020001 */  addiu      $v0, $s0, 1
/* 3E93C 8003DD3C 00408021 */  addu       $s0, $v0, $zero
/* 3E940 8003DD40 00021400 */  sll        $v0, $v0, 0x10
/* 3E944 8003DD44 00021403 */  sra        $v0, $v0, 0x10
/* 3E948 8003DD48 0054102A */  slt        $v0, $v0, $s4
/* 3E94C 8003DD4C 1440FFF2 */  bnez       $v0, .L8003DD18
/* 3E950 8003DD50 00000000 */   nop
.L8003DD54:
/* 3E954 8003DD54 92620008 */  lbu        $v0, 8($s3)
/* 3E958 8003DD58 00021100 */  sll        $v0, $v0, 4
/* 3E95C 8003DD5C 3C01800C */  lui        $at, %hi(D_800C435C)
/* 3E960 8003DD60 00220821 */  addu       $at, $at, $v0
/* 3E964 8003DD64 C420435C */  lwc1       $f0, %lo(D_800C435C)($at)
/* 3E968 8003DD68 4480A000 */  mtc1       $zero, $f20
/* 3E96C 8003DD6C 00000000 */  nop
/* 3E970 8003DD70 4600A03C */  c.lt.s     $f20, $f0
/* 3E974 8003DD74 00000000 */  nop
/* 3E978 8003DD78 00000000 */  nop
/* 3E97C 8003DD7C 4500002D */  bc1f       .L8003DE34
/* 3E980 8003DD80 24044000 */   addiu     $a0, $zero, 0x4000
/* 3E984 8003DD84 3C028004 */  lui        $v0, %hi(func_8003E040)
/* 3E988 8003DD88 2442E040 */  addiu      $v0, $v0, %lo(func_8003E040)
/* 3E98C 8003DD8C AFA20010 */  sw         $v0, 0x10($sp)
/* 3E990 8003DD90 24050001 */  addiu      $a1, $zero, 1
/* 3E994 8003DD94 00003021 */  addu       $a2, $zero, $zero
/* 3E998 8003DD98 0C0174E1 */  jal        func_8005D384
/* 3E99C 8003DD9C 2407FFFF */   addiu     $a3, $zero, -1
/* 3E9A0 8003DDA0 AE620040 */  sw         $v0, 0x40($s3)
/* 3E9A4 8003DDA4 00408821 */  addu       $s1, $v0, $zero
/* 3E9A8 8003DDA8 92620008 */  lbu        $v0, 8($s3)
/* 3E9AC 8003DDAC 00021100 */  sll        $v0, $v0, 4
/* 3E9B0 8003DDB0 3C04800C */  lui        $a0, %hi(D_800C4354)
/* 3E9B4 8003DDB4 00822021 */  addu       $a0, $a0, $v0
/* 3E9B8 8003DDB8 8C844354 */  lw         $a0, %lo(D_800C4354)($a0)
/* 3E9BC 8003DDBC 0C005D4A */  jal        func_80017528
/* 3E9C0 8003DDC0 24050229 */   addiu     $a1, $zero, 0x229
/* 3E9C4 8003DDC4 00408021 */  addu       $s0, $v0, $zero
/* 3E9C8 8003DDC8 02202021 */  addu       $a0, $s1, $zero
/* 3E9CC 8003DDCC 0C01762E */  jal        func_8005D8B8
/* 3E9D0 8003DDD0 24050080 */   addiu     $a1, $zero, 0x80
/* 3E9D4 8003DDD4 8E220040 */  lw         $v0, 0x40($s1)
/* 3E9D8 8003DDD8 A4500000 */  sh         $s0, ($v0)
/* 3E9DC 8003DDDC 4405A000 */  mfc1       $a1, $f20
/* 3E9E0 8003DDE0 4406A000 */  mfc1       $a2, $f20
/* 3E9E4 8003DDE4 4407A000 */  mfc1       $a3, $f20
/* 3E9E8 8003DDE8 00000000 */  nop
/* 3E9EC 8003DDEC 0C01765B */  jal        func_8005D96C
/* 3E9F0 8003DDF0 02202021 */   addu      $a0, $s1, $zero
/* 3E9F4 8003DDF4 00102400 */  sll        $a0, $s0, 0x10
/* 3E9F8 8003DDF8 00042403 */  sra        $a0, $a0, 0x10
/* 3E9FC 8003DDFC 0C0097C4 */  jal        func_80025F10
/* 3EA00 8003DE00 24050001 */   addiu     $a1, $zero, 1
/* 3EA04 8003DE04 0C00EDDD */  jal        func_8003B774
/* 3EA08 8003DE08 24040008 */   addiu     $a0, $zero, 8
/* 3EA0C 8003DE0C 00401821 */  addu       $v1, $v0, $zero
/* 3EA10 8003DE10 AE230050 */  sw         $v1, 0x50($s1)
/* 3EA14 8003DE14 AC730000 */  sw         $s3, ($v1)
/* 3EA18 8003DE18 92620008 */  lbu        $v0, 8($s3)
/* 3EA1C 8003DE1C 00021100 */  sll        $v0, $v0, 4
/* 3EA20 8003DE20 3C01800C */  lui        $at, %hi(D_800C435C)
/* 3EA24 8003DE24 00220821 */  addu       $at, $at, $v0
/* 3EA28 8003DE28 C420435C */  lwc1       $f0, %lo(D_800C435C)($at)
/* 3EA2C 8003DE2C 0800F78E */  j          .L8003DE38
/* 3EA30 8003DE30 E4600004 */   swc1      $f0, 4($v1)
.L8003DE34:
/* 3EA34 8003DE34 AE600040 */  sw         $zero, 0x40($s3)
.L8003DE38:
/* 3EA38 8003DE38 02601021 */  addu       $v0, $s3, $zero
.L8003DE3C:
/* 3EA3C 8003DE3C 8FBF002C */  lw         $ra, 0x2c($sp)
/* 3EA40 8003DE40 8FB40028 */  lw         $s4, 0x28($sp)
/* 3EA44 8003DE44 8FB30024 */  lw         $s3, 0x24($sp)
/* 3EA48 8003DE48 8FB20020 */  lw         $s2, 0x20($sp)
/* 3EA4C 8003DE4C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 3EA50 8003DE50 8FB00018 */  lw         $s0, 0x18($sp)
/* 3EA54 8003DE54 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 3EA58 8003DE58 03E00008 */  jr         $ra
/* 3EA5C 8003DE5C 27BD0038 */   addiu     $sp, $sp, 0x38
