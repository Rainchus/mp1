	.set noat
	.set noreorder

glabel func_800FC9E4_D3E54
/* D3E54 800FC9E4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D3E58 800FC9E8 AFBF0024 */  sw         $ra, 0x24($sp)
/* D3E5C 800FC9EC AFB40020 */  sw         $s4, 0x20($sp)
/* D3E60 800FC9F0 AFB3001C */  sw         $s3, 0x1c($sp)
/* D3E64 800FC9F4 AFB20018 */  sw         $s2, 0x18($sp)
/* D3E68 800FC9F8 AFB10014 */  sw         $s1, 0x14($sp)
/* D3E6C 800FC9FC AFB00010 */  sw         $s0, 0x10($sp)
/* D3E70 800FCA00 00A09821 */  addu       $s3, $a1, $zero
/* D3E74 800FCA04 00C0A021 */  addu       $s4, $a2, $zero
/* D3E78 800FCA08 00809021 */  addu       $s2, $a0, $zero
/* D3E7C 800FCA0C 00042400 */  sll        $a0, $a0, 0x10
/* D3E80 800FCA10 00042403 */  sra        $a0, $a0, 0x10
/* D3E84 800FCA14 3C03800F */  lui        $v1, %hi(D_800F2B7C)
/* D3E88 800FCA18 8C632B7C */  lw         $v1, %lo(D_800F2B7C)($v1)
/* D3E8C 800FCA1C 00041040 */  sll        $v0, $a0, 1
/* D3E90 800FCA20 00441021 */  addu       $v0, $v0, $a0
/* D3E94 800FCA24 00021180 */  sll        $v0, $v0, 6
/* D3E98 800FCA28 00431021 */  addu       $v0, $v0, $v1
/* D3E9C 800FCA2C 8C43006C */  lw         $v1, 0x6c($v0)
/* D3EA0 800FCA30 3C02800F */  lui        $v0, %hi(D_800F37F0)
/* D3EA4 800FCA34 904237F0 */  lbu        $v0, %lo(D_800F37F0)($v0)
/* D3EA8 800FCA38 00021080 */  sll        $v0, $v0, 2
/* D3EAC 800FCA3C 00431021 */  addu       $v0, $v0, $v1
/* D3EB0 800FCA40 8C500008 */  lw         $s0, 8($v0)
/* D3EB4 800FCA44 3C11800F */  lui        $s1, %hi(D_800F37F0)
/* D3EB8 800FCA48 923137F0 */  lbu        $s1, %lo(D_800F37F0)($s1)
/* D3EBC 800FCA4C 2622FFFF */  addiu      $v0, $s1, -1
/* D3EC0 800FCA50 04410004 */  bgez       $v0, .L800FCA64
/* D3EC4 800FCA54 00408821 */   addu      $s1, $v0, $zero
/* D3EC8 800FCA58 3C11800F */  lui        $s1, %hi(D_800F37DA)
/* D3ECC 800FCA5C 923137DA */  lbu        $s1, %lo(D_800F37DA)($s1)
/* D3ED0 800FCA60 2631FFFF */  addiu      $s1, $s1, -1
.L800FCA64:
/* D3ED4 800FCA64 0C017F57 */  jal        func_8005FD5C
/* D3ED8 800FCA68 00000000 */   nop
/* D3EDC 800FCA6C 3042FFFF */  andi       $v0, $v0, 0xffff
/* D3EE0 800FCA70 3C03800F */  lui        $v1, %hi(D_800F64F8)
/* D3EE4 800FCA74 906364F8 */  lbu        $v1, %lo(D_800F64F8)($v1)
/* D3EE8 800FCA78 00431021 */  addu       $v0, $v0, $v1
/* D3EEC 800FCA7C 10400029 */  beqz       $v0, .L800FCB24
/* D3EF0 800FCA80 00121C00 */   sll       $v1, $s2, 0x10
/* D3EF4 800FCA84 00603021 */  addu       $a2, $v1, $zero
/* D3EF8 800FCA88 00031C03 */  sra        $v1, $v1, 0x10
/* D3EFC 800FCA8C 3C04800F */  lui        $a0, %hi(D_800F2B7C)
/* D3F00 800FCA90 8C842B7C */  lw         $a0, %lo(D_800F2B7C)($a0)
/* D3F04 800FCA94 00803821 */  addu       $a3, $a0, $zero
/* D3F08 800FCA98 00031040 */  sll        $v0, $v1, 1
/* D3F0C 800FCA9C 00431021 */  addu       $v0, $v0, $v1
/* D3F10 800FCAA0 00021180 */  sll        $v0, $v0, 6
/* D3F14 800FCAA4 00441021 */  addu       $v0, $v0, $a0
/* D3F18 800FCAA8 8C43006C */  lw         $v1, 0x6c($v0)
/* D3F1C 800FCAAC 00111400 */  sll        $v0, $s1, 0x10
/* D3F20 800FCAB0 00021383 */  sra        $v0, $v0, 0xe
/* D3F24 800FCAB4 00431021 */  addu       $v0, $v0, $v1
/* D3F28 800FCAB8 8C450008 */  lw         $a1, 8($v0)
/* D3F2C 800FCABC 84620072 */  lh         $v0, 0x72($v1)
/* D3F30 800FCAC0 1840009D */  blez       $v0, .L800FCD38
/* D3F34 800FCAC4 00008821 */   addu      $s1, $zero, $zero
/* D3F38 800FCAC8 00061C03 */  sra        $v1, $a2, 0x10
/* D3F3C 800FCACC 00031040 */  sll        $v0, $v1, 1
/* D3F40 800FCAD0 00431021 */  addu       $v0, $v0, $v1
/* D3F44 800FCAD4 00021180 */  sll        $v0, $v0, 6
/* D3F48 800FCAD8 00472021 */  addu       $a0, $v0, $a3
.L800FCADC:
/* D3F4C 800FCADC 94A20000 */  lhu        $v0, ($a1)
/* D3F50 800FCAE0 A6020000 */  sh         $v0, ($s0)
/* D3F54 800FCAE4 94A20002 */  lhu        $v0, 2($a1)
/* D3F58 800FCAE8 A6020002 */  sh         $v0, 2($s0)
/* D3F5C 800FCAEC 94A20004 */  lhu        $v0, 4($a1)
/* D3F60 800FCAF0 A6020004 */  sh         $v0, 4($s0)
/* D3F64 800FCAF4 26100010 */  addiu      $s0, $s0, 0x10
/* D3F68 800FCAF8 26220001 */  addiu      $v0, $s1, 1
/* D3F6C 800FCAFC 00408821 */  addu       $s1, $v0, $zero
/* D3F70 800FCB00 8C83006C */  lw         $v1, 0x6c($a0)
/* D3F74 800FCB04 00021400 */  sll        $v0, $v0, 0x10
/* D3F78 800FCB08 00021403 */  sra        $v0, $v0, 0x10
/* D3F7C 800FCB0C 84630072 */  lh         $v1, 0x72($v1)
/* D3F80 800FCB10 0043102A */  slt        $v0, $v0, $v1
/* D3F84 800FCB14 1440FFF1 */  bnez       $v0, .L800FCADC
/* D3F88 800FCB18 24A50010 */   addiu     $a1, $a1, 0x10
/* D3F8C 800FCB1C 0803F34E */  j          .L800FCD38
/* D3F90 800FCB20 00000000 */   nop
.L800FCB24:
/* D3F94 800FCB24 3C028010 */  lui        $v0, %hi(D_800FE1E2)
/* D3F98 800FCB28 9442E1E2 */  lhu        $v0, %lo(D_800FE1E2)($v0)
/* D3F9C 800FCB2C 30460001 */  andi       $a2, $v0, 1
/* D3FA0 800FCB30 54C0003B */  bnel       $a2, $zero, .L800FCC20
/* D3FA4 800FCB34 00603021 */   addu      $a2, $v1, $zero
/* D3FA8 800FCB38 00121C00 */  sll        $v1, $s2, 0x10
/* D3FAC 800FCB3C 00603821 */  addu       $a3, $v1, $zero
/* D3FB0 800FCB40 00031C03 */  sra        $v1, $v1, 0x10
/* D3FB4 800FCB44 3C04800F */  lui        $a0, %hi(D_800F2B7C)
/* D3FB8 800FCB48 8C842B7C */  lw         $a0, %lo(D_800F2B7C)($a0)
/* D3FBC 800FCB4C 00804021 */  addu       $t0, $a0, $zero
/* D3FC0 800FCB50 00031040 */  sll        $v0, $v1, 1
/* D3FC4 800FCB54 00431021 */  addu       $v0, $v0, $v1
/* D3FC8 800FCB58 00021180 */  sll        $v0, $v0, 6
/* D3FCC 800FCB5C 00441021 */  addu       $v0, $v0, $a0
/* D3FD0 800FCB60 8C43006C */  lw         $v1, 0x6c($v0)
/* D3FD4 800FCB64 00111400 */  sll        $v0, $s1, 0x10
/* D3FD8 800FCB68 00021383 */  sra        $v0, $v0, 0xe
/* D3FDC 800FCB6C 00431021 */  addu       $v0, $v0, $v1
/* D3FE0 800FCB70 8C420008 */  lw         $v0, 8($v0)
/* D3FE4 800FCB74 24450040 */  addiu      $a1, $v0, 0x40
/* D3FE8 800FCB78 84620072 */  lh         $v0, 0x72($v1)
/* D3FEC 800FCB7C 2442FFFC */  addiu      $v0, $v0, -4
/* D3FF0 800FCB80 00C2102A */  slt        $v0, $a2, $v0
/* D3FF4 800FCB84 10400017 */  beqz       $v0, .L800FCBE4
/* D3FF8 800FCB88 00008821 */   addu      $s1, $zero, $zero
/* D3FFC 800FCB8C 00071C03 */  sra        $v1, $a3, 0x10
/* D4000 800FCB90 00031040 */  sll        $v0, $v1, 1
/* D4004 800FCB94 00431021 */  addu       $v0, $v0, $v1
/* D4008 800FCB98 00021180 */  sll        $v0, $v0, 6
/* D400C 800FCB9C 00482021 */  addu       $a0, $v0, $t0
.L800FCBA0:
/* D4010 800FCBA0 94A20000 */  lhu        $v0, ($a1)
/* D4014 800FCBA4 A6020000 */  sh         $v0, ($s0)
/* D4018 800FCBA8 94A20002 */  lhu        $v0, 2($a1)
/* D401C 800FCBAC A6020002 */  sh         $v0, 2($s0)
/* D4020 800FCBB0 94A20004 */  lhu        $v0, 4($a1)
/* D4024 800FCBB4 A6020004 */  sh         $v0, 4($s0)
/* D4028 800FCBB8 26100010 */  addiu      $s0, $s0, 0x10
/* D402C 800FCBBC 26230001 */  addiu      $v1, $s1, 1
/* D4030 800FCBC0 00608821 */  addu       $s1, $v1, $zero
/* D4034 800FCBC4 00031C00 */  sll        $v1, $v1, 0x10
/* D4038 800FCBC8 00031C03 */  sra        $v1, $v1, 0x10
/* D403C 800FCBCC 8C82006C */  lw         $v0, 0x6c($a0)
/* D4040 800FCBD0 84420072 */  lh         $v0, 0x72($v0)
/* D4044 800FCBD4 2442FFFC */  addiu      $v0, $v0, -4
/* D4048 800FCBD8 0062182A */  slt        $v1, $v1, $v0
/* D404C 800FCBDC 1460FFF0 */  bnez       $v1, .L800FCBA0
/* D4050 800FCBE0 24A50010 */   addiu     $a1, $a1, 0x10
.L800FCBE4:
/* D4054 800FCBE4 96020030 */  lhu        $v0, 0x30($s0)
/* D4058 800FCBE8 A6020000 */  sh         $v0, ($s0)
/* D405C 800FCBEC 96020032 */  lhu        $v0, 0x32($s0)
/* D4060 800FCBF0 A6020002 */  sh         $v0, 2($s0)
/* D4064 800FCBF4 96020034 */  lhu        $v0, 0x34($s0)
/* D4068 800FCBF8 A6020004 */  sh         $v0, 4($s0)
/* D406C 800FCBFC 26100010 */  addiu      $s0, $s0, 0x10
/* D4070 800FCC00 96020010 */  lhu        $v0, 0x10($s0)
/* D4074 800FCC04 A6020000 */  sh         $v0, ($s0)
/* D4078 800FCC08 96020012 */  lhu        $v0, 0x12($s0)
/* D407C 800FCC0C A6020002 */  sh         $v0, 2($s0)
/* D4080 800FCC10 96020014 */  lhu        $v0, 0x14($s0)
/* D4084 800FCC14 A6020004 */  sh         $v0, 4($s0)
/* D4088 800FCC18 0803F32F */  j          .L800FCCBC
/* D408C 800FCC1C 26100010 */   addiu     $s0, $s0, 0x10
.L800FCC20:
/* D4090 800FCC20 00031C03 */  sra        $v1, $v1, 0x10
/* D4094 800FCC24 3C04800F */  lui        $a0, %hi(D_800F2B7C)
/* D4098 800FCC28 8C842B7C */  lw         $a0, %lo(D_800F2B7C)($a0)
/* D409C 800FCC2C 00803821 */  addu       $a3, $a0, $zero
/* D40A0 800FCC30 00031040 */  sll        $v0, $v1, 1
/* D40A4 800FCC34 00431021 */  addu       $v0, $v0, $v1
/* D40A8 800FCC38 00021180 */  sll        $v0, $v0, 6
/* D40AC 800FCC3C 00441021 */  addu       $v0, $v0, $a0
/* D40B0 800FCC40 8C43006C */  lw         $v1, 0x6c($v0)
/* D40B4 800FCC44 00111400 */  sll        $v0, $s1, 0x10
/* D40B8 800FCC48 00021383 */  sra        $v0, $v0, 0xe
/* D40BC 800FCC4C 00431021 */  addu       $v0, $v0, $v1
/* D40C0 800FCC50 8C450008 */  lw         $a1, 8($v0)
/* D40C4 800FCC54 84620072 */  lh         $v0, 0x72($v1)
/* D40C8 800FCC58 2442FFFE */  addiu      $v0, $v0, -2
/* D40CC 800FCC5C 18400017 */  blez       $v0, .L800FCCBC
/* D40D0 800FCC60 00008821 */   addu      $s1, $zero, $zero
/* D40D4 800FCC64 00061C03 */  sra        $v1, $a2, 0x10
/* D40D8 800FCC68 00031040 */  sll        $v0, $v1, 1
/* D40DC 800FCC6C 00431021 */  addu       $v0, $v0, $v1
/* D40E0 800FCC70 00021180 */  sll        $v0, $v0, 6
/* D40E4 800FCC74 00472021 */  addu       $a0, $v0, $a3
.L800FCC78:
/* D40E8 800FCC78 94A20000 */  lhu        $v0, ($a1)
/* D40EC 800FCC7C A6020000 */  sh         $v0, ($s0)
/* D40F0 800FCC80 94A20002 */  lhu        $v0, 2($a1)
/* D40F4 800FCC84 A6020002 */  sh         $v0, 2($s0)
/* D40F8 800FCC88 94A20004 */  lhu        $v0, 4($a1)
/* D40FC 800FCC8C A6020004 */  sh         $v0, 4($s0)
/* D4100 800FCC90 26100010 */  addiu      $s0, $s0, 0x10
/* D4104 800FCC94 26230001 */  addiu      $v1, $s1, 1
/* D4108 800FCC98 00608821 */  addu       $s1, $v1, $zero
/* D410C 800FCC9C 00031C00 */  sll        $v1, $v1, 0x10
/* D4110 800FCCA0 00031C03 */  sra        $v1, $v1, 0x10
/* D4114 800FCCA4 8C82006C */  lw         $v0, 0x6c($a0)
/* D4118 800FCCA8 84420072 */  lh         $v0, 0x72($v0)
/* D411C 800FCCAC 2442FFFE */  addiu      $v0, $v0, -2
/* D4120 800FCCB0 0062182A */  slt        $v1, $v1, $v0
/* D4124 800FCCB4 1460FFF0 */  bnez       $v1, .L800FCC78
/* D4128 800FCCB8 24A50010 */   addiu     $a1, $a1, 0x10
.L800FCCBC:
/* D412C 800FCCBC C6600000 */  lwc1       $f0, ($s3)
/* D4130 800FCCC0 4600008D */  trunc.w.s  $f2, $f0
/* D4134 800FCCC4 44021000 */  mfc1       $v0, $f2
/* D4138 800FCCC8 00000000 */  nop
/* D413C 800FCCCC A6020000 */  sh         $v0, ($s0)
/* D4140 800FCCD0 C6600004 */  lwc1       $f0, 4($s3)
/* D4144 800FCCD4 4600008D */  trunc.w.s  $f2, $f0
/* D4148 800FCCD8 44021000 */  mfc1       $v0, $f2
/* D414C 800FCCDC 00000000 */  nop
/* D4150 800FCCE0 A6020002 */  sh         $v0, 2($s0)
/* D4154 800FCCE4 C6600008 */  lwc1       $f0, 8($s3)
/* D4158 800FCCE8 4600008D */  trunc.w.s  $f2, $f0
/* D415C 800FCCEC 44021000 */  mfc1       $v0, $f2
/* D4160 800FCCF0 00000000 */  nop
/* D4164 800FCCF4 A6020004 */  sh         $v0, 4($s0)
/* D4168 800FCCF8 26100010 */  addiu      $s0, $s0, 0x10
/* D416C 800FCCFC C6800000 */  lwc1       $f0, ($s4)
/* D4170 800FCD00 4600008D */  trunc.w.s  $f2, $f0
/* D4174 800FCD04 44021000 */  mfc1       $v0, $f2
/* D4178 800FCD08 00000000 */  nop
/* D417C 800FCD0C A6020000 */  sh         $v0, ($s0)
/* D4180 800FCD10 C6800004 */  lwc1       $f0, 4($s4)
/* D4184 800FCD14 4600008D */  trunc.w.s  $f2, $f0
/* D4188 800FCD18 44021000 */  mfc1       $v0, $f2
/* D418C 800FCD1C 00000000 */  nop
/* D4190 800FCD20 A6020002 */  sh         $v0, 2($s0)
/* D4194 800FCD24 C6800008 */  lwc1       $f0, 8($s4)
/* D4198 800FCD28 4600008D */  trunc.w.s  $f2, $f0
/* D419C 800FCD2C 44021000 */  mfc1       $v0, $f2
/* D41A0 800FCD30 00000000 */  nop
/* D41A4 800FCD34 A6020004 */  sh         $v0, 4($s0)
.L800FCD38:
/* D41A8 800FCD38 8FBF0024 */  lw         $ra, 0x24($sp)
/* D41AC 800FCD3C 8FB40020 */  lw         $s4, 0x20($sp)
/* D41B0 800FCD40 8FB3001C */  lw         $s3, 0x1c($sp)
/* D41B4 800FCD44 8FB20018 */  lw         $s2, 0x18($sp)
/* D41B8 800FCD48 8FB10014 */  lw         $s1, 0x14($sp)
/* D41BC 800FCD4C 8FB00010 */  lw         $s0, 0x10($sp)
/* D41C0 800FCD50 03E00008 */  jr         $ra
/* D41C4 800FCD54 27BD0028 */   addiu     $sp, $sp, 0x28
