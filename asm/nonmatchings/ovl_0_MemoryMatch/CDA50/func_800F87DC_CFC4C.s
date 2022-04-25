	.set noat
	.set noreorder

glabel func_800F87DC_CFC4C
/* CFC4C 800F87DC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CFC50 800F87E0 AFBF0018 */  sw         $ra, 0x18($sp)
/* CFC54 800F87E4 AFB10014 */  sw         $s1, 0x14($sp)
/* CFC58 800F87E8 AFB00010 */  sw         $s0, 0x10($sp)
/* CFC5C 800F87EC 00808021 */  addu       $s0, $a0, $zero
/* CFC60 800F87F0 9211004C */  lbu        $s1, 0x4c($s0)
/* CFC64 800F87F4 3C028010 */  lui        $v0, %hi(func_800F89A8_CFE18)
/* CFC68 800F87F8 244289A8 */  addiu      $v0, $v0, %lo(func_800F89A8_CFE18)
/* CFC6C 800F87FC AE020014 */  sw         $v0, 0x14($s0)
/* CFC70 800F8800 3C013F80 */  lui        $at, 0x3f80
/* CFC74 800F8804 44810000 */  mtc1       $at, $f0
/* CFC78 800F8808 00000000 */  nop
/* CFC7C 800F880C E6000038 */  swc1       $f0, 0x38($s0)
/* CFC80 800F8810 E6000034 */  swc1       $f0, 0x34($s0)
/* CFC84 800F8814 3223FFFF */  andi       $v1, $s1, 0xffff
/* CFC88 800F8818 2C620005 */  sltiu      $v0, $v1, 5
/* CFC8C 800F881C 1040001A */  beqz       $v0, .L800F8888
/* CFC90 800F8820 E6000030 */   swc1      $f0, 0x30($s0)
/* CFC94 800F8824 00031080 */  sll        $v0, $v1, 2
/* CFC98 800F8828 3C018010 */  lui        $at, %hi(D_800FDAA8)
/* CFC9C 800F882C 00220821 */  addu       $at, $at, $v0
/* CFCA0 800F8830 8C22DAA8 */  lw         $v0, %lo(D_800FDAA8)($at)
/* CFCA4 800F8834 00400008 */  jr         $v0
/* CFCA8 800F8838 00000000 */   nop
/* CFCAC 800F883C 3C040012 */  lui        $a0, 0x12
/* CFCB0 800F8840 0803E21D */  j          .L800F8874
/* CFCB4 800F8844 34840001 */   ori       $a0, $a0, 1
/* CFCB8 800F8848 3C040012 */  lui        $a0, 0x12
/* CFCBC 800F884C 0803E21D */  j          .L800F8874
/* CFCC0 800F8850 34840002 */   ori       $a0, $a0, 2
/* CFCC4 800F8854 3C040012 */  lui        $a0, 0x12
/* CFCC8 800F8858 0803E21D */  j          .L800F8874
/* CFCCC 800F885C 34840003 */   ori       $a0, $a0, 3
/* CFCD0 800F8860 3C040012 */  lui        $a0, 0x12
/* CFCD4 800F8864 0803E21D */  j          .L800F8874
/* CFCD8 800F8868 34840004 */   ori       $a0, $a0, 4
/* CFCDC 800F886C 3C040012 */  lui        $a0, 0x12
/* CFCE0 800F8870 34840005 */  ori        $a0, $a0, 5
.L800F8874:
/* CFCE4 800F8874 0C005D4A */  jal        func_80017528
/* CFCE8 800F8878 240500B9 */   addiu     $a1, $zero, 0xb9
/* CFCEC 800F887C 8E030040 */  lw         $v1, 0x40($s0)
/* CFCF0 800F8880 A4620000 */  sh         $v0, ($v1)
/* CFCF4 800F8884 3223FFFF */  andi       $v1, $s1, 0xffff
.L800F8888:
/* CFCF8 800F8888 24020006 */  addiu      $v0, $zero, 6
/* CFCFC 800F888C 10620011 */  beq        $v1, $v0, .L800F88D4
/* CFD00 800F8890 28620007 */   slti      $v0, $v1, 7
/* CFD04 800F8894 10400005 */  beqz       $v0, .L800F88AC
/* CFD08 800F8898 24020005 */   addiu     $v0, $zero, 5
/* CFD0C 800F889C 1062000A */  beq        $v1, $v0, .L800F88C8
/* CFD10 800F88A0 00031040 */   sll       $v0, $v1, 1
/* CFD14 800F88A4 0803E244 */  j          .L800F8910
/* CFD18 800F88A8 00000000 */   nop
.L800F88AC:
/* CFD1C 800F88AC 24020007 */  addiu      $v0, $zero, 7
/* CFD20 800F88B0 1062000B */  beq        $v1, $v0, .L800F88E0
/* CFD24 800F88B4 24020008 */   addiu     $v0, $zero, 8
/* CFD28 800F88B8 1062000C */  beq        $v1, $v0, .L800F88EC
/* CFD2C 800F88BC 3223FFFF */   andi      $v1, $s1, 0xffff
/* CFD30 800F88C0 0803E243 */  j          .L800F890C
/* CFD34 800F88C4 00000000 */   nop
.L800F88C8:
/* CFD38 800F88C8 3C028010 */  lui        $v0, %hi(D_800FE2E8)
/* CFD3C 800F88CC 0803E23D */  j          .L800F88F4
/* CFD40 800F88D0 8C42E2E8 */   lw        $v0, %lo(D_800FE2E8)($v0)
.L800F88D4:
/* CFD44 800F88D4 3C028010 */  lui        $v0, %hi(D_800FE2EC)
/* CFD48 800F88D8 0803E23D */  j          .L800F88F4
/* CFD4C 800F88DC 8C42E2EC */   lw        $v0, %lo(D_800FE2EC)($v0)
.L800F88E0:
/* CFD50 800F88E0 3C028010 */  lui        $v0, %hi(D_800FE2F0)
/* CFD54 800F88E4 0803E23D */  j          .L800F88F4
/* CFD58 800F88E8 8C42E2F0 */   lw        $v0, %lo(D_800FE2F0)($v0)
.L800F88EC:
/* CFD5C 800F88EC 3C028010 */  lui        $v0, %hi(D_800FE2F4)
/* CFD60 800F88F0 8C42E2F4 */  lw         $v0, %lo(D_800FE2F4)($v0)
.L800F88F4:
/* CFD64 800F88F4 8C420040 */  lw         $v0, 0x40($v0)
/* CFD68 800F88F8 0C008FF2 */  jal        func_80023FC8
/* CFD6C 800F88FC 84440000 */   lh        $a0, ($v0)
/* CFD70 800F8900 8E030040 */  lw         $v1, 0x40($s0)
/* CFD74 800F8904 A4620000 */  sh         $v0, ($v1)
/* CFD78 800F8908 3223FFFF */  andi       $v1, $s1, 0xffff
.L800F890C:
/* CFD7C 800F890C 00031040 */  sll        $v0, $v1, 1
.L800F8910:
/* CFD80 800F8910 00431021 */  addu       $v0, $v0, $v1
/* CFD84 800F8914 00021080 */  sll        $v0, $v0, 2
/* CFD88 800F8918 3C038010 */  lui        $v1, %hi(D_800FD7E4)
/* CFD8C 800F891C 2463D7E4 */  addiu      $v1, $v1, %lo(D_800FD7E4)
/* CFD90 800F8920 3C018010 */  lui        $at, %hi(D_800FD7F0)
/* CFD94 800F8924 00220821 */  addu       $at, $at, $v0
/* CFD98 800F8928 C420D7F0 */  lwc1       $f0, %lo(D_800FD7F0)($at)
/* CFD9C 800F892C C4620000 */  lwc1       $f2, ($v1)
/* CFDA0 800F8930 46020002 */  mul.s      $f0, $f0, $f2
/* CFDA4 800F8934 E6000018 */  swc1       $f0, 0x18($s0)
/* CFDA8 800F8938 3C018010 */  lui        $at, %hi(D_800FD7F4)
/* CFDAC 800F893C 00220821 */  addu       $at, $at, $v0
/* CFDB0 800F8940 C420D7F4 */  lwc1       $f0, %lo(D_800FD7F4)($at)
/* CFDB4 800F8944 C4620004 */  lwc1       $f2, 4($v1)
/* CFDB8 800F8948 46020002 */  mul.s      $f0, $f0, $f2
/* CFDBC 800F894C E600001C */  swc1       $f0, 0x1c($s0)
/* CFDC0 800F8950 3C018010 */  lui        $at, %hi(D_800FD7F8)
/* CFDC4 800F8954 00220821 */  addu       $at, $at, $v0
/* CFDC8 800F8958 C420D7F8 */  lwc1       $f0, %lo(D_800FD7F8)($at)
/* CFDCC 800F895C C4620008 */  lwc1       $f2, 8($v1)
/* CFDD0 800F8960 46020002 */  mul.s      $f0, $f0, $f2
/* CFDD4 800F8964 E6000020 */  swc1       $f0, 0x20($s0)
/* CFDD8 800F8968 8E020040 */  lw         $v0, 0x40($s0)
/* CFDDC 800F896C 84430000 */  lh         $v1, ($v0)
/* CFDE0 800F8970 3C04800F */  lui        $a0, %hi(D_800F2B7C)
/* CFDE4 800F8974 8C842B7C */  lw         $a0, %lo(D_800F2B7C)($a0)
/* CFDE8 800F8978 00031040 */  sll        $v0, $v1, 1
/* CFDEC 800F897C 00431021 */  addu       $v0, $v0, $v1
/* CFDF0 800F8980 00021180 */  sll        $v0, $v0, 6
/* CFDF4 800F8984 00441021 */  addu       $v0, $v0, $a0
/* CFDF8 800F8988 AC40004C */  sw         $zero, 0x4c($v0)
/* CFDFC 800F898C A200004E */  sb         $zero, 0x4e($s0)
/* CFE00 800F8990 A200004F */  sb         $zero, 0x4f($s0)
/* CFE04 800F8994 8FBF0018 */  lw         $ra, 0x18($sp)
/* CFE08 800F8998 8FB10014 */  lw         $s1, 0x14($sp)
/* CFE0C 800F899C 8FB00010 */  lw         $s0, 0x10($sp)
/* CFE10 800F89A0 03E00008 */  jr         $ra
/* CFE14 800F89A4 27BD0020 */   addiu     $sp, $sp, 0x20
