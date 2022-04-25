	.set noat
	.set noreorder

glabel func_8002CDEC
/* 2D9EC 8002CDEC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 2D9F0 8002CDF0 AFBF0028 */  sw         $ra, 0x28($sp)
/* 2D9F4 8002CDF4 AFB50024 */  sw         $s5, 0x24($sp)
/* 2D9F8 8002CDF8 AFB40020 */  sw         $s4, 0x20($sp)
/* 2D9FC 8002CDFC AFB3001C */  sw         $s3, 0x1c($sp)
/* 2DA00 8002CE00 AFB20018 */  sw         $s2, 0x18($sp)
/* 2DA04 8002CE04 AFB10014 */  sw         $s1, 0x14($sp)
/* 2DA08 8002CE08 AFB00010 */  sw         $s0, 0x10($sp)
/* 2DA0C 8002CE0C 0080A021 */  addu       $s4, $a0, $zero
/* 2DA10 8002CE10 00A0A821 */  addu       $s5, $a1, $zero
/* 2DA14 8002CE14 00052C00 */  sll        $a1, $a1, 0x10
/* 2DA18 8002CE18 00059403 */  sra        $s2, $a1, 0x10
/* 2DA1C 8002CE1C 8E830080 */  lw         $v1, 0x80($s4)
/* 2DA20 8002CE20 00121040 */  sll        $v0, $s2, 1
/* 2DA24 8002CE24 00521021 */  addu       $v0, $v0, $s2
/* 2DA28 8002CE28 000210C0 */  sll        $v0, $v0, 3
/* 2DA2C 8002CE2C 00521023 */  subu       $v0, $v0, $s2
/* 2DA30 8002CE30 00029880 */  sll        $s3, $v0, 2
/* 2DA34 8002CE34 02631821 */  addu       $v1, $s3, $v1
/* 2DA38 8002CE38 8C630014 */  lw         $v1, 0x14($v1)
/* 2DA3C 8002CE3C 3C020600 */  lui        $v0, 0x600
/* 2DA40 8002CE40 00621024 */  and        $v0, $v1, $v0
/* 2DA44 8002CE44 1040005A */  beqz       $v0, .L8002CFB0
/* 2DA48 8002CE48 00153400 */   sll       $a2, $s5, 0x10
/* 2DA4C 8002CE4C 3C02800F */  lui        $v0, %hi(D_800ECB14)
/* 2DA50 8002CE50 8C42CB14 */  lw         $v0, %lo(D_800ECB14)($v0)
/* 2DA54 8002CE54 10400035 */  beqz       $v0, .L8002CF2C
/* 2DA58 8002CE58 3C05F9FF */   lui       $a1, 0xf9ff
/* 2DA5C 8002CE5C 34A5FFFF */  ori        $a1, $a1, 0xffff
/* 2DA60 8002CE60 00652824 */  and        $a1, $v1, $a1
/* 2DA64 8002CE64 0C00C718 */  jal        func_80031C60
/* 2DA68 8002CE68 02403021 */   addu      $a2, $s2, $zero
/* 2DA6C 8002CE6C 3C10800F */  lui        $s0, %hi(D_800F37DC)
/* 2DA70 8002CE70 8E1037DC */  lw         $s0, %lo(D_800F37DC)($s0)
/* 2DA74 8002CE74 26020008 */  addiu      $v0, $s0, 8
/* 2DA78 8002CE78 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2DA7C 8002CE7C AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2DA80 8002CE80 3C11DB06 */  lui        $s1, 0xdb06
/* 2DA84 8002CE84 36310004 */  ori        $s1, $s1, 4
/* 2DA88 8002CE88 AE110000 */  sw         $s1, ($s0)
/* 2DA8C 8002CE8C 3C02800F */  lui        $v0, %hi(D_800F37F0)
/* 2DA90 8002CE90 904237F0 */  lbu        $v0, %lo(D_800F37F0)($v0)
/* 2DA94 8002CE94 00021080 */  sll        $v0, $v0, 2
/* 2DA98 8002CE98 00541021 */  addu       $v0, $v0, $s4
/* 2DA9C 8002CE9C 0C02248C */  jal        func_80089230
/* 2DAA0 8002CEA0 8C440008 */   lw        $a0, 8($v0)
/* 2DAA4 8002CEA4 AE020004 */  sw         $v0, 4($s0)
/* 2DAA8 8002CEA8 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 2DAAC 8002CEAC 8C8437DC */  lw         $a0, %lo(D_800F37DC)($a0)
/* 2DAB0 8002CEB0 24820008 */  addiu      $v0, $a0, 8
/* 2DAB4 8002CEB4 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2DAB8 8002CEB8 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2DABC 8002CEBC 3C02DE00 */  lui        $v0, 0xde00
/* 2DAC0 8002CEC0 AC820000 */  sw         $v0, ($a0)
/* 2DAC4 8002CEC4 8E830000 */  lw         $v1, ($s4)
/* 2DAC8 8002CEC8 00121080 */  sll        $v0, $s2, 2
/* 2DACC 8002CECC 00431021 */  addu       $v0, $v0, $v1
/* 2DAD0 8002CED0 8C420000 */  lw         $v0, ($v0)
/* 2DAD4 8002CED4 AC820004 */  sw         $v0, 4($a0)
/* 2DAD8 8002CED8 8E820080 */  lw         $v0, 0x80($s4)
/* 2DADC 8002CEDC 02621021 */  addu       $v0, $s3, $v0
/* 2DAE0 8002CEE0 02802021 */  addu       $a0, $s4, $zero
/* 2DAE4 8002CEE4 8C450014 */  lw         $a1, 0x14($v0)
/* 2DAE8 8002CEE8 0C00C718 */  jal        func_80031C60
/* 2DAEC 8002CEEC 02403021 */   addu      $a2, $s2, $zero
/* 2DAF0 8002CEF0 3C10800F */  lui        $s0, %hi(D_800F37DC)
/* 2DAF4 8002CEF4 8E1037DC */  lw         $s0, %lo(D_800F37DC)($s0)
/* 2DAF8 8002CEF8 26020008 */  addiu      $v0, $s0, 8
/* 2DAFC 8002CEFC 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2DB00 8002CF00 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2DB04 8002CF04 AE110000 */  sw         $s1, ($s0)
/* 2DB08 8002CF08 3C04800F */  lui        $a0, %hi(D_800F50BC)
/* 2DB0C 8002CF0C 0C02248C */  jal        func_80089230
/* 2DB10 8002CF10 8C8450BC */   lw        $a0, %lo(D_800F50BC)($a0)
/* 2DB14 8002CF14 AE020004 */  sw         $v0, 4($s0)
/* 2DB18 8002CF18 02802021 */  addu       $a0, $s4, $zero
/* 2DB1C 8002CF1C 0C00B721 */  jal        func_8002DC84
/* 2DB20 8002CF20 02402821 */   addu      $a1, $s2, $zero
/* 2DB24 8002CF24 0800B493 */  j          .L8002D24C
/* 2DB28 8002CF28 00000000 */   nop
.L8002CF2C:
/* 2DB2C 8002CF2C 00159400 */  sll        $s2, $s5, 0x10
/* 2DB30 8002CF30 00129403 */  sra        $s2, $s2, 0x10
/* 2DB34 8002CF34 8E830080 */  lw         $v1, 0x80($s4)
/* 2DB38 8002CF38 00128040 */  sll        $s0, $s2, 1
/* 2DB3C 8002CF3C 02128021 */  addu       $s0, $s0, $s2
/* 2DB40 8002CF40 001080C0 */  sll        $s0, $s0, 3
/* 2DB44 8002CF44 02128023 */  subu       $s0, $s0, $s2
/* 2DB48 8002CF48 00108080 */  sll        $s0, $s0, 2
/* 2DB4C 8002CF4C 02031821 */  addu       $v1, $s0, $v1
/* 2DB50 8002CF50 8C730014 */  lw         $s3, 0x14($v1)
/* 2DB54 8002CF54 3C02F9FF */  lui        $v0, 0xf9ff
/* 2DB58 8002CF58 3442FFFF */  ori        $v0, $v0, 0xffff
/* 2DB5C 8002CF5C 02621024 */  and        $v0, $s3, $v0
/* 2DB60 8002CF60 AC620014 */  sw         $v0, 0x14($v1)
/* 2DB64 8002CF64 3C11800F */  lui        $s1, %hi(D_800F37DC)
/* 2DB68 8002CF68 8E3137DC */  lw         $s1, %lo(D_800F37DC)($s1)
/* 2DB6C 8002CF6C 26220008 */  addiu      $v0, $s1, 8
/* 2DB70 8002CF70 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2DB74 8002CF74 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2DB78 8002CF78 3C02DB06 */  lui        $v0, 0xdb06
/* 2DB7C 8002CF7C 34420004 */  ori        $v0, $v0, 4
/* 2DB80 8002CF80 AE220000 */  sw         $v0, ($s1)
/* 2DB84 8002CF84 3C04800F */  lui        $a0, %hi(D_800F50BC)
/* 2DB88 8002CF88 0C02248C */  jal        func_80089230
/* 2DB8C 8002CF8C 8C8450BC */   lw        $a0, %lo(D_800F50BC)($a0)
/* 2DB90 8002CF90 AE220004 */  sw         $v0, 4($s1)
/* 2DB94 8002CF94 02802021 */  addu       $a0, $s4, $zero
/* 2DB98 8002CF98 0C00B37B */  jal        func_8002CDEC
/* 2DB9C 8002CF9C 02402821 */   addu      $a1, $s2, $zero
/* 2DBA0 8002CFA0 8E820080 */  lw         $v0, 0x80($s4)
/* 2DBA4 8002CFA4 02028021 */  addu       $s0, $s0, $v0
/* 2DBA8 8002CFA8 AE130014 */  sw         $s3, 0x14($s0)
/* 2DBAC 8002CFAC 00153400 */  sll        $a2, $s5, 0x10
.L8002CFB0:
/* 2DBB0 8002CFB0 00063403 */  sra        $a2, $a2, 0x10
/* 2DBB4 8002CFB4 00061040 */  sll        $v0, $a2, 1
/* 2DBB8 8002CFB8 00461021 */  addu       $v0, $v0, $a2
/* 2DBBC 8002CFBC 000210C0 */  sll        $v0, $v0, 3
/* 2DBC0 8002CFC0 00461023 */  subu       $v0, $v0, $a2
/* 2DBC4 8002CFC4 00021080 */  sll        $v0, $v0, 2
/* 2DBC8 8002CFC8 8E830080 */  lw         $v1, 0x80($s4)
/* 2DBCC 8002CFCC 00438021 */  addu       $s0, $v0, $v1
/* 2DBD0 8002CFD0 8E050014 */  lw         $a1, 0x14($s0)
/* 2DBD4 8002CFD4 0C00C718 */  jal        func_80031C60
/* 2DBD8 8002CFD8 02802021 */   addu      $a0, $s4, $zero
/* 2DBDC 8002CFDC 8E020014 */  lw         $v0, 0x14($s0)
/* 2DBE0 8002CFE0 3C030004 */  lui        $v1, 4
/* 2DBE4 8002CFE4 00431024 */  and        $v0, $v0, $v1
/* 2DBE8 8002CFE8 10400003 */  beqz       $v0, .L8002CFF8
/* 2DBEC 8002CFEC 00000000 */   nop
/* 2DBF0 8002CFF0 0C00E744 */  jal        func_80039D10
/* 2DBF4 8002CFF4 02802021 */   addu      $a0, $s4, $zero
.L8002CFF8:
/* 2DBF8 8002CFF8 86030002 */  lh         $v1, 2($s0)
/* 2DBFC 8002CFFC 2402FFFF */  addiu      $v0, $zero, -1
/* 2DC00 8002D000 1462000E */  bne        $v1, $v0, .L8002D03C
/* 2DC04 8002D004 00000000 */   nop
/* 2DC08 8002D008 8E8200B8 */  lw         $v0, 0xb8($s4)
/* 2DC0C 8002D00C 10400023 */  beqz       $v0, .L8002D09C
/* 2DC10 8002D010 00000000 */   nop
/* 2DC14 8002D014 86030000 */  lh         $v1, ($s0)
/* 2DC18 8002D018 8E8400A8 */  lw         $a0, 0xa8($s4)
/* 2DC1C 8002D01C 000310C0 */  sll        $v0, $v1, 3
/* 2DC20 8002D020 00431023 */  subu       $v0, $v0, $v1
/* 2DC24 8002D024 00021040 */  sll        $v0, $v0, 1
/* 2DC28 8002D028 00441021 */  addu       $v0, $v0, $a0
/* 2DC2C 8002D02C 9042000C */  lbu        $v0, 0xc($v0)
/* 2DC30 8002D030 30420004 */  andi       $v0, $v0, 4
/* 2DC34 8002D034 10400019 */  beqz       $v0, .L8002D09C
/* 2DC38 8002D038 00000000 */   nop
.L8002D03C:
/* 2DC3C 8002D03C 86020000 */  lh         $v0, ($s0)
/* 2DC40 8002D040 000220C0 */  sll        $a0, $v0, 3
/* 2DC44 8002D044 00822023 */  subu       $a0, $a0, $v0
/* 2DC48 8002D048 00042040 */  sll        $a0, $a0, 1
/* 2DC4C 8002D04C 8E8200A8 */  lw         $v0, 0xa8($s4)
/* 2DC50 8002D050 00822021 */  addu       $a0, $a0, $v0
/* 2DC54 8002D054 3C05800F */  lui        $a1, %hi(D_800F37DC)
/* 2DC58 8002D058 8CA537DC */  lw         $a1, %lo(D_800F37DC)($a1)
/* 2DC5C 8002D05C 24A20008 */  addiu      $v0, $a1, 8
/* 2DC60 8002D060 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2DC64 8002D064 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2DC68 8002D068 3C02FA00 */  lui        $v0, 0xfa00
/* 2DC6C 8002D06C ACA20000 */  sw         $v0, ($a1)
/* 2DC70 8002D070 90830005 */  lbu        $v1, 5($a0)
/* 2DC74 8002D074 00031E00 */  sll        $v1, $v1, 0x18
/* 2DC78 8002D078 90820006 */  lbu        $v0, 6($a0)
/* 2DC7C 8002D07C 00021400 */  sll        $v0, $v0, 0x10
/* 2DC80 8002D080 00621825 */  or         $v1, $v1, $v0
/* 2DC84 8002D084 90820007 */  lbu        $v0, 7($a0)
/* 2DC88 8002D088 00021200 */  sll        $v0, $v0, 8
/* 2DC8C 8002D08C 00621825 */  or         $v1, $v1, $v0
/* 2DC90 8002D090 92020003 */  lbu        $v0, 3($s0)
/* 2DC94 8002D094 00621825 */  or         $v1, $v1, $v0
/* 2DC98 8002D098 ACA30004 */  sw         $v1, 4($a1)
.L8002D09C:
/* 2DC9C 8002D09C 3C02800F */  lui        $v0, %hi(D_800ECB14)
/* 2DCA0 8002D0A0 8C42CB14 */  lw         $v0, %lo(D_800ECB14)($v0)
/* 2DCA4 8002D0A4 3C030001 */  lui        $v1, 1
/* 2DCA8 8002D0A8 00431024 */  and        $v0, $v0, $v1
/* 2DCAC 8002D0AC 10400023 */  beqz       $v0, .L8002D13C
/* 2DCB0 8002D0B0 00000000 */   nop
/* 2DCB4 8002D0B4 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 2DCB8 8002D0B8 8C8437DC */  lw         $a0, %lo(D_800F37DC)($a0)
/* 2DCBC 8002D0BC 24820008 */  addiu      $v0, $a0, 8
/* 2DCC0 8002D0C0 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2DCC4 8002D0C4 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2DCC8 8002D0C8 3C02FB00 */  lui        $v0, 0xfb00
/* 2DCCC 8002D0CC AC820000 */  sw         $v0, ($a0)
/* 2DCD0 8002D0D0 9283002E */  lbu        $v1, 0x2e($s4)
/* 2DCD4 8002D0D4 00031E00 */  sll        $v1, $v1, 0x18
/* 2DCD8 8002D0D8 9282002F */  lbu        $v0, 0x2f($s4)
/* 2DCDC 8002D0DC 00021400 */  sll        $v0, $v0, 0x10
/* 2DCE0 8002D0E0 00621825 */  or         $v1, $v1, $v0
/* 2DCE4 8002D0E4 92820030 */  lbu        $v0, 0x30($s4)
/* 2DCE8 8002D0E8 00021200 */  sll        $v0, $v0, 8
/* 2DCEC 8002D0EC 00621825 */  or         $v1, $v1, $v0
/* 2DCF0 8002D0F0 92820031 */  lbu        $v0, 0x31($s4)
/* 2DCF4 8002D0F4 00621825 */  or         $v1, $v1, $v0
/* 2DCF8 8002D0F8 AC830004 */  sw         $v1, 4($a0)
/* 2DCFC 8002D0FC 24820010 */  addiu      $v0, $a0, 0x10
/* 2DD00 8002D100 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2DD04 8002D104 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2DD08 8002D108 3C02FA00 */  lui        $v0, 0xfa00
/* 2DD0C 8002D10C AC820008 */  sw         $v0, 8($a0)
/* 2DD10 8002D110 9283002A */  lbu        $v1, 0x2a($s4)
/* 2DD14 8002D114 00031E00 */  sll        $v1, $v1, 0x18
/* 2DD18 8002D118 9282002B */  lbu        $v0, 0x2b($s4)
/* 2DD1C 8002D11C 00021400 */  sll        $v0, $v0, 0x10
/* 2DD20 8002D120 00621825 */  or         $v1, $v1, $v0
/* 2DD24 8002D124 9282002C */  lbu        $v0, 0x2c($s4)
/* 2DD28 8002D128 00021200 */  sll        $v0, $v0, 8
/* 2DD2C 8002D12C 00621825 */  or         $v1, $v1, $v0
/* 2DD30 8002D130 9282002D */  lbu        $v0, 0x2d($s4)
/* 2DD34 8002D134 00621825 */  or         $v1, $v1, $v0
/* 2DD38 8002D138 AC83000C */  sw         $v1, 0xc($a0)
.L8002D13C:
/* 2DD3C 8002D13C 3C02800F */  lui        $v0, %hi(D_800ECB14)
/* 2DD40 8002D140 8C42CB14 */  lw         $v0, %lo(D_800ECB14)($v0)
/* 2DD44 8002D144 30420001 */  andi       $v0, $v0, 1
/* 2DD48 8002D148 10400022 */  beqz       $v0, .L8002D1D4
/* 2DD4C 8002D14C 00151400 */   sll       $v0, $s5, 0x10
/* 2DD50 8002D150 8E830000 */  lw         $v1, ($s4)
/* 2DD54 8002D154 00028B83 */  sra        $s1, $v0, 0xe
/* 2DD58 8002D158 02231821 */  addu       $v1, $s1, $v1
/* 2DD5C 8002D15C 8C620000 */  lw         $v0, ($v1)
/* 2DD60 8002D160 1040003A */  beqz       $v0, .L8002D24C
/* 2DD64 8002D164 00000000 */   nop
/* 2DD68 8002D168 3C10800F */  lui        $s0, %hi(D_800F37DC)
/* 2DD6C 8002D16C 8E1037DC */  lw         $s0, %lo(D_800F37DC)($s0)
/* 2DD70 8002D170 26020008 */  addiu      $v0, $s0, 8
/* 2DD74 8002D174 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2DD78 8002D178 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2DD7C 8002D17C 3C02DB06 */  lui        $v0, 0xdb06
/* 2DD80 8002D180 34420004 */  ori        $v0, $v0, 4
/* 2DD84 8002D184 AE020000 */  sw         $v0, ($s0)
/* 2DD88 8002D188 3C02800F */  lui        $v0, %hi(D_800F37F0)
/* 2DD8C 8002D18C 904237F0 */  lbu        $v0, %lo(D_800F37F0)($v0)
/* 2DD90 8002D190 00021080 */  sll        $v0, $v0, 2
/* 2DD94 8002D194 00541021 */  addu       $v0, $v0, $s4
/* 2DD98 8002D198 0C02248C */  jal        func_80089230
/* 2DD9C 8002D19C 8C440008 */   lw        $a0, 8($v0)
/* 2DDA0 8002D1A0 AE020004 */  sw         $v0, 4($s0)
/* 2DDA4 8002D1A4 3C03800F */  lui        $v1, %hi(D_800F37DC)
/* 2DDA8 8002D1A8 8C6337DC */  lw         $v1, %lo(D_800F37DC)($v1)
/* 2DDAC 8002D1AC 24620008 */  addiu      $v0, $v1, 8
/* 2DDB0 8002D1B0 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2DDB4 8002D1B4 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2DDB8 8002D1B8 3C02DE00 */  lui        $v0, 0xde00
/* 2DDBC 8002D1BC AC620000 */  sw         $v0, ($v1)
/* 2DDC0 8002D1C0 8E820000 */  lw         $v0, ($s4)
/* 2DDC4 8002D1C4 02221021 */  addu       $v0, $s1, $v0
/* 2DDC8 8002D1C8 8C420000 */  lw         $v0, ($v0)
/* 2DDCC 8002D1CC 0800B485 */  j          .L8002D214
/* 2DDD0 8002D1D0 AC620004 */   sw        $v0, 4($v1)
.L8002D1D4:
/* 2DDD4 8002D1D4 3C10800F */  lui        $s0, %hi(D_800F37DC)
/* 2DDD8 8002D1D8 8E1037DC */  lw         $s0, %lo(D_800F37DC)($s0)
/* 2DDDC 8002D1DC 26020008 */  addiu      $v0, $s0, 8
/* 2DDE0 8002D1E0 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2DDE4 8002D1E4 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2DDE8 8002D1E8 3C02DB06 */  lui        $v0, 0xdb06
/* 2DDEC 8002D1EC 34420004 */  ori        $v0, $v0, 4
/* 2DDF0 8002D1F0 AE020000 */  sw         $v0, ($s0)
/* 2DDF4 8002D1F4 3C04800F */  lui        $a0, %hi(D_800F50BC)
/* 2DDF8 8002D1F8 0C02248C */  jal        func_80089230
/* 2DDFC 8002D1FC 8C8450BC */   lw        $a0, %lo(D_800F50BC)($a0)
/* 2DE00 8002D200 AE020004 */  sw         $v0, 4($s0)
/* 2DE04 8002D204 00152C00 */  sll        $a1, $s5, 0x10
/* 2DE08 8002D208 02802021 */  addu       $a0, $s4, $zero
/* 2DE0C 8002D20C 0C00B721 */  jal        func_8002DC84
/* 2DE10 8002D210 00052C03 */   sra       $a1, $a1, 0x10
.L8002D214:
/* 2DE14 8002D214 3C02800F */  lui        $v0, %hi(D_800F50BA)
/* 2DE18 8002D218 944250BA */  lhu        $v0, %lo(D_800F50BA)($v0)
/* 2DE1C 8002D21C 00021180 */  sll        $v0, $v0, 6
/* 2DE20 8002D220 3C03800F */  lui        $v1, %hi(D_800F37E0)
/* 2DE24 8002D224 8C6337E0 */  lw         $v1, %lo(D_800F37E0)($v1)
/* 2DE28 8002D228 00431021 */  addu       $v0, $v0, $v1
/* 2DE2C 8002D22C 3C03800F */  lui        $v1, %hi(D_800F37DC)
/* 2DE30 8002D230 8C6337DC */  lw         $v1, %lo(D_800F37DC)($v1)
/* 2DE34 8002D234 0062182B */  sltu       $v1, $v1, $v0
/* 2DE38 8002D238 14600004 */  bnez       $v1, .L8002D24C
/* 2DE3C 8002D23C 00000000 */   nop
/* 2DE40 8002D240 3C04800D */  lui        $a0, %hi(D_800CA928)
/* 2DE44 8002D244 0C023148 */  jal        func_8008C520
/* 2DE48 8002D248 2484A928 */   addiu     $a0, $a0, %lo(D_800CA928)
.L8002D24C:
/* 2DE4C 8002D24C 8FBF0028 */  lw         $ra, 0x28($sp)
/* 2DE50 8002D250 8FB50024 */  lw         $s5, 0x24($sp)
/* 2DE54 8002D254 8FB40020 */  lw         $s4, 0x20($sp)
/* 2DE58 8002D258 8FB3001C */  lw         $s3, 0x1c($sp)
/* 2DE5C 8002D25C 8FB20018 */  lw         $s2, 0x18($sp)
/* 2DE60 8002D260 8FB10014 */  lw         $s1, 0x14($sp)
/* 2DE64 8002D264 8FB00010 */  lw         $s0, 0x10($sp)
/* 2DE68 8002D268 03E00008 */  jr         $ra
/* 2DE6C 8002D26C 27BD0030 */   addiu     $sp, $sp, 0x30
