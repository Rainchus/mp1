	.set noat
	.set noreorder

glabel func_8006CEA0
/* 6DAA0 8006CEA0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6DAA4 8006CEA4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 6DAA8 8006CEA8 3C02800C */  lui        $v0, %hi(D_800C5DF1)
/* 6DAAC 8006CEAC 90425DF1 */  lbu        $v0, %lo(D_800C5DF1)($v0)
/* 6DAB0 8006CEB0 14400054 */  bnez       $v0, .L8006D004
/* 6DAB4 8006CEB4 00000000 */   nop
/* 6DAB8 8006CEB8 0C00EDDD */  jal        func_8003B774
/* 6DABC 8006CEBC 240422C8 */   addiu     $a0, $zero, 0x22c8
/* 6DAC0 8006CEC0 3C01800F */  lui        $at, %hi(D_800ED4B0)
/* 6DAC4 8006CEC4 AC22D4B0 */  sw         $v0, %lo(D_800ED4B0)($at)
/* 6DAC8 8006CEC8 00002021 */  addu       $a0, $zero, $zero
/* 6DACC 8006CECC 3C05800F */  lui        $a1, %hi(D_800ED4B0)
/* 6DAD0 8006CED0 8CA5D4B0 */  lw         $a1, %lo(D_800ED4B0)($a1)
/* 6DAD4 8006CED4 2406FFFF */  addiu      $a2, $zero, -1
.L8006CED8:
/* 6DAD8 8006CED8 00041400 */  sll        $v0, $a0, 0x10
/* 6DADC 8006CEDC 00021403 */  sra        $v0, $v0, 0x10
/* 6DAE0 8006CEE0 00021880 */  sll        $v1, $v0, 2
/* 6DAE4 8006CEE4 00621821 */  addu       $v1, $v1, $v0
/* 6DAE8 8006CEE8 00031940 */  sll        $v1, $v1, 5
/* 6DAEC 8006CEEC 00621823 */  subu       $v1, $v1, $v0
/* 6DAF0 8006CEF0 00031880 */  sll        $v1, $v1, 2
/* 6DAF4 8006CEF4 00651821 */  addu       $v1, $v1, $a1
/* 6DAF8 8006CEF8 24820001 */  addiu      $v0, $a0, 1
/* 6DAFC 8006CEFC 00402021 */  addu       $a0, $v0, $zero
/* 6DB00 8006CF00 00021400 */  sll        $v0, $v0, 0x10
/* 6DB04 8006CF04 00021403 */  sra        $v0, $v0, 0x10
/* 6DB08 8006CF08 2842000E */  slti       $v0, $v0, 0xe
/* 6DB0C 8006CF0C 1440FFF2 */  bnez       $v0, .L8006CED8
/* 6DB10 8006CF10 A4660036 */   sh        $a2, 0x36($v1)
/* 6DB14 8006CF14 3C03800F */  lui        $v1, %hi(D_800ED4B0)
/* 6DB18 8006CF18 8C63D4B0 */  lw         $v1, %lo(D_800ED4B0)($v1)
/* 6DB1C 8006CF1C 2404FFFF */  addiu      $a0, $zero, -1
/* 6DB20 8006CF20 A464003A */  sh         $a0, 0x3a($v1)
/* 6DB24 8006CF24 24020001 */  addiu      $v0, $zero, 1
/* 6DB28 8006CF28 A462003C */  sh         $v0, 0x3c($v1)
/* 6DB2C 8006CF2C A4600036 */  sh         $zero, 0x36($v1)
/* 6DB30 8006CF30 A46002B6 */  sh         $zero, 0x2b6($v1)
/* 6DB34 8006CF34 A46402B8 */  sh         $a0, 0x2b8($v1)
/* 6DB38 8006CF38 2402FDE8 */  addiu      $v0, $zero, -0x218
/* 6DB3C 8006CF3C A46202B2 */  sh         $v0, 0x2b2($v1)
/* 6DB40 8006CF40 3C01800F */  lui        $at, %hi(D_800F64C4)
/* 6DB44 8006CF44 A02064C4 */  sb         $zero, %lo(D_800F64C4)($at)
/* 6DB48 8006CF48 3C01800F */  lui        $at, %hi(D_800F3718)
/* 6DB4C 8006CF4C A0203718 */  sb         $zero, %lo(D_800F3718)($at)
/* 6DB50 8006CF50 24022710 */  addiu      $v0, $zero, 0x2710
/* 6DB54 8006CF54 3C01800E */  lui        $at, %hi(D_800E4330)
/* 6DB58 8006CF58 A4224330 */  sh         $v0, %lo(D_800E4330)($at)
/* 6DB5C 8006CF5C 3C02800C */  lui        $v0, %hi(D_800C5DF2)
/* 6DB60 8006CF60 90425DF2 */  lbu        $v0, %lo(D_800C5DF2)($v0)
/* 6DB64 8006CF64 10400005 */  beqz       $v0, .L8006CF7C
/* 6DB68 8006CF68 00000000 */   nop
/* 6DB6C 8006CF6C 0440000B */  bltz       $v0, .L8006CF9C
/* 6DB70 8006CF70 28420004 */   slti      $v0, $v0, 4
/* 6DB74 8006CF74 10400009 */  beqz       $v0, .L8006CF9C
/* 6DB78 8006CF78 00000000 */   nop
.L8006CF7C:
/* 6DB7C 8006CF7C 0C005185 */  jal        func_80014614
/* 6DB80 8006CF80 2404007A */   addiu     $a0, $zero, 0x7a
/* 6DB84 8006CF84 3C01800F */  lui        $at, %hi(D_800F37D4)
/* 6DB88 8006CF88 AC2237D4 */  sw         $v0, %lo(D_800F37D4)($at)
/* 6DB8C 8006CF8C 0C005185 */  jal        func_80014614
/* 6DB90 8006CF90 24040086 */   addiu     $a0, $zero, 0x86
/* 6DB94 8006CF94 3C01800F */  lui        $at, %hi(D_800F3294)
/* 6DB98 8006CF98 AC223294 */  sw         $v0, %lo(D_800F3294)($at)
.L8006CF9C:
/* 6DB9C 8006CF9C 3C048007 */  lui        $a0, %hi(func_8006F9B0)
/* 6DBA0 8006CFA0 2484F9B0 */  addiu      $a0, $a0, %lo(func_8006F9B0)
/* 6DBA4 8006CFA4 24051001 */  addiu      $a1, $zero, 0x1001
/* 6DBA8 8006CFA8 24060800 */  addiu      $a2, $zero, 0x800
/* 6DBAC 8006CFAC 0C01770A */  jal        func_8005DC28
/* 6DBB0 8006CFB0 00003821 */   addu      $a3, $zero, $zero
/* 6DBB4 8006CFB4 3C01800F */  lui        $at, %hi(D_800F2BC4)
/* 6DBB8 8006CFB8 AC222BC4 */  sw         $v0, %lo(D_800F2BC4)($at)
/* 6DBBC 8006CFBC 00402021 */  addu       $a0, $v0, $zero
/* 6DBC0 8006CFC0 0C017640 */  jal        func_8005D900
/* 6DBC4 8006CFC4 240500A0 */   addiu     $a1, $zero, 0xa0
/* 6DBC8 8006CFC8 24020001 */  addiu      $v0, $zero, 1
/* 6DBCC 8006CFCC 3C01800C */  lui        $at, %hi(D_800C5DF1)
/* 6DBD0 8006CFD0 A0225DF1 */  sb         $v0, %lo(D_800C5DF1)($at)
/* 6DBD4 8006CFD4 3C01800F */  lui        $at, %hi(D_800ED722)
/* 6DBD8 8006CFD8 A020D722 */  sb         $zero, %lo(D_800ED722)($at)
/* 6DBDC 8006CFDC 3C01800F */  lui        $at, %hi(D_800ECC22)
/* 6DBE0 8006CFE0 A020CC22 */  sb         $zero, %lo(D_800ECC22)($at)
/* 6DBE4 8006CFE4 0C005185 */  jal        func_80014614
/* 6DBE8 8006CFE8 24040077 */   addiu     $a0, $zero, 0x77
/* 6DBEC 8006CFEC 3C01800F */  lui        $at, %hi(D_800F3F34)
/* 6DBF0 8006CFF0 AC223F34 */  sw         $v0, %lo(D_800F3F34)($at)
/* 6DBF4 8006CFF4 0C005185 */  jal        func_80014614
/* 6DBF8 8006CFF8 24040078 */   addiu     $a0, $zero, 0x78
/* 6DBFC 8006CFFC 3C01800F */  lui        $at, %hi(D_800F3F38)
/* 6DC00 8006D000 AC223F38 */  sw         $v0, %lo(D_800F3F38)($at)
.L8006D004:
/* 6DC04 8006D004 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6DC08 8006D008 03E00008 */  jr         $ra
/* 6DC0C 8006D00C 27BD0018 */   addiu     $sp, $sp, 0x18
