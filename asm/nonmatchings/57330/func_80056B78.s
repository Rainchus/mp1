	.set noat
	.set noreorder

glabel func_80056B78
/* 57778 80056B78 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5777C 80056B7C AFBF0014 */  sw         $ra, 0x14($sp)
/* 57780 80056B80 AFB00010 */  sw         $s0, 0x10($sp)
/* 57784 80056B84 3C10800F */  lui        $s0, %hi(D_800ED5C0)
/* 57788 80056B88 2610D5C0 */  addiu      $s0, $s0, %lo(D_800ED5C0)
/* 5778C 80056B8C 3C01800F */  lui        $at, %hi(D_800F65B8)
/* 57790 80056B90 A42065B8 */  sh         $zero, %lo(D_800F65B8)($at)
/* 57794 80056B94 3C01800F */  lui        $at, %hi(D_800F37A8)
/* 57798 80056B98 A42037A8 */  sh         $zero, %lo(D_800F37A8)($at)
/* 5779C 80056B9C 3C01800F */  lui        $at, %hi(D_800EE986)
/* 577A0 80056BA0 A420E986 */  sh         $zero, %lo(D_800EE986)($at)
/* 577A4 80056BA4 3C01800F */  lui        $at, %hi(D_800F64C6)
/* 577A8 80056BA8 A42064C6 */  sh         $zero, %lo(D_800F64C6)($at)
/* 577AC 80056BAC 3C01800F */  lui        $at, %hi(D_800F3298)
/* 577B0 80056BB0 A4203298 */  sh         $zero, %lo(D_800F3298)($at)
/* 577B4 80056BB4 3C01800F */  lui        $at, %hi(D_800F3180)
/* 577B8 80056BB8 A4203180 */  sh         $zero, %lo(D_800F3180)($at)
/* 577BC 80056BBC 3C01800F */  lui        $at, %hi(D_800ECC20)
/* 577C0 80056BC0 A420CC20 */  sh         $zero, %lo(D_800ECC20)($at)
/* 577C4 80056BC4 3C01800F */  lui        $at, %hi(D_800ED3C0)
/* 577C8 80056BC8 A420D3C0 */  sh         $zero, %lo(D_800ED3C0)($at)
/* 577CC 80056BCC 3C01800F */  lui        $at, %hi(D_800F65D8)
/* 577D0 80056BD0 A42065D8 */  sh         $zero, %lo(D_800F65D8)($at)
/* 577D4 80056BD4 3C01800F */  lui        $at, %hi(D_800F37E8)
/* 577D8 80056BD8 A42037E8 */  sh         $zero, %lo(D_800F37E8)($at)
/* 577DC 80056BDC 3C01800E */  lui        $at, %hi(D_800D86E4)
/* 577E0 80056BE0 AC2086E4 */  sw         $zero, %lo(D_800D86E4)($at)
/* 577E4 80056BE4 3C01800F */  lui        $at, %hi(D_800F3FF0)
/* 577E8 80056BE8 AC203FF0 */  sw         $zero, %lo(D_800F3FF0)($at)
/* 577EC 80056BEC 2402FFFF */  addiu      $v0, $zero, -1
/* 577F0 80056BF0 3C01800F */  lui        $at, %hi(D_800F2CDC)
/* 577F4 80056BF4 0C010D18 */  jal        func_80043460
/* 577F8 80056BF8 A4222CDC */   sh        $v0, %lo(D_800F2CDC)($at)
/* 577FC 80056BFC 0C0117B8 */  jal        func_80045EE0
/* 57800 80056C00 00000000 */   nop
/* 57804 80056C04 0C0165E6 */  jal        func_80059798
/* 57808 80056C08 24040041 */   addiu     $a0, $zero, 0x41
/* 5780C 80056C0C 14400084 */  bnez       $v0, .L80056E20
/* 57810 80056C10 24020001 */   addiu     $v0, $zero, 1
/* 57814 80056C14 3C01800F */  lui        $at, %hi(D_800ED5CA)
/* 57818 80056C18 A420D5CA */  sh         $zero, %lo(D_800ED5CA)($at)
/* 5781C 80056C1C 3C01800F */  lui        $at, %hi(D_800ED5C8)
/* 57820 80056C20 A422D5C8 */  sh         $v0, %lo(D_800ED5C8)($at)
/* 57824 80056C24 3C01800F */  lui        $at, %hi(D_800ED5DC)
/* 57828 80056C28 A420D5DC */  sh         $zero, %lo(D_800ED5DC)($at)
/* 5782C 80056C2C 3C01800F */  lui        $at, %hi(D_800ED5DE)
/* 57830 80056C30 A420D5DE */  sh         $zero, %lo(D_800ED5DE)($at)
/* 57834 80056C34 0C0165E6 */  jal        func_80059798
/* 57838 80056C38 2404002C */   addiu     $a0, $zero, 0x2c
/* 5783C 80056C3C 14400011 */  bnez       $v0, .L80056C84
/* 57840 80056C40 24020001 */   addiu     $v0, $zero, 1
/* 57844 80056C44 3C03800F */  lui        $v1, %hi(D_800ED5C4)
/* 57848 80056C48 8463D5C4 */  lh         $v1, %lo(D_800ED5C4)($v1)
/* 5784C 80056C4C 1062000B */  beq        $v1, $v0, .L80056C7C
/* 57850 80056C50 28620002 */   slti      $v0, $v1, 2
/* 57854 80056C54 50400005 */  beql       $v0, $zero, .L80056C6C
/* 57858 80056C58 24020002 */   addiu     $v0, $zero, 2
/* 5785C 80056C5C 10600017 */  beqz       $v1, .L80056CBC
/* 57860 80056C60 24020014 */   addiu     $v0, $zero, 0x14
/* 57864 80056C64 08015B31 */  j          .L80056CC4
/* 57868 80056C68 A2000022 */   sb        $zero, 0x22($s0)
.L80056C6C:
/* 5786C 80056C6C 10620013 */  beq        $v1, $v0, .L80056CBC
/* 57870 80056C70 24020032 */   addiu     $v0, $zero, 0x32
/* 57874 80056C74 08015B31 */  j          .L80056CC4
/* 57878 80056C78 A2000022 */   sb        $zero, 0x22($s0)
.L80056C7C:
/* 5787C 80056C7C 08015B2F */  j          .L80056CBC
/* 57880 80056C80 24020023 */   addiu     $v0, $zero, 0x23
.L80056C84:
/* 57884 80056C84 86030004 */  lh         $v1, 4($s0)
/* 57888 80056C88 1062000B */  beq        $v1, $v0, .L80056CB8
/* 5788C 80056C8C 28620002 */   slti      $v0, $v1, 2
/* 57890 80056C90 50400005 */  beql       $v0, $zero, .L80056CA8
/* 57894 80056C94 24020002 */   addiu     $v0, $zero, 2
/* 57898 80056C98 10600008 */  beqz       $v1, .L80056CBC
/* 5789C 80056C9C 2402000A */   addiu     $v0, $zero, 0xa
/* 578A0 80056CA0 08015B31 */  j          .L80056CC4
/* 578A4 80056CA4 A2000022 */   sb        $zero, 0x22($s0)
.L80056CA8:
/* 578A8 80056CA8 10620004 */  beq        $v1, $v0, .L80056CBC
/* 578AC 80056CAC 2402001E */   addiu     $v0, $zero, 0x1e
/* 578B0 80056CB0 08015B31 */  j          .L80056CC4
/* 578B4 80056CB4 A2000022 */   sb        $zero, 0x22($s0)
.L80056CB8:
/* 578B8 80056CB8 24020014 */  addiu      $v0, $zero, 0x14
.L80056CBC:
/* 578BC 80056CBC A6020006 */  sh         $v0, 6($s0)
/* 578C0 80056CC0 A2000022 */  sb         $zero, 0x22($s0)
.L80056CC4:
/* 578C4 80056CC4 A2000023 */  sb         $zero, 0x23($s0)
/* 578C8 80056CC8 24020001 */  addiu      $v0, $zero, 1
/* 578CC 80056CCC A2020024 */  sb         $v0, 0x24($s0)
/* 578D0 80056CD0 00008021 */  addu       $s0, $zero, $zero
.L80056CD4:
/* 578D4 80056CD4 0C014AA3 */  jal        func_80052A8C
/* 578D8 80056CD8 02002021 */   addu      $a0, $s0, $zero
/* 578DC 80056CDC A440000C */  sh         $zero, 0xc($v0)
/* 578E0 80056CE0 A0400016 */  sb         $zero, 0x16($v0)
/* 578E4 80056CE4 A4400024 */  sh         $zero, 0x24($v0)
/* 578E8 80056CE8 A4400026 */  sh         $zero, 0x26($v0)
/* 578EC 80056CEC A0400028 */  sb         $zero, 0x28($v0)
/* 578F0 80056CF0 A0400029 */  sb         $zero, 0x29($v0)
/* 578F4 80056CF4 A040002A */  sb         $zero, 0x2a($v0)
/* 578F8 80056CF8 A040002B */  sb         $zero, 0x2b($v0)
/* 578FC 80056CFC A040002C */  sb         $zero, 0x2c($v0)
/* 57900 80056D00 A040002D */  sb         $zero, 0x2d($v0)
/* 57904 80056D04 A040002E */  sb         $zero, 0x2e($v0)
/* 57908 80056D08 26100001 */  addiu      $s0, $s0, 1
/* 5790C 80056D0C 2A020004 */  slti       $v0, $s0, 4
/* 57910 80056D10 1440FFF0 */  bnez       $v0, .L80056CD4
/* 57914 80056D14 00000000 */   nop
/* 57918 80056D18 00008021 */  addu       $s0, $zero, $zero
/* 5791C 80056D1C 3C03800F */  lui        $v1, %hi(D_800ED154)
/* 57920 80056D20 2463D154 */  addiu      $v1, $v1, %lo(D_800ED154)
/* 57924 80056D24 00101040 */  sll        $v0, $s0, 1
.L80056D28:
/* 57928 80056D28 00431021 */  addu       $v0, $v0, $v1
/* 5792C 80056D2C A4400000 */  sh         $zero, ($v0)
/* 57930 80056D30 26100001 */  addiu      $s0, $s0, 1
/* 57934 80056D34 2A020020 */  slti       $v0, $s0, 0x20
/* 57938 80056D38 1440FFFB */  bnez       $v0, .L80056D28
/* 5793C 80056D3C 00101040 */   sll       $v0, $s0, 1
/* 57940 80056D40 0C01660B */  jal        func_8005982C
/* 57944 80056D44 24040046 */   addiu     $a0, $zero, 0x46
/* 57948 80056D48 0C01660B */  jal        func_8005982C
/* 5794C 80056D4C 24040047 */   addiu     $a0, $zero, 0x47
/* 57950 80056D50 0C01660B */  jal        func_8005982C
/* 57954 80056D54 24040048 */   addiu     $a0, $zero, 0x48
/* 57958 80056D58 0C01660B */  jal        func_8005982C
/* 5795C 80056D5C 24040049 */   addiu     $a0, $zero, 0x49
/* 57960 80056D60 0C01660B */  jal        func_8005982C
/* 57964 80056D64 2404004A */   addiu     $a0, $zero, 0x4a
/* 57968 80056D68 0C01660B */  jal        func_8005982C
/* 5796C 80056D6C 2404004B */   addiu     $a0, $zero, 0x4b
/* 57970 80056D70 0C01660B */  jal        func_8005982C
/* 57974 80056D74 2404004C */   addiu     $a0, $zero, 0x4c
/* 57978 80056D78 0C01660B */  jal        func_8005982C
/* 5797C 80056D7C 2404004F */   addiu     $a0, $zero, 0x4f
/* 57980 80056D80 0C01660B */  jal        func_8005982C
/* 57984 80056D84 24040050 */   addiu     $a0, $zero, 0x50
/* 57988 80056D88 0C01660B */  jal        func_8005982C
/* 5798C 80056D8C 24040051 */   addiu     $a0, $zero, 0x51
/* 57990 80056D90 0C01660B */  jal        func_8005982C
/* 57994 80056D94 24040052 */   addiu     $a0, $zero, 0x52
/* 57998 80056D98 0C01660B */  jal        func_8005982C
/* 5799C 80056D9C 24040053 */   addiu     $a0, $zero, 0x53
/* 579A0 80056DA0 0C01660B */  jal        func_8005982C
/* 579A4 80056DA4 24040054 */   addiu     $a0, $zero, 0x54
/* 579A8 80056DA8 0C01660B */  jal        func_8005982C
/* 579AC 80056DAC 24040055 */   addiu     $a0, $zero, 0x55
/* 579B0 80056DB0 0C01660B */  jal        func_8005982C
/* 579B4 80056DB4 24040056 */   addiu     $a0, $zero, 0x56
/* 579B8 80056DB8 0C01660B */  jal        func_8005982C
/* 579BC 80056DBC 24040057 */   addiu     $a0, $zero, 0x57
/* 579C0 80056DC0 0C01660B */  jal        func_8005982C
/* 579C4 80056DC4 24040058 */   addiu     $a0, $zero, 0x58
/* 579C8 80056DC8 0C01660B */  jal        func_8005982C
/* 579CC 80056DCC 24040059 */   addiu     $a0, $zero, 0x59
/* 579D0 80056DD0 0C01660B */  jal        func_8005982C
/* 579D4 80056DD4 2404005A */   addiu     $a0, $zero, 0x5a
/* 579D8 80056DD8 0C01660B */  jal        func_8005982C
/* 579DC 80056DDC 2404005B */   addiu     $a0, $zero, 0x5b
/* 579E0 80056DE0 0C01660B */  jal        func_8005982C
/* 579E4 80056DE4 2404005C */   addiu     $a0, $zero, 0x5c
/* 579E8 80056DE8 0C01660B */  jal        func_8005982C
/* 579EC 80056DEC 2404005D */   addiu     $a0, $zero, 0x5d
/* 579F0 80056DF0 0C01660B */  jal        func_8005982C
/* 579F4 80056DF4 24040042 */   addiu     $a0, $zero, 0x42
/* 579F8 80056DF8 0C01660B */  jal        func_8005982C
/* 579FC 80056DFC 24040043 */   addiu     $a0, $zero, 0x43
/* 57A00 80056E00 0C01660B */  jal        func_8005982C
/* 57A04 80056E04 2404004D */   addiu     $a0, $zero, 0x4d
/* 57A08 80056E08 0C01660B */  jal        func_8005982C
/* 57A0C 80056E0C 24040044 */   addiu     $a0, $zero, 0x44
/* 57A10 80056E10 0C01660B */  jal        func_8005982C
/* 57A14 80056E14 2404004E */   addiu     $a0, $zero, 0x4e
/* 57A18 80056E18 0C01660B */  jal        func_8005982C
/* 57A1C 80056E1C 24040041 */   addiu     $a0, $zero, 0x41
.L80056E20:
/* 57A20 80056E20 8FBF0014 */  lw         $ra, 0x14($sp)
/* 57A24 80056E24 8FB00010 */  lw         $s0, 0x10($sp)
/* 57A28 80056E28 03E00008 */  jr         $ra
/* 57A2C 80056E2C 27BD0018 */   addiu     $sp, $sp, 0x18
