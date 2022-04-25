	.set noat
	.set noreorder

glabel func_8005B0C4
/* 5BCC4 8005B0C4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5BCC8 8005B0C8 AFBF0020 */  sw         $ra, 0x20($sp)
/* 5BCCC 8005B0CC AFB1001C */  sw         $s1, 0x1c($sp)
/* 5BCD0 8005B0D0 AFB00018 */  sw         $s0, 0x18($sp)
/* 5BCD4 8005B0D4 00008021 */  addu       $s0, $zero, $zero
/* 5BCD8 8005B0D8 24110001 */  addiu      $s1, $zero, 1
/* 5BCDC 8005B0DC 00102400 */  sll        $a0, $s0, 0x10
.L8005B0E0:
/* 5BCE0 8005B0E0 0C00507F */  jal        func_800141FC
/* 5BCE4 8005B0E4 00042403 */   sra       $a0, $a0, 0x10
/* 5BCE8 8005B0E8 10510006 */  beq        $v0, $s1, .L8005B104
/* 5BCEC 8005B0EC 24020004 */   addiu     $v0, $zero, 4
/* 5BCF0 8005B0F0 26100001 */  addiu      $s0, $s0, 1
/* 5BCF4 8005B0F4 2A020004 */  slti       $v0, $s0, 4
/* 5BCF8 8005B0F8 5440FFF9 */  bnel       $v0, $zero, .L8005B0E0
/* 5BCFC 8005B0FC 00102400 */   sll       $a0, $s0, 0x10
/* 5BD00 8005B100 24020004 */  addiu      $v0, $zero, 4
.L8005B104:
/* 5BD04 8005B104 16020003 */  bne        $s0, $v0, .L8005B114
/* 5BD08 8005B108 24020001 */   addiu     $v0, $zero, 1
/* 5BD0C 8005B10C 3C01800C */  lui        $at, %hi(D_800C572F)
/* 5BD10 8005B110 A022572F */  sb         $v0, %lo(D_800C572F)($at)
.L8005B114:
/* 5BD14 8005B114 0C006502 */  jal        func_80019408
/* 5BD18 8005B118 27A40010 */   addiu     $a0, $sp, 0x10
/* 5BD1C 8005B11C 00408821 */  addu       $s1, $v0, $zero
/* 5BD20 8005B120 12200004 */  beqz       $s1, .L8005B134
/* 5BD24 8005B124 24020001 */   addiu     $v0, $zero, 1
/* 5BD28 8005B128 3C01800E */  lui        $at, %hi(D_800D8720)
/* 5BD2C 8005B12C 08016C4F */  j          .L8005B13C
/* 5BD30 8005B130 A0208720 */   sb        $zero, %lo(D_800D8720)($at)
.L8005B134:
/* 5BD34 8005B134 3C01800E */  lui        $at, %hi(D_800D8720)
/* 5BD38 8005B138 A0228720 */  sb         $v0, %lo(D_800D8720)($at)
.L8005B13C:
/* 5BD3C 8005B13C 3C02800E */  lui        $v0, %hi(D_800D8720)
/* 5BD40 8005B140 90428720 */  lbu        $v0, %lo(D_800D8720)($v0)
/* 5BD44 8005B144 10400018 */  beqz       $v0, .L8005B1A8
/* 5BD48 8005B148 00002021 */   addu      $a0, $zero, $zero
/* 5BD4C 8005B14C 3C05800F */  lui        $a1, %hi(D_800ED100)
/* 5BD50 8005B150 24A5D100 */  addiu      $a1, $a1, %lo(D_800ED100)
/* 5BD54 8005B154 0C006569 */  jal        func_800195A4
/* 5BD58 8005B158 24060094 */   addiu     $a2, $zero, 0x94
/* 5BD5C 8005B15C 00408821 */  addu       $s1, $v0, $zero
/* 5BD60 8005B160 24040094 */  addiu      $a0, $zero, 0x94
/* 5BD64 8005B164 3C05800F */  lui        $a1, %hi(D_800F32B0)
/* 5BD68 8005B168 24A532B0 */  addiu      $a1, $a1, %lo(D_800F32B0)
/* 5BD6C 8005B16C 0C006569 */  jal        func_800195A4
/* 5BD70 8005B170 240600C0 */   addiu     $a2, $zero, 0xc0
/* 5BD74 8005B174 02228825 */  or         $s1, $s1, $v0
/* 5BD78 8005B178 24040154 */  addiu      $a0, $zero, 0x154
/* 5BD7C 8005B17C 3C05800F */  lui        $a1, %hi(D_800ED5C0)
/* 5BD80 8005B180 24A5D5C0 */  addiu      $a1, $a1, %lo(D_800ED5C0)
/* 5BD84 8005B184 0C006569 */  jal        func_800195A4
/* 5BD88 8005B188 24060026 */   addiu     $a2, $zero, 0x26
/* 5BD8C 8005B18C 02228825 */  or         $s1, $s1, $v0
/* 5BD90 8005B190 2404017A */  addiu      $a0, $zero, 0x17a
/* 5BD94 8005B194 3C05800F */  lui        $a1, %hi(D_800F37B8)
/* 5BD98 8005B198 24A537B8 */  addiu      $a1, $a1, %lo(D_800F37B8)
/* 5BD9C 8005B19C 0C006569 */  jal        func_800195A4
/* 5BDA0 8005B1A0 2406000F */   addiu     $a2, $zero, 0xf
/* 5BDA4 8005B1A4 02228825 */  or         $s1, $s1, $v0
.L8005B1A8:
/* 5BDA8 8005B1A8 3C01800F */  lui        $at, %hi(D_800ED5DE)
/* 5BDAC 8005B1AC 16200009 */  bnez       $s1, .L8005B1D4
/* 5BDB0 8005B1B0 A420D5DE */   sh        $zero, %lo(D_800ED5DE)($at)
/* 5BDB4 8005B1B4 0C016BFB */  jal        func_8005AFEC
/* 5BDB8 8005B1B8 00000000 */   nop
/* 5BDBC 8005B1BC 0C016BF2 */  jal        func_8005AFC8
/* 5BDC0 8005B1C0 00408021 */   addu      $s0, $v0, $zero
/* 5BDC4 8005B1C4 3210FFFF */  andi       $s0, $s0, 0xffff
/* 5BDC8 8005B1C8 3042FFFF */  andi       $v0, $v0, 0xffff
/* 5BDCC 8005B1CC 56020001 */  bnel       $s0, $v0, .L8005B1D4
/* 5BDD0 8005B1D0 24110001 */   addiu     $s1, $zero, 1
.L8005B1D4:
/* 5BDD4 8005B1D4 3C02800F */  lui        $v0, %hi(D_800ED100)
/* 5BDD8 8005B1D8 9042D100 */  lbu        $v0, %lo(D_800ED100)($v0)
/* 5BDDC 8005B1DC 38420012 */  xori       $v0, $v0, 0x12
/* 5BDE0 8005B1E0 0002102B */  sltu       $v0, $zero, $v0
/* 5BDE4 8005B1E4 0011182B */  sltu       $v1, $zero, $s1
/* 5BDE8 8005B1E8 00431025 */  or         $v0, $v0, $v1
/* 5BDEC 8005B1EC 10400003 */  beqz       $v0, .L8005B1FC
/* 5BDF0 8005B1F0 00000000 */   nop
/* 5BDF4 8005B1F4 0C016C18 */  jal        func_8005B060
/* 5BDF8 8005B1F8 00000000 */   nop
.L8005B1FC:
/* 5BDFC 8005B1FC 0C0165E6 */  jal        func_80059798
/* 5BE00 8005B200 24040010 */   addiu     $a0, $zero, 0x10
/* 5BE04 8005B204 10400002 */  beqz       $v0, .L8005B210
/* 5BE08 8005B208 24040001 */   addiu     $a0, $zero, 1
/* 5BE0C 8005B20C 00002021 */  addu       $a0, $zero, $zero
.L8005B210:
/* 5BE10 8005B210 0C002CD9 */  jal        func_8000B364
/* 5BE14 8005B214 00000000 */   nop
/* 5BE18 8005B218 3C02800F */  lui        $v0, %hi(D_800ED100)
/* 5BE1C 8005B21C 9042D100 */  lbu        $v0, %lo(D_800ED100)($v0)
/* 5BE20 8005B220 38420012 */  xori       $v0, $v0, 0x12
/* 5BE24 8005B224 2C420001 */  sltiu      $v0, $v0, 1
/* 5BE28 8005B228 0011182B */  sltu       $v1, $zero, $s1
/* 5BE2C 8005B22C 00431024 */  and        $v0, $v0, $v1
/* 5BE30 8005B230 8FBF0020 */  lw         $ra, 0x20($sp)
/* 5BE34 8005B234 8FB1001C */  lw         $s1, 0x1c($sp)
/* 5BE38 8005B238 8FB00018 */  lw         $s0, 0x18($sp)
/* 5BE3C 8005B23C 03E00008 */  jr         $ra
/* 5BE40 8005B240 27BD0028 */   addiu     $sp, $sp, 0x28
