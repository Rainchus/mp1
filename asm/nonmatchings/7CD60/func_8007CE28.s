	.set noat
	.set noreorder

glabel func_8007CE28
/* 7DA28 8007CE28 3C05800E */  lui        $a1, %hi(D_800E7A3C)
/* 7DA2C 8007CE2C 8CA57A3C */  lw         $a1, %lo(D_800E7A3C)($a1)
/* 7DA30 8007CE30 3C03800E */  lui        $v1, %hi(D_800E7A58)
/* 7DA34 8007CE34 8C637A58 */  lw         $v1, %lo(D_800E7A58)($v1)
/* 7DA38 8007CE38 3C06800E */  lui        $a2, %hi(D_800E7A54)
/* 7DA3C 8007CE3C 8CC67A54 */  lw         $a2, %lo(D_800E7A54)($a2)
/* 7DA40 8007CE40 00A3102A */  slt        $v0, $a1, $v1
/* 7DA44 8007CE44 10400008 */  beqz       $v0, .L8007CE68
/* 7DA48 8007CE48 00A04021 */   addu      $t0, $a1, $zero
/* 7DA4C 8007CE4C 00685023 */  subu       $t2, $v1, $t0
/* 7DA50 8007CE50 010A102A */  slt        $v0, $t0, $t2
/* 7DA54 8007CE54 54400001 */  bnel       $v0, $zero, .L8007CE5C
/* 7DA58 8007CE58 01005021 */   addu      $t2, $t0, $zero
.L8007CE5C:
/* 7DA5C 8007CE5C 010A1021 */  addu       $v0, $t0, $t2
/* 7DA60 8007CE60 0801F39D */  j          .L8007CE74
/* 7DA64 8007CE64 00625823 */   subu      $t3, $v1, $v0
.L8007CE68:
/* 7DA68 8007CE68 00604021 */  addu       $t0, $v1, $zero
/* 7DA6C 8007CE6C 00005021 */  addu       $t2, $zero, $zero
/* 7DA70 8007CE70 00005821 */  addu       $t3, $zero, $zero
.L8007CE74:
/* 7DA74 8007CE74 3C03800E */  lui        $v1, %hi(D_800E7A40)
/* 7DA78 8007CE78 8C637A40 */  lw         $v1, %lo(D_800E7A40)($v1)
/* 7DA7C 8007CE7C 3C05800E */  lui        $a1, %hi(D_800E7A5C)
/* 7DA80 8007CE80 8CA57A5C */  lw         $a1, %lo(D_800E7A5C)($a1)
/* 7DA84 8007CE84 0065102A */  slt        $v0, $v1, $a1
/* 7DA88 8007CE88 10400007 */  beqz       $v0, .L8007CEA8
/* 7DA8C 8007CE8C 00A34823 */   subu      $t1, $a1, $v1
/* 7DA90 8007CE90 0069102A */  slt        $v0, $v1, $t1
/* 7DA94 8007CE94 54400001 */  bnel       $v0, $zero, .L8007CE9C
/* 7DA98 8007CE98 00604821 */   addu      $t1, $v1, $zero
.L8007CE9C:
/* 7DA9C 8007CE9C 00691021 */  addu       $v0, $v1, $t1
/* 7DAA0 8007CEA0 0801F3AD */  j          .L8007CEB4
/* 7DAA4 8007CEA4 00A26023 */   subu      $t4, $a1, $v0
.L8007CEA8:
/* 7DAA8 8007CEA8 00A01821 */  addu       $v1, $a1, $zero
/* 7DAAC 8007CEAC 00004821 */  addu       $t1, $zero, $zero
/* 7DAB0 8007CEB0 00006021 */  addu       $t4, $zero, $zero
.L8007CEB4:
/* 7DAB4 8007CEB4 00603821 */  addu       $a3, $v1, $zero
/* 7DAB8 8007CEB8 18E00020 */  blez       $a3, .L8007CF3C
/* 7DABC 8007CEBC 00000000 */   nop
.L8007CEC0:
/* 7DAC0 8007CEC0 01001821 */  addu       $v1, $t0, $zero
/* 7DAC4 8007CEC4 18600007 */  blez       $v1, .L8007CEE4
/* 7DAC8 8007CEC8 00802821 */   addu      $a1, $a0, $zero
.L8007CECC:
/* 7DACC 8007CECC 90A20000 */  lbu        $v0, ($a1)
/* 7DAD0 8007CED0 24A50002 */  addiu      $a1, $a1, 2
/* 7DAD4 8007CED4 2463FFFF */  addiu      $v1, $v1, -1
/* 7DAD8 8007CED8 A0C20000 */  sb         $v0, ($a2)
/* 7DADC 8007CEDC 1C60FFFB */  bgtz       $v1, .L8007CECC
/* 7DAE0 8007CEE0 24C60001 */   addiu     $a2, $a2, 1
.L8007CEE4:
/* 7DAE4 8007CEE4 01401821 */  addu       $v1, $t2, $zero
/* 7DAE8 8007CEE8 58600008 */  blezl      $v1, .L8007CF0C
/* 7DAEC 8007CEEC 01601821 */   addu      $v1, $t3, $zero
.L8007CEF0:
/* 7DAF0 8007CEF0 24A5FFFE */  addiu      $a1, $a1, -2
/* 7DAF4 8007CEF4 90A20000 */  lbu        $v0, ($a1)
/* 7DAF8 8007CEF8 2463FFFF */  addiu      $v1, $v1, -1
/* 7DAFC 8007CEFC A0C20000 */  sb         $v0, ($a2)
/* 7DB00 8007CF00 1C60FFFB */  bgtz       $v1, .L8007CEF0
/* 7DB04 8007CF04 24C60001 */   addiu     $a2, $a2, 1
/* 7DB08 8007CF08 01601821 */  addu       $v1, $t3, $zero
.L8007CF0C:
/* 7DB0C 8007CF0C 18600005 */  blez       $v1, .L8007CF24
/* 7DB10 8007CF10 00000000 */   nop
.L8007CF14:
/* 7DB14 8007CF14 A0C00000 */  sb         $zero, ($a2)
/* 7DB18 8007CF18 2463FFFF */  addiu      $v1, $v1, -1
/* 7DB1C 8007CF1C 1C60FFFD */  bgtz       $v1, .L8007CF14
/* 7DB20 8007CF20 24C60001 */   addiu     $a2, $a2, 1
.L8007CF24:
/* 7DB24 8007CF24 3C02800E */  lui        $v0, %hi(D_800E7A3C)
/* 7DB28 8007CF28 8C427A3C */  lw         $v0, %lo(D_800E7A3C)($v0)
/* 7DB2C 8007CF2C 24E7FFFF */  addiu      $a3, $a3, -1
/* 7DB30 8007CF30 00021040 */  sll        $v0, $v0, 1
/* 7DB34 8007CF34 1CE0FFE2 */  bgtz       $a3, .L8007CEC0
/* 7DB38 8007CF38 00822021 */   addu      $a0, $a0, $v0
.L8007CF3C:
/* 7DB3C 8007CF3C 3C02800E */  lui        $v0, %hi(D_800E7A58)
/* 7DB40 8007CF40 8C427A58 */  lw         $v0, %lo(D_800E7A58)($v0)
/* 7DB44 8007CF44 01203821 */  addu       $a3, $t1, $zero
/* 7DB48 8007CF48 18E00010 */  blez       $a3, .L8007CF8C
/* 7DB4C 8007CF4C 00C22823 */   subu      $a1, $a2, $v0
.L8007CF50:
/* 7DB50 8007CF50 3C03800E */  lui        $v1, %hi(D_800E7A58)
/* 7DB54 8007CF54 8C637A58 */  lw         $v1, %lo(D_800E7A58)($v1)
/* 7DB58 8007CF58 18600007 */  blez       $v1, .L8007CF78
/* 7DB5C 8007CF5C 00A02021 */   addu      $a0, $a1, $zero
.L8007CF60:
/* 7DB60 8007CF60 90820000 */  lbu        $v0, ($a0)
/* 7DB64 8007CF64 24840001 */  addiu      $a0, $a0, 1
/* 7DB68 8007CF68 2463FFFF */  addiu      $v1, $v1, -1
/* 7DB6C 8007CF6C A0C20000 */  sb         $v0, ($a2)
/* 7DB70 8007CF70 1C60FFFB */  bgtz       $v1, .L8007CF60
/* 7DB74 8007CF74 24C60001 */   addiu     $a2, $a2, 1
.L8007CF78:
/* 7DB78 8007CF78 3C02800E */  lui        $v0, %hi(D_800E7A58)
/* 7DB7C 8007CF7C 8C427A58 */  lw         $v0, %lo(D_800E7A58)($v0)
/* 7DB80 8007CF80 24E7FFFF */  addiu      $a3, $a3, -1
/* 7DB84 8007CF84 1CE0FFF2 */  bgtz       $a3, .L8007CF50
/* 7DB88 8007CF88 00A22823 */   subu      $a1, $a1, $v0
.L8007CF8C:
/* 7DB8C 8007CF8C 01803821 */  addu       $a3, $t4, $zero
/* 7DB90 8007CF90 18E0000C */  blez       $a3, .L8007CFC4
/* 7DB94 8007CF94 00000000 */   nop
.L8007CF98:
/* 7DB98 8007CF98 3C03800E */  lui        $v1, %hi(D_800E7A58)
/* 7DB9C 8007CF9C 8C637A58 */  lw         $v1, %lo(D_800E7A58)($v1)
/* 7DBA0 8007CFA0 58600006 */  blezl      $v1, .L8007CFBC
/* 7DBA4 8007CFA4 24E7FFFF */   addiu     $a3, $a3, -1
.L8007CFA8:
/* 7DBA8 8007CFA8 A0C00000 */  sb         $zero, ($a2)
/* 7DBAC 8007CFAC 2463FFFF */  addiu      $v1, $v1, -1
/* 7DBB0 8007CFB0 1C60FFFD */  bgtz       $v1, .L8007CFA8
/* 7DBB4 8007CFB4 24C60001 */   addiu     $a2, $a2, 1
/* 7DBB8 8007CFB8 24E7FFFF */  addiu      $a3, $a3, -1
.L8007CFBC:
/* 7DBBC 8007CFBC 1CE0FFF6 */  bgtz       $a3, .L8007CF98
/* 7DBC0 8007CFC0 00000000 */   nop
.L8007CFC4:
/* 7DBC4 8007CFC4 03E00008 */  jr         $ra
/* 7DBC8 8007CFC8 00000000 */   nop
