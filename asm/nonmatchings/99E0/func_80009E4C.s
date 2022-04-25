	.set noat
	.set noreorder

glabel func_80009E4C
/* AA4C 80009E4C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AA50 80009E50 AFBF001C */  sw         $ra, 0x1c($sp)
/* AA54 80009E54 AFB20018 */  sw         $s2, 0x18($sp)
/* AA58 80009E58 AFB10014 */  sw         $s1, 0x14($sp)
/* AA5C 80009E5C AFB00010 */  sw         $s0, 0x10($sp)
/* AA60 80009E60 00808021 */  addu       $s0, $a0, $zero
/* AA64 80009E64 00A08821 */  addu       $s1, $a1, $zero
/* AA68 80009E68 00C01021 */  addu       $v0, $a2, $zero
/* AA6C 80009E6C 00E01821 */  addu       $v1, $a3, $zero
/* AA70 80009E70 00063600 */  sll        $a2, $a2, 0x18
/* AA74 80009E74 2CC60001 */  sltiu      $a2, $a2, 1
/* AA78 80009E78 00073E00 */  sll        $a3, $a3, 0x18
/* AA7C 80009E7C 2CE70001 */  sltiu      $a3, $a3, 1
/* AA80 80009E80 00C73024 */  and        $a2, $a2, $a3
/* AA84 80009E84 10C00003 */  beqz       $a2, .L80009E94
/* AA88 80009E88 24120001 */   addiu     $s2, $zero, 1
/* AA8C 80009E8C 0800286A */  j          .L8000A1A8
/* AA90 80009E90 00001021 */   addu      $v0, $zero, $zero
.L80009E94:
/* AA94 80009E94 00031E00 */  sll        $v1, $v1, 0x18
/* AA98 80009E98 00031E03 */  sra        $v1, $v1, 0x18
/* AA9C 80009E9C 00021600 */  sll        $v0, $v0, 0x18
/* AAA0 80009EA0 00021603 */  sra        $v0, $v0, 0x18
/* AAA4 80009EA4 44836000 */  mtc1       $v1, $f12
/* AAA8 80009EA8 00000000 */  nop
/* AAAC 80009EAC 46806320 */  cvt.s.w    $f12, $f12
/* AAB0 80009EB0 44827000 */  mtc1       $v0, $f14
/* AAB4 80009EB4 00000000 */  nop
/* AAB8 80009EB8 0C02C336 */  jal        func_800B0CD8
/* AABC 80009EBC 468073A0 */   cvt.s.w   $f14, $f14
/* AAC0 80009EC0 4600008D */  trunc.w.s  $f2, $f0
/* AAC4 80009EC4 44031000 */  mfc1       $v1, $f2
/* AAC8 80009EC8 00000000 */  nop
/* AACC 80009ECC 00031400 */  sll        $v0, $v1, 0x10
/* AAD0 80009ED0 04410002 */  bgez       $v0, .L80009EDC
/* AAD4 80009ED4 00602021 */   addu      $a0, $v1, $zero
/* AAD8 80009ED8 24640168 */  addiu      $a0, $v1, 0x168
.L80009EDC:
/* AADC 80009EDC 00042400 */  sll        $a0, $a0, 0x10
/* AAE0 80009EE0 00041403 */  sra        $v0, $a0, 0x10
/* AAE4 80009EE4 3C03B60B */  lui        $v1, 0xb60b
/* AAE8 80009EE8 346360B7 */  ori        $v1, $v1, 0x60b7
/* AAEC 80009EEC 00430018 */  mult       $v0, $v1
/* AAF0 80009EF0 00004010 */  mfhi       $t0
/* AAF4 80009EF4 01021021 */  addu       $v0, $t0, $v0
/* AAF8 80009EF8 00021183 */  sra        $v0, $v0, 6
/* AAFC 80009EFC 000427C3 */  sra        $a0, $a0, 0x1f
/* AB00 80009F00 00441023 */  subu       $v0, $v0, $a0
/* AB04 80009F04 00402021 */  addu       $a0, $v0, $zero
/* AB08 80009F08 00021400 */  sll        $v0, $v0, 0x10
/* AB0C 80009F0C 00021403 */  sra        $v0, $v0, 0x10
/* AB10 80009F10 00101C00 */  sll        $v1, $s0, 0x10
/* AB14 80009F14 00032C03 */  sra        $a1, $v1, 0x10
/* AB18 80009F18 3C03800F */  lui        $v1, %hi(D_800ED0C9)
/* AB1C 80009F1C 00651821 */  addu       $v1, $v1, $a1
/* AB20 80009F20 9063D0C9 */  lbu        $v1, %lo(D_800ED0C9)($v1)
/* AB24 80009F24 14430026 */  bne        $v0, $v1, .L80009FC0
/* AB28 80009F28 00101C00 */   sll       $v1, $s0, 0x10
/* AB2C 80009F2C 3C03800F */  lui        $v1, %hi(D_800F2BD4)
/* AB30 80009F30 00651821 */  addu       $v1, $v1, $a1
/* AB34 80009F34 90632BD4 */  lbu        $v1, %lo(D_800F2BD4)($v1)
/* AB38 80009F38 24630001 */  addiu      $v1, $v1, 1
/* AB3C 80009F3C 3C01800F */  lui        $at, %hi(D_800F2BD4)
/* AB40 80009F40 00250821 */  addu       $at, $at, $a1
/* AB44 80009F44 A0232BD4 */  sb         $v1, %lo(D_800F2BD4)($at)
/* AB48 80009F48 00031E00 */  sll        $v1, $v1, 0x18
/* AB4C 80009F4C 00031E03 */  sra        $v1, $v1, 0x18
/* AB50 80009F50 00111400 */  sll        $v0, $s1, 0x10
/* AB54 80009F54 00021403 */  sra        $v0, $v0, 0x10
/* AB58 80009F58 0043102A */  slt        $v0, $v0, $v1
/* AB5C 80009F5C 1040000B */  beqz       $v0, .L80009F8C
/* AB60 80009F60 00051040 */   sll       $v0, $a1, 1
/* AB64 80009F64 3C01800F */  lui        $at, %hi(D_800F2BD4)
/* AB68 80009F68 00250821 */  addu       $at, $at, $a1
/* AB6C 80009F6C A0312BD4 */  sb         $s1, %lo(D_800F2BD4)($at)
/* AB70 80009F70 3C01800F */  lui        $at, %hi(D_800F0A38)
/* AB74 80009F74 00250821 */  addu       $at, $at, $a1
/* AB78 80009F78 A0200A38 */  sb         $zero, %lo(D_800F0A38)($at)
/* AB7C 80009F7C 3C01800F */  lui        $at, %hi(D_800F64EE)
/* AB80 80009F80 00250821 */  addu       $at, $at, $a1
/* AB84 80009F84 08002837 */  j          .L8000A0DC
/* AB88 80009F88 A02464EE */   sb        $a0, %lo(D_800F64EE)($at)
.L80009F8C:
/* AB8C 80009F8C 00102400 */  sll        $a0, $s0, 0x10
/* AB90 80009F90 00042403 */  sra        $a0, $a0, 0x10
/* AB94 80009F94 3C02800F */  lui        $v0, %hi(D_800ECB08)
/* AB98 80009F98 2442CB08 */  addiu      $v0, $v0, %lo(D_800ECB08)
/* AB9C 80009F9C 00041840 */  sll        $v1, $a0, 1
/* ABA0 80009FA0 00621821 */  addu       $v1, $v1, $v0
/* ABA4 80009FA4 94620000 */  lhu        $v0, ($v1)
/* ABA8 80009FA8 24420001 */  addiu      $v0, $v0, 1
/* ABAC 80009FAC A4620000 */  sh         $v0, ($v1)
/* ABB0 80009FB0 3C02800F */  lui        $v0, %hi(D_800F0A38)
/* ABB4 80009FB4 00441021 */  addu       $v0, $v0, $a0
/* ABB8 80009FB8 0800286A */  j          .L8000A1A8
/* ABBC 80009FBC 80420A38 */   lb        $v0, %lo(D_800F0A38)($v0)
.L80009FC0:
/* ABC0 80009FC0 00031C03 */  sra        $v1, $v1, 0x10
/* ABC4 80009FC4 3C02800F */  lui        $v0, %hi(D_800ECB08)
/* ABC8 80009FC8 2442CB08 */  addiu      $v0, $v0, %lo(D_800ECB08)
/* ABCC 80009FCC 00033040 */  sll        $a2, $v1, 1
/* ABD0 80009FD0 00C22821 */  addu       $a1, $a2, $v0
/* ABD4 80009FD4 94A20000 */  lhu        $v0, ($a1)
/* ABD8 80009FD8 24420001 */  addiu      $v0, $v0, 1
/* ABDC 80009FDC A4A20000 */  sh         $v0, ($a1)
/* ABE0 80009FE0 3C01800F */  lui        $at, %hi(D_800F2BD4)
/* ABE4 80009FE4 00230821 */  addu       $at, $at, $v1
/* ABE8 80009FE8 A0202BD4 */  sb         $zero, %lo(D_800F2BD4)($at)
/* ABEC 80009FEC 3C01800F */  lui        $at, %hi(D_800F64EE)
/* ABF0 80009FF0 00230821 */  addu       $at, $at, $v1
/* ABF4 80009FF4 902364EE */  lbu        $v1, %lo(D_800F64EE)($at)
/* ABF8 80009FF8 00041400 */  sll        $v0, $a0, 0x10
/* ABFC 80009FFC 00021403 */  sra        $v0, $v0, 0x10
/* AC00 8000A000 14620008 */  bne        $v1, $v0, .L8000A024
/* AC04 8000A004 00101400 */   sll       $v0, $s0, 0x10
/* AC08 8000A008 24120002 */  addiu      $s2, $zero, 2
/* AC0C 8000A00C 94A20000 */  lhu        $v0, ($a1)
/* AC10 8000A010 3C01800F */  lui        $at, %hi(D_800F377A)
/* AC14 8000A014 00260821 */  addu       $at, $at, $a2
/* AC18 8000A018 A422377A */  sh         $v0, %lo(D_800F377A)($at)
/* AC1C 8000A01C A4A00000 */  sh         $zero, ($a1)
/* AC20 8000A020 00101400 */  sll        $v0, $s0, 0x10
.L8000A024:
/* AC24 8000A024 00021403 */  sra        $v0, $v0, 0x10
/* AC28 8000A028 3C01800F */  lui        $at, %hi(D_800ED0C9)
/* AC2C 8000A02C 00220821 */  addu       $at, $at, $v0
/* AC30 8000A030 9022D0C9 */  lbu        $v0, %lo(D_800ED0C9)($at)
/* AC34 8000A034 00821023 */  subu       $v0, $a0, $v0
/* AC38 8000A038 00402821 */  addu       $a1, $v0, $zero
/* AC3C 8000A03C 00021400 */  sll        $v0, $v0, 0x10
/* AC40 8000A040 00021C03 */  sra        $v1, $v0, 0x10
/* AC44 8000A044 04600005 */  bltz       $v1, .L8000A05C
/* AC48 8000A048 24020003 */   addiu     $v0, $zero, 3
/* AC4C 8000A04C 5062000A */  beql       $v1, $v0, .L8000A078
/* AC50 8000A050 00052823 */   negu      $a1, $a1
/* AC54 8000A054 0800281F */  j          .L8000A07C
/* AC58 8000A058 00051400 */   sll       $v0, $a1, 0x10
.L8000A05C:
/* AC5C 8000A05C 00051400 */  sll        $v0, $a1, 0x10
/* AC60 8000A060 00021403 */  sra        $v0, $v0, 0x10
/* AC64 8000A064 00021023 */  negu       $v0, $v0
/* AC68 8000A068 24030003 */  addiu      $v1, $zero, 3
/* AC6C 8000A06C 14430003 */  bne        $v0, $v1, .L8000A07C
/* AC70 8000A070 00051400 */   sll       $v0, $a1, 0x10
/* AC74 8000A074 00052823 */  negu       $a1, $a1
.L8000A078:
/* AC78 8000A078 00051400 */  sll        $v0, $a1, 0x10
.L8000A07C:
/* AC7C 8000A07C 000217C3 */  sra        $v0, $v0, 0x1f
/* AC80 8000A080 34420001 */  ori        $v0, $v0, 1
/* AC84 8000A084 00402821 */  addu       $a1, $v0, $zero
/* AC88 8000A088 10A00019 */  beqz       $a1, .L8000A0F0
/* AC8C 8000A08C 00403821 */   addu      $a3, $v0, $zero
/* AC90 8000A090 00101400 */  sll        $v0, $s0, 0x10
/* AC94 8000A094 00021C03 */  sra        $v1, $v0, 0x10
/* AC98 8000A098 3C02800F */  lui        $v0, %hi(D_800F0A38)
/* AC9C 8000A09C 00431021 */  addu       $v0, $v0, $v1
/* ACA0 8000A0A0 80420A38 */  lb         $v0, %lo(D_800F0A38)($v0)
/* ACA4 8000A0A4 10A20012 */  beq        $a1, $v0, .L8000A0F0
/* ACA8 8000A0A8 00031040 */   sll       $v0, $v1, 1
/* ACAC 8000A0AC 3C01800F */  lui        $at, %hi(D_800F0A38)
/* ACB0 8000A0B0 00230821 */  addu       $at, $at, $v1
/* ACB4 8000A0B4 A0270A38 */  sb         $a3, %lo(D_800F0A38)($at)
/* ACB8 8000A0B8 3C01800F */  lui        $at, %hi(D_800ED0C9)
/* ACBC 8000A0BC 00230821 */  addu       $at, $at, $v1
/* ACC0 8000A0C0 A024D0C9 */  sb         $a0, %lo(D_800ED0C9)($at)
/* ACC4 8000A0C4 3C01800F */  lui        $at, %hi(D_800F2BD4)
/* ACC8 8000A0C8 00230821 */  addu       $at, $at, $v1
/* ACCC 8000A0CC A0202BD4 */  sb         $zero, %lo(D_800F2BD4)($at)
/* ACD0 8000A0D0 3C01800F */  lui        $at, %hi(D_800F64EE)
/* ACD4 8000A0D4 00230821 */  addu       $at, $at, $v1
/* ACD8 8000A0D8 A02464EE */  sb         $a0, %lo(D_800F64EE)($at)
.L8000A0DC:
/* ACDC 8000A0DC 3C01800F */  lui        $at, %hi(D_800ECB08)
/* ACE0 8000A0E0 00220821 */  addu       $at, $at, $v0
/* ACE4 8000A0E4 A420CB08 */  sh         $zero, %lo(D_800ECB08)($at)
/* ACE8 8000A0E8 0800286A */  j          .L8000A1A8
/* ACEC 8000A0EC 00001021 */   addu      $v0, $zero, $zero
.L8000A0F0:
/* ACF0 8000A0F0 00101400 */  sll        $v0, $s0, 0x10
/* ACF4 8000A0F4 00022C03 */  sra        $a1, $v0, 0x10
/* ACF8 8000A0F8 3C03800F */  lui        $v1, %hi(D_800ECB08)
/* ACFC 8000A0FC 2463CB08 */  addiu      $v1, $v1, %lo(D_800ECB08)
/* AD00 8000A100 00051040 */  sll        $v0, $a1, 1
/* AD04 8000A104 00433021 */  addu       $a2, $v0, $v1
/* AD08 8000A108 94C20000 */  lhu        $v0, ($a2)
/* AD0C 8000A10C 24420001 */  addiu      $v0, $v0, 1
/* AD10 8000A110 A4C20000 */  sh         $v0, ($a2)
/* AD14 8000A114 3C03800F */  lui        $v1, %hi(D_800ED0C9)
/* AD18 8000A118 00651821 */  addu       $v1, $v1, $a1
/* AD1C 8000A11C 9063D0C9 */  lbu        $v1, %lo(D_800ED0C9)($v1)
/* AD20 8000A120 3C02800F */  lui        $v0, %hi(D_800F0A38)
/* AD24 8000A124 00451021 */  addu       $v0, $v0, $a1
/* AD28 8000A128 80420A38 */  lb         $v0, %lo(D_800F0A38)($v0)
/* AD2C 8000A12C 00621821 */  addu       $v1, $v1, $v0
/* AD30 8000A130 30630003 */  andi       $v1, $v1, 3
/* AD34 8000A134 00041400 */  sll        $v0, $a0, 0x10
/* AD38 8000A138 00021403 */  sra        $v0, $v0, 0x10
/* AD3C 8000A13C 1062000C */  beq        $v1, $v0, .L8000A170
/* AD40 8000A140 00001021 */   addu      $v0, $zero, $zero
/* AD44 8000A144 3C01800F */  lui        $at, %hi(D_800F0A38)
/* AD48 8000A148 00250821 */  addu       $at, $at, $a1
/* AD4C 8000A14C A0270A38 */  sb         $a3, %lo(D_800F0A38)($at)
/* AD50 8000A150 3C01800F */  lui        $at, %hi(D_800ED0C9)
/* AD54 8000A154 00250821 */  addu       $at, $at, $a1
/* AD58 8000A158 A024D0C9 */  sb         $a0, %lo(D_800ED0C9)($at)
/* AD5C 8000A15C 3C01800F */  lui        $at, %hi(D_800F2BD4)
/* AD60 8000A160 00250821 */  addu       $at, $at, $a1
/* AD64 8000A164 A0202BD4 */  sb         $zero, %lo(D_800F2BD4)($at)
/* AD68 8000A168 0800286A */  j          .L8000A1A8
/* AD6C 8000A16C A4C00000 */   sh        $zero, ($a2)
.L8000A170:
/* AD70 8000A170 00101400 */  sll        $v0, $s0, 0x10
/* AD74 8000A174 00021403 */  sra        $v0, $v0, 0x10
/* AD78 8000A178 3C01800F */  lui        $at, %hi(D_800ED0C9)
/* AD7C 8000A17C 00220821 */  addu       $at, $at, $v0
/* AD80 8000A180 A024D0C9 */  sb         $a0, %lo(D_800ED0C9)($at)
/* AD84 8000A184 3C01800F */  lui        $at, %hi(D_800F0A38)
/* AD88 8000A188 00220821 */  addu       $at, $at, $v0
/* AD8C 8000A18C 90220A38 */  lbu        $v0, %lo(D_800F0A38)($at)
/* AD90 8000A190 00021600 */  sll        $v0, $v0, 0x18
/* AD94 8000A194 00021603 */  sra        $v0, $v0, 0x18
/* AD98 8000A198 00520018 */  mult       $v0, $s2
/* AD9C 8000A19C 00001012 */  mflo       $v0
/* ADA0 8000A1A0 00021400 */  sll        $v0, $v0, 0x10
/* ADA4 8000A1A4 00021403 */  sra        $v0, $v0, 0x10
.L8000A1A8:
/* ADA8 8000A1A8 8FBF001C */  lw         $ra, 0x1c($sp)
/* ADAC 8000A1AC 8FB20018 */  lw         $s2, 0x18($sp)
/* ADB0 8000A1B0 8FB10014 */  lw         $s1, 0x14($sp)
/* ADB4 8000A1B4 8FB00010 */  lw         $s0, 0x10($sp)
/* ADB8 8000A1B8 03E00008 */  jr         $ra
/* ADBC 8000A1BC 27BD0020 */   addiu     $sp, $sp, 0x20
