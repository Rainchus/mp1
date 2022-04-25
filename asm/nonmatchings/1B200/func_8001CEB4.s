	.set noat
	.set noreorder

glabel func_8001CEB4
/* 1DAB4 8001CEB4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1DAB8 8001CEB8 AFBE0030 */  sw         $fp, 0x30($sp)
/* 1DABC 8001CEBC AFB7002C */  sw         $s7, 0x2c($sp)
/* 1DAC0 8001CEC0 AFB60028 */  sw         $s6, 0x28($sp)
/* 1DAC4 8001CEC4 AFB50024 */  sw         $s5, 0x24($sp)
/* 1DAC8 8001CEC8 AFB40020 */  sw         $s4, 0x20($sp)
/* 1DACC 8001CECC AFB3001C */  sw         $s3, 0x1c($sp)
/* 1DAD0 8001CED0 AFB20018 */  sw         $s2, 0x18($sp)
/* 1DAD4 8001CED4 AFB10014 */  sw         $s1, 0x14($sp)
/* 1DAD8 8001CED8 AFB00010 */  sw         $s0, 0x10($sp)
/* 1DADC 8001CEDC 3C03800F */  lui        $v1, %hi(D_800EC6DE)
/* 1DAE0 8001CEE0 9063C6DE */  lbu        $v1, %lo(D_800EC6DE)($v1)
/* 1DAE4 8001CEE4 24020004 */  addiu      $v0, $zero, 4
/* 1DAE8 8001CEE8 146200C8 */  bne        $v1, $v0, .L8001D20C
/* 1DAEC 8001CEEC 24110010 */   addiu     $s1, $zero, 0x10
/* 1DAF0 8001CEF0 3C03800F */  lui        $v1, %hi(D_800F37DC)
/* 1DAF4 8001CEF4 8C6337DC */  lw         $v1, %lo(D_800F37DC)($v1)
/* 1DAF8 8001CEF8 24620008 */  addiu      $v0, $v1, 8
/* 1DAFC 8001CEFC 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 1DB00 8001CF00 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 1DB04 8001CF04 3C02DE00 */  lui        $v0, 0xde00
/* 1DB08 8001CF08 AC620000 */  sw         $v0, ($v1)
/* 1DB0C 8001CF0C 3C02800C */  lui        $v0, %hi(D_800C30C8)
/* 1DB10 8001CF10 244230C8 */  addiu      $v0, $v0, %lo(D_800C30C8)
/* 1DB14 8001CF14 AC620004 */  sw         $v0, 4($v1)
/* 1DB18 8001CF18 3C02800F */  lui        $v0, %hi(D_800F3960)
/* 1DB1C 8001CF1C 94423960 */  lhu        $v0, %lo(D_800F3960)($v0)
/* 1DB20 8001CF20 00402021 */  addu       $a0, $v0, $zero
/* 1DB24 8001CF24 00021400 */  sll        $v0, $v0, 0x10
/* 1DB28 8001CF28 184000B8 */  blez       $v0, .L8001D20C
/* 1DB2C 8001CF2C 00007021 */   addu      $t6, $zero, $zero
/* 1DB30 8001CF30 3C13F510 */  lui        $s3, 0xf510
/* 1DB34 8001CF34 36732200 */  ori        $s3, $s3, 0x2200
/* 1DB38 8001CF38 3C1E0710 */  lui        $fp, 0x710
/* 1DB3C 8001CF3C 3C16E400 */  lui        $s6, 0xe400
/* 1DB40 8001CF40 3C15E100 */  lui        $s5, 0xe100
/* 1DB44 8001CF44 3C14F100 */  lui        $s4, 0xf100
/* 1DB48 8001CF48 000E1C00 */  sll        $v1, $t6, 0x10
.L8001CF4C:
/* 1DB4C 8001CF4C 00031C03 */  sra        $v1, $v1, 0x10
/* 1DB50 8001CF50 00041400 */  sll        $v0, $a0, 0x10
/* 1DB54 8001CF54 00021403 */  sra        $v0, $v0, 0x10
/* 1DB58 8001CF58 2442FFF0 */  addiu      $v0, $v0, -0x10
/* 1DB5C 8001CF5C 0062182A */  slt        $v1, $v1, $v0
/* 1DB60 8001CF60 50600001 */  beql       $v1, $zero, .L8001CF68
/* 1DB64 8001CF64 008E8823 */   subu      $s1, $a0, $t6
.L8001CF68:
/* 1DB68 8001CF68 24180040 */  addiu      $t8, $zero, 0x40
/* 1DB6C 8001CF6C 3C02800F */  lui        $v0, %hi(D_800ED738)
/* 1DB70 8001CF70 9442D738 */  lhu        $v0, %lo(D_800ED738)($v0)
/* 1DB74 8001CF74 00402021 */  addu       $a0, $v0, $zero
/* 1DB78 8001CF78 00021400 */  sll        $v0, $v0, 0x10
/* 1DB7C 8001CF7C 00021403 */  sra        $v0, $v0, 0x10
/* 1DB80 8001CF80 0000B821 */  addu       $s7, $zero, $zero
/* 1DB84 8001CF84 02E2102A */  slt        $v0, $s7, $v0
/* 1DB88 8001CF88 10400095 */  beqz       $v0, .L8001D1E0
/* 1DB8C 8001CF8C 00005021 */   addu      $t2, $zero, $zero
/* 1DB90 8001CF90 000E1400 */  sll        $v0, $t6, 0x10
/* 1DB94 8001CF94 00026C03 */  sra        $t5, $v0, 0x10
/* 1DB98 8001CF98 00111400 */  sll        $v0, $s1, 0x10
/* 1DB9C 8001CF9C 00027C03 */  sra        $t7, $v0, 0x10
/* 1DBA0 8001CFA0 000F1080 */  sll        $v0, $t7, 2
/* 1DBA4 8001CFA4 30420FFF */  andi       $v0, $v0, 0xfff
/* 1DBA8 8001CFA8 005E8025 */  or         $s0, $v0, $fp
/* 1DBAC 8001CFAC 3C170010 */  lui        $s7, 0x10
/* 1DBB0 8001CFB0 0057C825 */  or         $t9, $v0, $s7
/* 1DBB4 8001CFB4 3C120400 */  lui        $s2, 0x400
/* 1DBB8 8001CFB8 36520400 */  ori        $s2, $s2, 0x400
/* 1DBBC 8001CFBC 000A1C00 */  sll        $v1, $t2, 0x10
.L8001CFC0:
/* 1DBC0 8001CFC0 00031C03 */  sra        $v1, $v1, 0x10
/* 1DBC4 8001CFC4 00041400 */  sll        $v0, $a0, 0x10
/* 1DBC8 8001CFC8 00021403 */  sra        $v0, $v0, 0x10
/* 1DBCC 8001CFCC 2442FFC0 */  addiu      $v0, $v0, -0x40
/* 1DBD0 8001CFD0 0062182A */  slt        $v1, $v1, $v0
/* 1DBD4 8001CFD4 50600001 */  beql       $v1, $zero, .L8001CFDC
/* 1DBD8 8001CFD8 008AC023 */   subu      $t8, $a0, $t2
.L8001CFDC:
/* 1DBDC 8001CFDC 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 1DBE0 8001CFE0 8C8437DC */  lw         $a0, %lo(D_800F37DC)($a0)
/* 1DBE4 8001CFE4 24820008 */  addiu      $v0, $a0, 8
/* 1DBE8 8001CFE8 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 1DBEC 8001CFEC AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 1DBF0 8001CFF0 3C05800F */  lui        $a1, %hi(D_800ED738)
/* 1DBF4 8001CFF4 84A5D738 */  lh         $a1, %lo(D_800ED738)($a1)
/* 1DBF8 8001CFF8 24A2FFFF */  addiu      $v0, $a1, -1
/* 1DBFC 8001CFFC 30420FFF */  andi       $v0, $v0, 0xfff
/* 1DC00 8001D000 3C03FD10 */  lui        $v1, 0xfd10
/* 1DC04 8001D004 00431025 */  or         $v0, $v0, $v1
/* 1DC08 8001D008 AC820000 */  sw         $v0, ($a0)
/* 1DC0C 8001D00C 000A1400 */  sll        $v0, $t2, 0x10
/* 1DC10 8001D010 00021403 */  sra        $v0, $v0, 0x10
/* 1DC14 8001D014 01A50018 */  mult       $t5, $a1
/* 1DC18 8001D018 00002812 */  mflo       $a1
/* 1DC1C 8001D01C 00451021 */  addu       $v0, $v0, $a1
/* 1DC20 8001D020 00021040 */  sll        $v0, $v0, 1
/* 1DC24 8001D024 3C03800F */  lui        $v1, %hi(D_800F33C8)
/* 1DC28 8001D028 8C6333C8 */  lw         $v1, %lo(D_800F33C8)($v1)
/* 1DC2C 8001D02C 00431021 */  addu       $v0, $v0, $v1
/* 1DC30 8001D030 AC820004 */  sw         $v0, 4($a0)
/* 1DC34 8001D034 24820010 */  addiu      $v0, $a0, 0x10
/* 1DC38 8001D038 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 1DC3C 8001D03C AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 1DC40 8001D040 AC930008 */  sw         $s3, 8($a0)
/* 1DC44 8001D044 3C020700 */  lui        $v0, 0x700
/* 1DC48 8001D048 AC82000C */  sw         $v0, 0xc($a0)
/* 1DC4C 8001D04C 24820018 */  addiu      $v0, $a0, 0x18
/* 1DC50 8001D050 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 1DC54 8001D054 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 1DC58 8001D058 3C02E600 */  lui        $v0, 0xe600
/* 1DC5C 8001D05C AC820010 */  sw         $v0, 0x10($a0)
/* 1DC60 8001D060 AC800014 */  sw         $zero, 0x14($a0)
/* 1DC64 8001D064 24820020 */  addiu      $v0, $a0, 0x20
/* 1DC68 8001D068 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 1DC6C 8001D06C AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 1DC70 8001D070 3C02F400 */  lui        $v0, 0xf400
/* 1DC74 8001D074 AC820018 */  sw         $v0, 0x18($a0)
/* 1DC78 8001D078 AC90001C */  sw         $s0, 0x1c($a0)
/* 1DC7C 8001D07C 24820028 */  addiu      $v0, $a0, 0x28
/* 1DC80 8001D080 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 1DC84 8001D084 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 1DC88 8001D088 3C02E700 */  lui        $v0, 0xe700
/* 1DC8C 8001D08C AC820020 */  sw         $v0, 0x20($a0)
/* 1DC90 8001D090 AC800024 */  sw         $zero, 0x24($a0)
/* 1DC94 8001D094 24820030 */  addiu      $v0, $a0, 0x30
/* 1DC98 8001D098 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 1DC9C 8001D09C AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 1DCA0 8001D0A0 AC930028 */  sw         $s3, 0x28($a0)
/* 1DCA4 8001D0A4 AC80002C */  sw         $zero, 0x2c($a0)
/* 1DCA8 8001D0A8 24820038 */  addiu      $v0, $a0, 0x38
/* 1DCAC 8001D0AC 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 1DCB0 8001D0B0 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 1DCB4 8001D0B4 3C02F200 */  lui        $v0, 0xf200
/* 1DCB8 8001D0B8 AC820030 */  sw         $v0, 0x30($a0)
/* 1DCBC 8001D0BC AC990034 */  sw         $t9, 0x34($a0)
/* 1DCC0 8001D0C0 00003821 */  addu       $a3, $zero, $zero
/* 1DCC4 8001D0C4 000A1400 */  sll        $v0, $t2, 0x10
/* 1DCC8 8001D0C8 00026403 */  sra        $t4, $v0, 0x10
/* 1DCCC 8001D0CC 00181400 */  sll        $v0, $t8, 0x10
/* 1DCD0 8001D0D0 00025C03 */  sra        $t3, $v0, 0x10
/* 1DCD4 8001D0D4 00002821 */  addu       $a1, $zero, $zero
.L8001D0D8:
/* 1DCD8 8001D0D8 00071C00 */  sll        $v1, $a3, 0x10
/* 1DCDC 8001D0DC 00031C03 */  sra        $v1, $v1, 0x10
/* 1DCE0 8001D0E0 01A31821 */  addu       $v1, $t5, $v1
/* 1DCE4 8001D0E4 006F1021 */  addu       $v0, $v1, $t7
/* 1DCE8 8001D0E8 00021080 */  sll        $v0, $v0, 2
/* 1DCEC 8001D0EC 30420FFF */  andi       $v0, $v0, 0xfff
/* 1DCF0 8001D0F0 00564825 */  or         $t1, $v0, $s6
/* 1DCF4 8001D0F4 00031880 */  sll        $v1, $v1, 2
/* 1DCF8 8001D0F8 30680FFF */  andi       $t0, $v1, 0xfff
/* 1DCFC 8001D0FC 3C06800F */  lui        $a2, %hi(D_800ED738)
/* 1DD00 8001D100 94C6D738 */  lhu        $a2, %lo(D_800ED738)($a2)
.L8001D104:
/* 1DD04 8001D104 3C04800F */  lui        $a0, %hi(D_800F37DC)
/* 1DD08 8001D108 8C8437DC */  lw         $a0, %lo(D_800F37DC)($a0)
/* 1DD0C 8001D10C 24820008 */  addiu      $v0, $a0, 8
/* 1DD10 8001D110 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 1DD14 8001D114 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 1DD18 8001D118 00051C00 */  sll        $v1, $a1, 0x10
/* 1DD1C 8001D11C 00031C03 */  sra        $v1, $v1, 0x10
/* 1DD20 8001D120 01831821 */  addu       $v1, $t4, $v1
/* 1DD24 8001D124 006B1021 */  addu       $v0, $v1, $t3
/* 1DD28 8001D128 00021080 */  sll        $v0, $v0, 2
/* 1DD2C 8001D12C 30420FFF */  andi       $v0, $v0, 0xfff
/* 1DD30 8001D130 00021300 */  sll        $v0, $v0, 0xc
/* 1DD34 8001D134 00491025 */  or         $v0, $v0, $t1
/* 1DD38 8001D138 AC820000 */  sw         $v0, ($a0)
/* 1DD3C 8001D13C 00031880 */  sll        $v1, $v1, 2
/* 1DD40 8001D140 30630FFF */  andi       $v1, $v1, 0xfff
/* 1DD44 8001D144 00031B00 */  sll        $v1, $v1, 0xc
/* 1DD48 8001D148 00681825 */  or         $v1, $v1, $t0
/* 1DD4C 8001D14C AC830004 */  sw         $v1, 4($a0)
/* 1DD50 8001D150 24820010 */  addiu      $v0, $a0, 0x10
/* 1DD54 8001D154 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 1DD58 8001D158 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 1DD5C 8001D15C AC950008 */  sw         $s5, 8($a0)
/* 1DD60 8001D160 AC80000C */  sw         $zero, 0xc($a0)
/* 1DD64 8001D164 24820018 */  addiu      $v0, $a0, 0x18
/* 1DD68 8001D168 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 1DD6C 8001D16C AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 1DD70 8001D170 AC940010 */  sw         $s4, 0x10($a0)
/* 1DD74 8001D174 00A61021 */  addu       $v0, $a1, $a2
/* 1DD78 8001D178 00402821 */  addu       $a1, $v0, $zero
/* 1DD7C 8001D17C 00021400 */  sll        $v0, $v0, 0x10
/* 1DD80 8001D180 00021403 */  sra        $v0, $v0, 0x10
/* 1DD84 8001D184 28420140 */  slti       $v0, $v0, 0x140
/* 1DD88 8001D188 1440FFDE */  bnez       $v0, .L8001D104
/* 1DD8C 8001D18C AC920014 */   sw        $s2, 0x14($a0)
/* 1DD90 8001D190 3C02800F */  lui        $v0, %hi(D_800F3960)
/* 1DD94 8001D194 94423960 */  lhu        $v0, %lo(D_800F3960)($v0)
/* 1DD98 8001D198 00E21021 */  addu       $v0, $a3, $v0
/* 1DD9C 8001D19C 00403821 */  addu       $a3, $v0, $zero
/* 1DDA0 8001D1A0 00021400 */  sll        $v0, $v0, 0x10
/* 1DDA4 8001D1A4 00021403 */  sra        $v0, $v0, 0x10
/* 1DDA8 8001D1A8 284200F0 */  slti       $v0, $v0, 0xf0
/* 1DDAC 8001D1AC 5440FFCA */  bnel       $v0, $zero, .L8001D0D8
/* 1DDB0 8001D1B0 00002821 */   addu      $a1, $zero, $zero
/* 1DDB4 8001D1B4 25420040 */  addiu      $v0, $t2, 0x40
/* 1DDB8 8001D1B8 00405021 */  addu       $t2, $v0, $zero
/* 1DDBC 8001D1BC 00021400 */  sll        $v0, $v0, 0x10
/* 1DDC0 8001D1C0 00021403 */  sra        $v0, $v0, 0x10
/* 1DDC4 8001D1C4 3C04800F */  lui        $a0, %hi(D_800ED738)
/* 1DDC8 8001D1C8 9484D738 */  lhu        $a0, %lo(D_800ED738)($a0)
/* 1DDCC 8001D1CC 3C03800F */  lui        $v1, %hi(D_800ED738)
/* 1DDD0 8001D1D0 8463D738 */  lh         $v1, %lo(D_800ED738)($v1)
/* 1DDD4 8001D1D4 0043102A */  slt        $v0, $v0, $v1
/* 1DDD8 8001D1D8 1440FF79 */  bnez       $v0, .L8001CFC0
/* 1DDDC 8001D1DC 000A1C00 */   sll       $v1, $t2, 0x10
.L8001D1E0:
/* 1DDE0 8001D1E0 25C20010 */  addiu      $v0, $t6, 0x10
/* 1DDE4 8001D1E4 00407021 */  addu       $t6, $v0, $zero
/* 1DDE8 8001D1E8 00021400 */  sll        $v0, $v0, 0x10
/* 1DDEC 8001D1EC 00021403 */  sra        $v0, $v0, 0x10
/* 1DDF0 8001D1F0 3C04800F */  lui        $a0, %hi(D_800F3960)
/* 1DDF4 8001D1F4 94843960 */  lhu        $a0, %lo(D_800F3960)($a0)
/* 1DDF8 8001D1F8 3C03800F */  lui        $v1, %hi(D_800F3960)
/* 1DDFC 8001D1FC 84633960 */  lh         $v1, %lo(D_800F3960)($v1)
/* 1DE00 8001D200 0043102A */  slt        $v0, $v0, $v1
/* 1DE04 8001D204 1440FF51 */  bnez       $v0, .L8001CF4C
/* 1DE08 8001D208 000E1C00 */   sll       $v1, $t6, 0x10
.L8001D20C:
/* 1DE0C 8001D20C 8FBE0030 */  lw         $fp, 0x30($sp)
/* 1DE10 8001D210 8FB7002C */  lw         $s7, 0x2c($sp)
/* 1DE14 8001D214 8FB60028 */  lw         $s6, 0x28($sp)
/* 1DE18 8001D218 8FB50024 */  lw         $s5, 0x24($sp)
/* 1DE1C 8001D21C 8FB40020 */  lw         $s4, 0x20($sp)
/* 1DE20 8001D220 8FB3001C */  lw         $s3, 0x1c($sp)
/* 1DE24 8001D224 8FB20018 */  lw         $s2, 0x18($sp)
/* 1DE28 8001D228 8FB10014 */  lw         $s1, 0x14($sp)
/* 1DE2C 8001D22C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1DE30 8001D230 03E00008 */  jr         $ra
/* 1DE34 8001D234 27BD0038 */   addiu     $sp, $sp, 0x38
/* 1DE38 8001D238 00000000 */  nop
/* 1DE3C 8001D23C 00000000 */  nop
