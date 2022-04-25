	.set noat
	.set noreorder

glabel func_8005CF30
/* 5DB30 8005CF30 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5DB34 8005CF34 AFBF0024 */  sw         $ra, 0x24($sp)
/* 5DB38 8005CF38 AFB00020 */  sw         $s0, 0x20($sp)
/* 5DB3C 8005CF3C 3C01800F */  lui        $at, %hi(D_800ED550)
/* 5DB40 8005CF40 A424D550 */  sh         $a0, %lo(D_800ED550)($at)
/* 5DB44 8005CF44 3C01800F */  lui        $at, %hi(D_800ED56C)
/* 5DB48 8005CF48 A420D56C */  sh         $zero, %lo(D_800ED56C)($at)
/* 5DB4C 8005CF4C 3C01800F */  lui        $at, %hi(D_800F65BA)
/* 5DB50 8005CF50 A42065BA */  sh         $zero, %lo(D_800F65BA)($at)
/* 5DB54 8005CF54 2402FFFF */  addiu      $v0, $zero, -1
/* 5DB58 8005CF58 3C01800F */  lui        $at, %hi(D_800ED434)
/* 5DB5C 8005CF5C A422D434 */  sh         $v0, %lo(D_800ED434)($at)
/* 5DB60 8005CF60 3C01800F */  lui        $at, %hi(D_800F5468)
/* 5DB64 8005CF64 A4225468 */  sh         $v0, %lo(D_800F5468)($at)
/* 5DB68 8005CF68 3C01800F */  lui        $at, %hi(D_800F3858)
/* 5DB6C 8005CF6C AC203858 */  sw         $zero, %lo(D_800F3858)($at)
/* 5DB70 8005CF70 3C01800F */  lui        $at, %hi(D_800F5144)
/* 5DB74 8005CF74 A4205144 */  sh         $zero, %lo(D_800F5144)($at)
/* 5DB78 8005CF78 3C01800F */  lui        $at, %hi(D_800F64F8)
/* 5DB7C 8005CF7C A02064F8 */  sb         $zero, %lo(D_800F64F8)($at)
/* 5DB80 8005CF80 3C02800C */  lui        $v0, %hi(D_800C5984)
/* 5DB84 8005CF84 8C425984 */  lw         $v0, %lo(D_800C5984)($v0)
/* 5DB88 8005CF88 10400003 */  beqz       $v0, .L8005CF98
/* 5DB8C 8005CF8C 00A08021 */   addu      $s0, $a1, $zero
/* 5DB90 8005CF90 0C008DEF */  jal        func_800237BC
/* 5DB94 8005CF94 24047918 */   addiu     $a0, $zero, 0x7918
.L8005CF98:
/* 5DB98 8005CF98 3C02800F */  lui        $v0, %hi(D_800ED550)
/* 5DB9C 8005CF9C 8442D550 */  lh         $v0, %lo(D_800ED550)($v0)
/* 5DBA0 8005CFA0 00022080 */  sll        $a0, $v0, 2
/* 5DBA4 8005CFA4 00822021 */  addu       $a0, $a0, $v0
/* 5DBA8 8005CFA8 00042080 */  sll        $a0, $a0, 2
/* 5DBAC 8005CFAC 00822021 */  addu       $a0, $a0, $v0
/* 5DBB0 8005CFB0 00042080 */  sll        $a0, $a0, 2
/* 5DBB4 8005CFB4 0C008DA1 */  jal        func_80023684
/* 5DBB8 8005CFB8 24057918 */   addiu     $a1, $zero, 0x7918
/* 5DBBC 8005CFBC 3C01800C */  lui        $at, %hi(D_800C5984)
/* 5DBC0 8005CFC0 AC225984 */  sw         $v0, %lo(D_800C5984)($at)
/* 5DBC4 8005CFC4 3C02800F */  lui        $v0, %hi(D_800ED550)
/* 5DBC8 8005CFC8 9442D550 */  lhu        $v0, %lo(D_800ED550)($v0)
/* 5DBCC 8005CFCC 00402821 */  addu       $a1, $v0, $zero
/* 5DBD0 8005CFD0 00021400 */  sll        $v0, $v0, 0x10
/* 5DBD4 8005CFD4 18400029 */  blez       $v0, .L8005D07C
/* 5DBD8 8005CFD8 00001821 */   addu      $v1, $zero, $zero
/* 5DBDC 8005CFDC 3C06800C */  lui        $a2, %hi(D_800C5984)
/* 5DBE0 8005CFE0 8CC65984 */  lw         $a2, %lo(D_800C5984)($a2)
/* 5DBE4 8005CFE4 24070001 */  addiu      $a3, $zero, 1
/* 5DBE8 8005CFE8 2404FFFF */  addiu      $a0, $zero, -1
/* 5DBEC 8005CFEC 44800000 */  mtc1       $zero, $f0
/* 5DBF0 8005CFF0 3C013F80 */  lui        $at, 0x3f80
/* 5DBF4 8005CFF4 44811000 */  mtc1       $at, $f2
/* 5DBF8 8005CFF8 00051400 */  sll        $v0, $a1, 0x10
/* 5DBFC 8005CFFC 00022C03 */  sra        $a1, $v0, 0x10
/* 5DC00 8005D000 00031080 */  sll        $v0, $v1, 2
.L8005D004:
/* 5DC04 8005D004 00431021 */  addu       $v0, $v0, $v1
/* 5DC08 8005D008 00021080 */  sll        $v0, $v0, 2
/* 5DC0C 8005D00C 00431021 */  addu       $v0, $v0, $v1
/* 5DC10 8005D010 00021080 */  sll        $v0, $v0, 2
/* 5DC14 8005D014 00461021 */  addu       $v0, $v0, $a2
/* 5DC18 8005D018 A4470000 */  sh         $a3, ($v0)
/* 5DC1C 8005D01C A4440008 */  sh         $a0, 8($v0)
/* 5DC20 8005D020 A4440006 */  sh         $a0, 6($v0)
/* 5DC24 8005D024 A4440004 */  sh         $a0, 4($v0)
/* 5DC28 8005D028 AC400010 */  sw         $zero, 0x10($v0)
/* 5DC2C 8005D02C E440002C */  swc1       $f0, 0x2c($v0)
/* 5DC30 8005D030 E4400028 */  swc1       $f0, 0x28($v0)
/* 5DC34 8005D034 E4400024 */  swc1       $f0, 0x24($v0)
/* 5DC38 8005D038 E4400020 */  swc1       $f0, 0x20($v0)
/* 5DC3C 8005D03C E440001C */  swc1       $f0, 0x1c($v0)
/* 5DC40 8005D040 E4400018 */  swc1       $f0, 0x18($v0)
/* 5DC44 8005D044 E4420038 */  swc1       $f2, 0x38($v0)
/* 5DC48 8005D048 E4420034 */  swc1       $f2, 0x34($v0)
/* 5DC4C 8005D04C E4420030 */  swc1       $f2, 0x30($v0)
/* 5DC50 8005D050 AC400048 */  sw         $zero, 0x48($v0)
/* 5DC54 8005D054 AC400040 */  sw         $zero, 0x40($v0)
/* 5DC58 8005D058 AC400050 */  sw         $zero, 0x50($v0)
/* 5DC5C 8005D05C AC400014 */  sw         $zero, 0x14($v0)
/* 5DC60 8005D060 24630001 */  addiu      $v1, $v1, 1
/* 5DC64 8005D064 A443000A */  sh         $v1, 0xa($v0)
/* 5DC68 8005D068 A4400044 */  sh         $zero, 0x44($v0)
/* 5DC6C 8005D06C AC400048 */  sw         $zero, 0x48($v0)
/* 5DC70 8005D070 0065102A */  slt        $v0, $v1, $a1
/* 5DC74 8005D074 1440FFE3 */  bnez       $v0, .L8005D004
/* 5DC78 8005D078 00031080 */   sll       $v0, $v1, 2
.L8005D07C:
/* 5DC7C 8005D07C 00001821 */  addu       $v1, $zero, $zero
/* 5DC80 8005D080 00031100 */  sll        $v0, $v1, 4
.L8005D084:
/* 5DC84 8005D084 3C01800F */  lui        $at, %hi(D_800ED61A)
/* 5DC88 8005D088 00220821 */  addu       $at, $at, $v0
/* 5DC8C 8005D08C A420D61A */  sh         $zero, %lo(D_800ED61A)($at)
/* 5DC90 8005D090 3C01800F */  lui        $at, %hi(D_800ED61C)
/* 5DC94 8005D094 00220821 */  addu       $at, $at, $v0
/* 5DC98 8005D098 A420D61C */  sh         $zero, %lo(D_800ED61C)($at)
/* 5DC9C 8005D09C 3C01800F */  lui        $at, %hi(D_800ED618)
/* 5DCA0 8005D0A0 00220821 */  addu       $at, $at, $v0
/* 5DCA4 8005D0A4 A420D618 */  sh         $zero, %lo(D_800ED618)($at)
/* 5DCA8 8005D0A8 3C01800F */  lui        $at, %hi(D_800ED624)
/* 5DCAC 8005D0AC 00220821 */  addu       $at, $at, $v0
/* 5DCB0 8005D0B0 AC20D624 */  sw         $zero, %lo(D_800ED624)($at)
/* 5DCB4 8005D0B4 3C01800F */  lui        $at, %hi(D_800ED620)
/* 5DCB8 8005D0B8 00220821 */  addu       $at, $at, $v0
/* 5DCBC 8005D0BC AC20D620 */  sw         $zero, %lo(D_800ED620)($at)
/* 5DCC0 8005D0C0 24630001 */  addiu      $v1, $v1, 1
/* 5DCC4 8005D0C4 2862000A */  slti       $v0, $v1, 0xa
/* 5DCC8 8005D0C8 1440FFEE */  bnez       $v0, .L8005D084
/* 5DCCC 8005D0CC 00031100 */   sll       $v0, $v1, 4
/* 5DCD0 8005D0D0 26020002 */  addiu      $v0, $s0, 2
/* 5DCD4 8005D0D4 3C01800C */  lui        $at, %hi(D_800C5988)
/* 5DCD8 8005D0D8 A4225988 */  sh         $v0, %lo(D_800C5988)($at)
/* 5DCDC 8005D0DC 3C01800C */  lui        $at, %hi(D_800C598A)
/* 5DCE0 8005D0E0 A420598A */  sh         $zero, %lo(D_800C598A)($at)
/* 5DCE4 8005D0E4 3C01800C */  lui        $at, %hi(D_800C598C)
/* 5DCE8 8005D0E8 A420598C */  sh         $zero, %lo(D_800C598C)($at)
/* 5DCEC 8005D0EC 00021400 */  sll        $v0, $v0, 0x10
/* 5DCF0 8005D0F0 00021403 */  sra        $v0, $v0, 0x10
/* 5DCF4 8005D0F4 00022040 */  sll        $a0, $v0, 1
/* 5DCF8 8005D0F8 00822021 */  addu       $a0, $a0, $v0
/* 5DCFC 8005D0FC 00042080 */  sll        $a0, $a0, 2
/* 5DD00 8005D100 0C008DA1 */  jal        func_80023684
/* 5DD04 8005D104 24057918 */   addiu     $a1, $zero, 0x7918
/* 5DD08 8005D108 3C01800C */  lui        $at, %hi(D_800C5990)
/* 5DD0C 8005D10C AC225990 */  sw         $v0, %lo(D_800C5990)($at)
/* 5DD10 8005D110 3C02800C */  lui        $v0, %hi(D_800C5988)
/* 5DD14 8005D114 94425988 */  lhu        $v0, %lo(D_800C5988)($v0)
/* 5DD18 8005D118 00402021 */  addu       $a0, $v0, $zero
/* 5DD1C 8005D11C 00021400 */  sll        $v0, $v0, 0x10
/* 5DD20 8005D120 18400012 */  blez       $v0, .L8005D16C
/* 5DD24 8005D124 00001821 */   addu      $v1, $zero, $zero
/* 5DD28 8005D128 3C05800C */  lui        $a1, %hi(D_800C5990)
/* 5DD2C 8005D12C 8CA55990 */  lw         $a1, %lo(D_800C5990)($a1)
/* 5DD30 8005D130 24060001 */  addiu      $a2, $zero, 1
/* 5DD34 8005D134 00041400 */  sll        $v0, $a0, 0x10
/* 5DD38 8005D138 00022403 */  sra        $a0, $v0, 0x10
/* 5DD3C 8005D13C 00031040 */  sll        $v0, $v1, 1
.L8005D140:
/* 5DD40 8005D140 00431021 */  addu       $v0, $v0, $v1
/* 5DD44 8005D144 00021080 */  sll        $v0, $v0, 2
/* 5DD48 8005D148 00451021 */  addu       $v0, $v0, $a1
/* 5DD4C 8005D14C A4460000 */  sh         $a2, ($v0)
/* 5DD50 8005D150 24630001 */  addiu      $v1, $v1, 1
/* 5DD54 8005D154 A4430002 */  sh         $v1, 2($v0)
/* 5DD58 8005D158 AC400004 */  sw         $zero, 4($v0)
/* 5DD5C 8005D15C AC400008 */  sw         $zero, 8($v0)
/* 5DD60 8005D160 0064102A */  slt        $v0, $v1, $a0
/* 5DD64 8005D164 1440FFF6 */  bnez       $v0, .L8005D140
/* 5DD68 8005D168 00031040 */   sll       $v0, $v1, 1
.L8005D16C:
/* 5DD6C 8005D16C 3C01800F */  lui        $at, %hi(D_800F64E0)
/* 5DD70 8005D170 AC2064E0 */  sw         $zero, %lo(D_800F64E0)($at)
/* 5DD74 8005D174 8FBF0024 */  lw         $ra, 0x24($sp)
/* 5DD78 8005D178 8FB00020 */  lw         $s0, 0x20($sp)
/* 5DD7C 8005D17C 03E00008 */  jr         $ra
/* 5DD80 8005D180 27BD0028 */   addiu     $sp, $sp, 0x28
