	.set noat
	.set noreorder

glabel func_8006EEB8
/* 6FAB8 8006EEB8 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 6FABC 8006EEBC AFBF0054 */  sw         $ra, 0x54($sp)
/* 6FAC0 8006EEC0 AFBE0050 */  sw         $fp, 0x50($sp)
/* 6FAC4 8006EEC4 AFB7004C */  sw         $s7, 0x4c($sp)
/* 6FAC8 8006EEC8 AFB60048 */  sw         $s6, 0x48($sp)
/* 6FACC 8006EECC AFB50044 */  sw         $s5, 0x44($sp)
/* 6FAD0 8006EED0 AFB40040 */  sw         $s4, 0x40($sp)
/* 6FAD4 8006EED4 AFB3003C */  sw         $s3, 0x3c($sp)
/* 6FAD8 8006EED8 AFB20038 */  sw         $s2, 0x38($sp)
/* 6FADC 8006EEDC AFB10034 */  sw         $s1, 0x34($sp)
/* 6FAE0 8006EEE0 AFB00030 */  sw         $s0, 0x30($sp)
/* 6FAE4 8006EEE4 A7A4001E */  sh         $a0, 0x1e($sp)
/* 6FAE8 8006EEE8 00A0A021 */  addu       $s4, $a1, $zero
/* 6FAEC 8006EEEC 00C0F021 */  addu       $fp, $a2, $zero
/* 6FAF0 8006EEF0 00042400 */  sll        $a0, $a0, 0x10
/* 6FAF4 8006EEF4 00042403 */  sra        $a0, $a0, 0x10
/* 6FAF8 8006EEF8 00041080 */  sll        $v0, $a0, 2
/* 6FAFC 8006EEFC 00441021 */  addu       $v0, $v0, $a0
/* 6FB00 8006EF00 00021140 */  sll        $v0, $v0, 5
/* 6FB04 8006EF04 00441023 */  subu       $v0, $v0, $a0
/* 6FB08 8006EF08 00021080 */  sll        $v0, $v0, 2
/* 6FB0C 8006EF0C 3C03800F */  lui        $v1, %hi(D_800ED4B0)
/* 6FB10 8006EF10 8C63D4B0 */  lw         $v1, %lo(D_800ED4B0)($v1)
/* 6FB14 8006EF14 00438821 */  addu       $s1, $v0, $v1
/* 6FB18 8006EF18 8FA30068 */  lw         $v1, 0x68($sp)
/* 6FB1C 8006EF1C 87A2006A */  lh         $v0, 0x6a($sp)
/* 6FB20 8006EF20 00021027 */  nor        $v0, $zero, $v0
/* 6FB24 8006EF24 000217C3 */  sra        $v0, $v0, 0x1f
/* 6FB28 8006EF28 0062B824 */  and        $s7, $v1, $v0
/* 6FB2C 8006EF2C 00071400 */  sll        $v0, $a3, 0x10
/* 6FB30 8006EF30 00021403 */  sra        $v0, $v0, 0x10
/* 6FB34 8006EF34 00021027 */  nor        $v0, $zero, $v0
/* 6FB38 8006EF38 000217C3 */  sra        $v0, $v0, 0x1f
/* 6FB3C 8006EF3C 00E2B024 */  and        $s6, $a3, $v0
/* 6FB40 8006EF40 33D000FF */  andi       $s0, $fp, 0xff
/* 6FB44 8006EF44 0C01BDC6 */  jal        func_8006F718
/* 6FB48 8006EF48 02002821 */   addu      $a1, $s0, $zero
/* 6FB4C 8006EF4C 2E100009 */  sltiu      $s0, $s0, 9
/* 6FB50 8006EF50 120000BE */  beqz       $s0, .L8006F24C
/* 6FB54 8006EF54 AFA20024 */   sw        $v0, 0x24($sp)
/* 6FB58 8006EF58 92220005 */  lbu        $v0, 5($s1)
/* 6FB5C 8006EF5C 14400014 */  bnez       $v0, .L8006EFB0
/* 6FB60 8006EF60 328700FF */   andi      $a3, $s4, 0xff
/* 6FB64 8006EF64 3C03800F */  lui        $v1, %hi(D_800F37D4)
/* 6FB68 8006EF68 8C6337D4 */  lw         $v1, %lo(D_800F37D4)($v1)
/* 6FB6C 8006EF6C 8C620008 */  lw         $v0, 8($v1)
/* 6FB70 8006EF70 00628021 */  addu       $s0, $v1, $v0
/* 6FB74 8006EF74 24E3FFD0 */  addiu      $v1, $a3, -0x30
/* 6FB78 8006EF78 00031100 */  sll        $v0, $v1, 4
/* 6FB7C 8006EF7C 00431023 */  subu       $v0, $v0, $v1
/* 6FB80 8006EF80 00021080 */  sll        $v0, $v0, 2
/* 6FB84 8006EF84 02028021 */  addu       $s0, $s0, $v0
/* 6FB88 8006EF88 3C02800C */  lui        $v0, %hi(D_800C5DF2)
/* 6FB8C 8006EF8C 90425DF2 */  lbu        $v0, %lo(D_800C5DF2)($v0)
/* 6FB90 8006EF90 10400004 */  beqz       $v0, .L8006EFA4
/* 6FB94 8006EF94 2412000A */   addiu     $s2, $zero, 0xa
/* 6FB98 8006EF98 3C12800C */  lui        $s2, %hi(D_800C5E34)
/* 6FB9C 8006EF9C 02479021 */  addu       $s2, $s2, $a3
/* 6FBA0 8006EFA0 92525E34 */  lbu        $s2, %lo(D_800C5E34)($s2)
.L8006EFA4:
/* 6FBA4 8006EFA4 2413000C */  addiu      $s3, $zero, 0xc
/* 6FBA8 8006EFA8 0801BC01 */  j          .L8006F004
/* 6FBAC 8006EFAC 24150005 */   addiu     $s5, $zero, 5
.L8006EFB0:
/* 6FBB0 8006EFB0 3C03800F */  lui        $v1, %hi(D_800F3294)
/* 6FBB4 8006EFB4 8C633294 */  lw         $v1, %lo(D_800F3294)($v1)
/* 6FBB8 8006EFB8 8C620008 */  lw         $v0, 8($v1)
/* 6FBBC 8006EFBC 00628021 */  addu       $s0, $v1, $v0
/* 6FBC0 8006EFC0 328200FF */  andi       $v0, $s4, 0xff
/* 6FBC4 8006EFC4 2442FFD0 */  addiu      $v0, $v0, -0x30
/* 6FBC8 8006EFC8 00021140 */  sll        $v0, $v0, 5
/* 6FBCC 8006EFCC 02028021 */  addu       $s0, $s0, $v0
/* 6FBD0 8006EFD0 3C02800C */  lui        $v0, %hi(D_800C5DF2)
/* 6FBD4 8006EFD4 90425DF2 */  lbu        $v0, %lo(D_800C5DF2)($v0)
/* 6FBD8 8006EFD8 10400007 */  beqz       $v0, .L8006EFF8
/* 6FBDC 8006EFDC 328200FF */   andi      $v0, $s4, 0xff
/* 6FBE0 8006EFE0 3C12800C */  lui        $s2, %hi(D_800C5F34)
/* 6FBE4 8006EFE4 02429021 */  addu       $s2, $s2, $v0
/* 6FBE8 8006EFE8 92525F34 */  lbu        $s2, %lo(D_800C5F34)($s2)
/* 6FBEC 8006EFEC 2A420009 */  slti       $v0, $s2, 9
/* 6FBF0 8006EFF0 14400003 */  bnez       $v0, .L8006F000
/* 6FBF4 8006EFF4 24130008 */   addiu     $s3, $zero, 8
.L8006EFF8:
/* 6FBF8 8006EFF8 24120008 */  addiu      $s2, $zero, 8
/* 6FBFC 8006EFFC 24130008 */  addiu      $s3, $zero, 8
.L8006F000:
/* 6FC00 8006F000 24150004 */  addiu      $s5, $zero, 4
.L8006F004:
/* 6FC04 8006F004 A2320013 */  sb         $s2, 0x13($s1)
/* 6FC08 8006F008 92230006 */  lbu        $v1, 6($s1)
/* 6FC0C 8006F00C 00031882 */  srl        $v1, $v1, 2
/* 6FC10 8006F010 30630001 */  andi       $v1, $v1, 1
/* 6FC14 8006F014 328500FF */  andi       $a1, $s4, 0xff
/* 6FC18 8006F018 38A20080 */  xori       $v0, $a1, 0x80
/* 6FC1C 8006F01C 0002102B */  sltu       $v0, $zero, $v0
/* 6FC20 8006F020 00621824 */  and        $v1, $v1, $v0
/* 6FC24 8006F024 10600015 */  beqz       $v1, .L8006F07C
/* 6FC28 8006F028 38A30081 */   xori      $v1, $a1, 0x81
/* 6FC2C 8006F02C 0003182B */  sltu       $v1, $zero, $v1
/* 6FC30 8006F030 33C200FF */  andi       $v0, $fp, 0xff
/* 6FC34 8006F034 2C420001 */  sltiu      $v0, $v0, 1
/* 6FC38 8006F038 00621824 */  and        $v1, $v1, $v0
/* 6FC3C 8006F03C 1060000F */  beqz       $v1, .L8006F07C
/* 6FC40 8006F040 26E6FFFE */   addiu     $a2, $s7, -2
/* 6FC44 8006F044 97AE001E */  lhu        $t6, 0x1e($sp)
/* 6FC48 8006F048 000E2400 */  sll        $a0, $t6, 0x10
/* 6FC4C 8006F04C 26C5FFFF */  addiu      $a1, $s6, -1
/* 6FC50 8006F050 00052C00 */  sll        $a1, $a1, 0x10
/* 6FC54 8006F054 00063400 */  sll        $a2, $a2, 0x10
/* 6FC58 8006F058 92270009 */  lbu        $a3, 9($s1)
/* 6FC5C 8006F05C 24E70003 */  addiu      $a3, $a3, 3
/* 6FC60 8006F060 26620002 */  addiu      $v0, $s3, 2
/* 6FC64 8006F064 AFA20010 */  sw         $v0, 0x10($sp)
/* 6FC68 8006F068 00042403 */  sra        $a0, $a0, 0x10
/* 6FC6C 8006F06C 00052C03 */  sra        $a1, $a1, 0x10
/* 6FC70 8006F070 00063403 */  sra        $a2, $a2, 0x10
/* 6FC74 8006F074 0C01BCEF */  jal        func_8006F3BC
/* 6FC78 8006F078 02473821 */   addu      $a3, $s2, $a3
.L8006F07C:
/* 6FC7C 8006F07C 00161400 */  sll        $v0, $s6, 0x10
/* 6FC80 8006F080 00021403 */  sra        $v0, $v0, 0x10
/* 6FC84 8006F084 00171C00 */  sll        $v1, $s7, 0x10
/* 6FC88 8006F088 00031C03 */  sra        $v1, $v1, 0x10
/* 6FC8C 8006F08C 9624001C */  lhu        $a0, 0x1c($s1)
/* 6FC90 8006F090 00042400 */  sll        $a0, $a0, 0x10
/* 6FC94 8006F094 00042C03 */  sra        $a1, $a0, 0x10
/* 6FC98 8006F098 00650018 */  mult       $v1, $a1
/* 6FC9C 8006F09C 00001812 */  mflo       $v1
/* 6FCA0 8006F0A0 00431021 */  addu       $v0, $v0, $v1
/* 6FCA4 8006F0A4 00021FC2 */  srl        $v1, $v0, 0x1f
/* 6FCA8 8006F0A8 00431021 */  addu       $v0, $v0, $v1
/* 6FCAC 8006F0AC 00021043 */  sra        $v0, $v0, 1
/* 6FCB0 8006F0B0 8FAE0024 */  lw         $t6, 0x24($sp)
/* 6FCB4 8006F0B4 01C24021 */  addu       $t0, $t6, $v0
/* 6FCB8 8006F0B8 000427C2 */  srl        $a0, $a0, 0x1f
/* 6FCBC 8006F0BC 00A42821 */  addu       $a1, $a1, $a0
/* 6FCC0 8006F0C0 32C20001 */  andi       $v0, $s6, 1
/* 6FCC4 8006F0C4 10400034 */  beqz       $v0, .L8006F198
/* 6FCC8 8006F0C8 00052842 */   srl       $a1, $a1, 1
/* 6FCCC 8006F0CC 126000AF */  beqz       $s3, .L8006F38C
/* 6FCD0 8006F0D0 00004821 */   addu      $t1, $zero, $zero
/* 6FCD4 8006F0D4 00123C00 */  sll        $a3, $s2, 0x10
/* 6FCD8 8006F0D8 00071403 */  sra        $v0, $a3, 0x10
/* 6FCDC 8006F0DC 00071FC2 */  srl        $v1, $a3, 0x1f
/* 6FCE0 8006F0E0 00431021 */  addu       $v0, $v0, $v1
/* 6FCE4 8006F0E4 00021043 */  sra        $v0, $v0, 1
/* 6FCE8 8006F0E8 0002682A */  slt        $t5, $zero, $v0
/* 6FCEC 8006F0EC 02A06021 */  addu       $t4, $s5, $zero
/* 6FCF0 8006F0F0 00051400 */  sll        $v0, $a1, 0x10
/* 6FCF4 8006F0F4 00025C03 */  sra        $t3, $v0, 0x10
/* 6FCF8 8006F0F8 02605021 */  addu       $t2, $s3, $zero
.L8006F0FC:
/* 6FCFC 8006F0FC 11A00019 */  beqz       $t5, .L8006F164
/* 6FD00 8006F100 00002821 */   addu      $a1, $zero, $zero
/* 6FD04 8006F104 00071403 */  sra        $v0, $a3, 0x10
/* 6FD08 8006F108 00071FC2 */  srl        $v1, $a3, 0x1f
/* 6FD0C 8006F10C 00431021 */  addu       $v0, $v0, $v1
/* 6FD10 8006F110 00023043 */  sra        $a2, $v0, 1
.L8006F114:
/* 6FD14 8006F114 00052400 */  sll        $a0, $a1, 0x10
/* 6FD18 8006F118 00042403 */  sra        $a0, $a0, 0x10
/* 6FD1C 8006F11C 01042021 */  addu       $a0, $t0, $a0
/* 6FD20 8006F120 92030000 */  lbu        $v1, ($s0)
/* 6FD24 8006F124 00031902 */  srl        $v1, $v1, 4
/* 6FD28 8006F128 90820000 */  lbu        $v0, ($a0)
/* 6FD2C 8006F12C 00431025 */  or         $v0, $v0, $v1
/* 6FD30 8006F130 A0820000 */  sb         $v0, ($a0)
/* 6FD34 8006F134 92030000 */  lbu        $v1, ($s0)
/* 6FD38 8006F138 00031900 */  sll        $v1, $v1, 4
/* 6FD3C 8006F13C 90820001 */  lbu        $v0, 1($a0)
/* 6FD40 8006F140 00431025 */  or         $v0, $v0, $v1
/* 6FD44 8006F144 A0820001 */  sb         $v0, 1($a0)
/* 6FD48 8006F148 24A20001 */  addiu      $v0, $a1, 1
/* 6FD4C 8006F14C 00402821 */  addu       $a1, $v0, $zero
/* 6FD50 8006F150 00021400 */  sll        $v0, $v0, 0x10
/* 6FD54 8006F154 00021403 */  sra        $v0, $v0, 0x10
/* 6FD58 8006F158 0046102A */  slt        $v0, $v0, $a2
/* 6FD5C 8006F15C 1440FFED */  bnez       $v0, .L8006F114
/* 6FD60 8006F160 26100001 */   addiu     $s0, $s0, 1
.L8006F164:
/* 6FD64 8006F164 00051400 */  sll        $v0, $a1, 0x10
/* 6FD68 8006F168 00021403 */  sra        $v0, $v0, 0x10
/* 6FD6C 8006F16C 01821023 */  subu       $v0, $t4, $v0
/* 6FD70 8006F170 02028021 */  addu       $s0, $s0, $v0
/* 6FD74 8006F174 25220001 */  addiu      $v0, $t1, 1
/* 6FD78 8006F178 00404821 */  addu       $t1, $v0, $zero
/* 6FD7C 8006F17C 00021400 */  sll        $v0, $v0, 0x10
/* 6FD80 8006F180 00021403 */  sra        $v0, $v0, 0x10
/* 6FD84 8006F184 004A102A */  slt        $v0, $v0, $t2
/* 6FD88 8006F188 1440FFDC */  bnez       $v0, .L8006F0FC
/* 6FD8C 8006F18C 010B4021 */   addu      $t0, $t0, $t3
/* 6FD90 8006F190 0801BCE3 */  j          .L8006F38C
/* 6FD94 8006F194 00000000 */   nop
.L8006F198:
/* 6FD98 8006F198 1260007C */  beqz       $s3, .L8006F38C
/* 6FD9C 8006F19C 00004821 */   addu      $t1, $zero, $zero
/* 6FDA0 8006F1A0 00123C00 */  sll        $a3, $s2, 0x10
/* 6FDA4 8006F1A4 00071403 */  sra        $v0, $a3, 0x10
/* 6FDA8 8006F1A8 00071FC2 */  srl        $v1, $a3, 0x1f
/* 6FDAC 8006F1AC 00431021 */  addu       $v0, $v0, $v1
/* 6FDB0 8006F1B0 00021043 */  sra        $v0, $v0, 1
/* 6FDB4 8006F1B4 0002682A */  slt        $t5, $zero, $v0
/* 6FDB8 8006F1B8 02A06021 */  addu       $t4, $s5, $zero
/* 6FDBC 8006F1BC 00051400 */  sll        $v0, $a1, 0x10
/* 6FDC0 8006F1C0 00025C03 */  sra        $t3, $v0, 0x10
/* 6FDC4 8006F1C4 02605021 */  addu       $t2, $s3, $zero
.L8006F1C8:
/* 6FDC8 8006F1C8 11A00013 */  beqz       $t5, .L8006F218
/* 6FDCC 8006F1CC 00002821 */   addu      $a1, $zero, $zero
/* 6FDD0 8006F1D0 00071403 */  sra        $v0, $a3, 0x10
/* 6FDD4 8006F1D4 00071FC2 */  srl        $v1, $a3, 0x1f
/* 6FDD8 8006F1D8 00431021 */  addu       $v0, $v0, $v1
/* 6FDDC 8006F1DC 00023043 */  sra        $a2, $v0, 1
.L8006F1E0:
/* 6FDE0 8006F1E0 00051400 */  sll        $v0, $a1, 0x10
/* 6FDE4 8006F1E4 00021403 */  sra        $v0, $v0, 0x10
/* 6FDE8 8006F1E8 01021021 */  addu       $v0, $t0, $v0
/* 6FDEC 8006F1EC 90430000 */  lbu        $v1, ($v0)
/* 6FDF0 8006F1F0 92040000 */  lbu        $a0, ($s0)
/* 6FDF4 8006F1F4 00641825 */  or         $v1, $v1, $a0
/* 6FDF8 8006F1F8 A0430000 */  sb         $v1, ($v0)
/* 6FDFC 8006F1FC 24A20001 */  addiu      $v0, $a1, 1
/* 6FE00 8006F200 00402821 */  addu       $a1, $v0, $zero
/* 6FE04 8006F204 00021400 */  sll        $v0, $v0, 0x10
/* 6FE08 8006F208 00021403 */  sra        $v0, $v0, 0x10
/* 6FE0C 8006F20C 0046102A */  slt        $v0, $v0, $a2
/* 6FE10 8006F210 1440FFF3 */  bnez       $v0, .L8006F1E0
/* 6FE14 8006F214 26100001 */   addiu     $s0, $s0, 1
.L8006F218:
/* 6FE18 8006F218 00051400 */  sll        $v0, $a1, 0x10
/* 6FE1C 8006F21C 00021403 */  sra        $v0, $v0, 0x10
/* 6FE20 8006F220 01821023 */  subu       $v0, $t4, $v0
/* 6FE24 8006F224 02028021 */  addu       $s0, $s0, $v0
/* 6FE28 8006F228 25220001 */  addiu      $v0, $t1, 1
/* 6FE2C 8006F22C 00404821 */  addu       $t1, $v0, $zero
/* 6FE30 8006F230 00021400 */  sll        $v0, $v0, 0x10
/* 6FE34 8006F234 00021403 */  sra        $v0, $v0, 0x10
/* 6FE38 8006F238 004A102A */  slt        $v0, $v0, $t2
/* 6FE3C 8006F23C 1440FFE2 */  bnez       $v0, .L8006F1C8
/* 6FE40 8006F240 010B4021 */   addu      $t0, $t0, $t3
/* 6FE44 8006F244 0801BCE3 */  j          .L8006F38C
/* 6FE48 8006F248 00000000 */   nop
.L8006F24C:
/* 6FE4C 8006F24C 2402000A */  addiu      $v0, $zero, 0xa
/* 6FE50 8006F250 A2220013 */  sb         $v0, 0x13($s1)
/* 6FE54 8006F254 92230006 */  lbu        $v1, 6($s1)
/* 6FE58 8006F258 00031882 */  srl        $v1, $v1, 2
/* 6FE5C 8006F25C 30630001 */  andi       $v1, $v1, 1
/* 6FE60 8006F260 328400FF */  andi       $a0, $s4, 0xff
/* 6FE64 8006F264 38820080 */  xori       $v0, $a0, 0x80
/* 6FE68 8006F268 0002102B */  sltu       $v0, $zero, $v0
/* 6FE6C 8006F26C 00621824 */  and        $v1, $v1, $v0
/* 6FE70 8006F270 10600011 */  beqz       $v1, .L8006F2B8
/* 6FE74 8006F274 24020081 */   addiu     $v0, $zero, 0x81
/* 6FE78 8006F278 1082000F */  beq        $a0, $v0, .L8006F2B8
/* 6FE7C 8006F27C 26C5FFFF */   addiu     $a1, $s6, -1
/* 6FE80 8006F280 97AE001E */  lhu        $t6, 0x1e($sp)
/* 6FE84 8006F284 000E2400 */  sll        $a0, $t6, 0x10
/* 6FE88 8006F288 00052C00 */  sll        $a1, $a1, 0x10
/* 6FE8C 8006F28C 26E6FFFE */  addiu      $a2, $s7, -2
/* 6FE90 8006F290 00063400 */  sll        $a2, $a2, 0x10
/* 6FE94 8006F294 92270007 */  lbu        $a3, 7($s1)
/* 6FE98 8006F298 92220008 */  lbu        $v0, 8($s1)
/* 6FE9C 8006F29C 24420002 */  addiu      $v0, $v0, 2
/* 6FEA0 8006F2A0 AFA20010 */  sw         $v0, 0x10($sp)
/* 6FEA4 8006F2A4 00042403 */  sra        $a0, $a0, 0x10
/* 6FEA8 8006F2A8 00052C03 */  sra        $a1, $a1, 0x10
/* 6FEAC 8006F2AC 00063403 */  sra        $a2, $a2, 0x10
/* 6FEB0 8006F2B0 0C01BCEF */  jal        func_8006F3BC
/* 6FEB4 8006F2B4 24E70003 */   addiu     $a3, $a3, 3
.L8006F2B8:
/* 6FEB8 8006F2B8 3C03800F */  lui        $v1, %hi(D_800F37D4)
/* 6FEBC 8006F2BC 8C6337D4 */  lw         $v1, %lo(D_800F37D4)($v1)
/* 6FEC0 8006F2C0 8C620004 */  lw         $v0, 4($v1)
/* 6FEC4 8006F2C4 00628021 */  addu       $s0, $v1, $v0
/* 6FEC8 8006F2C8 328300FF */  andi       $v1, $s4, 0xff
/* 6FECC 8006F2CC 2463FFE0 */  addiu      $v1, $v1, -0x20
/* 6FED0 8006F2D0 00031100 */  sll        $v0, $v1, 4
/* 6FED4 8006F2D4 00431023 */  subu       $v0, $v0, $v1
/* 6FED8 8006F2D8 000210C0 */  sll        $v0, $v0, 3
/* 6FEDC 8006F2DC 02028021 */  addu       $s0, $s0, $v0
/* 6FEE0 8006F2E0 00161400 */  sll        $v0, $s6, 0x10
/* 6FEE4 8006F2E4 00021403 */  sra        $v0, $v0, 0x10
/* 6FEE8 8006F2E8 8FAE0024 */  lw         $t6, 0x24($sp)
/* 6FEEC 8006F2EC 01C24021 */  addu       $t0, $t6, $v0
/* 6FEF0 8006F2F0 00171400 */  sll        $v0, $s7, 0x10
/* 6FEF4 8006F2F4 00021403 */  sra        $v0, $v0, 0x10
/* 6FEF8 8006F2F8 8623001C */  lh         $v1, 0x1c($s1)
/* 6FEFC 8006F2FC 00430018 */  mult       $v0, $v1
/* 6FF00 8006F300 00001012 */  mflo       $v0
/* 6FF04 8006F304 01024021 */  addu       $t0, $t0, $v0
/* 6FF08 8006F308 92220008 */  lbu        $v0, 8($s1)
/* 6FF0C 8006F30C 1040001F */  beqz       $v0, .L8006F38C
/* 6FF10 8006F310 00004821 */   addu      $t1, $zero, $zero
/* 6FF14 8006F314 00003021 */  addu       $a2, $zero, $zero
.L8006F318:
/* 6FF18 8006F318 92220007 */  lbu        $v0, 7($s1)
/* 6FF1C 8006F31C 00C2102A */  slt        $v0, $a2, $v0
/* 6FF20 8006F320 10400010 */  beqz       $v0, .L8006F364
/* 6FF24 8006F324 00002821 */   addu      $a1, $zero, $zero
.L8006F328:
/* 6FF28 8006F328 00051400 */  sll        $v0, $a1, 0x10
/* 6FF2C 8006F32C 00021403 */  sra        $v0, $v0, 0x10
/* 6FF30 8006F330 01021021 */  addu       $v0, $t0, $v0
/* 6FF34 8006F334 90430000 */  lbu        $v1, ($v0)
/* 6FF38 8006F338 92040000 */  lbu        $a0, ($s0)
/* 6FF3C 8006F33C 00641825 */  or         $v1, $v1, $a0
/* 6FF40 8006F340 A0430000 */  sb         $v1, ($v0)
/* 6FF44 8006F344 24A20001 */  addiu      $v0, $a1, 1
/* 6FF48 8006F348 00402821 */  addu       $a1, $v0, $zero
/* 6FF4C 8006F34C 00021400 */  sll        $v0, $v0, 0x10
/* 6FF50 8006F350 00021403 */  sra        $v0, $v0, 0x10
/* 6FF54 8006F354 92230007 */  lbu        $v1, 7($s1)
/* 6FF58 8006F358 0043102A */  slt        $v0, $v0, $v1
/* 6FF5C 8006F35C 1440FFF2 */  bnez       $v0, .L8006F328
/* 6FF60 8006F360 26100001 */   addiu     $s0, $s0, 1
.L8006F364:
/* 6FF64 8006F364 8622001C */  lh         $v0, 0x1c($s1)
/* 6FF68 8006F368 01024021 */  addu       $t0, $t0, $v0
/* 6FF6C 8006F36C 25220001 */  addiu      $v0, $t1, 1
/* 6FF70 8006F370 00404821 */  addu       $t1, $v0, $zero
/* 6FF74 8006F374 00021400 */  sll        $v0, $v0, 0x10
/* 6FF78 8006F378 00021403 */  sra        $v0, $v0, 0x10
/* 6FF7C 8006F37C 92230008 */  lbu        $v1, 8($s1)
/* 6FF80 8006F380 0043102A */  slt        $v0, $v0, $v1
/* 6FF84 8006F384 1440FFE4 */  bnez       $v0, .L8006F318
/* 6FF88 8006F388 00000000 */   nop
.L8006F38C:
/* 6FF8C 8006F38C 8FBF0054 */  lw         $ra, 0x54($sp)
/* 6FF90 8006F390 8FBE0050 */  lw         $fp, 0x50($sp)
/* 6FF94 8006F394 8FB7004C */  lw         $s7, 0x4c($sp)
/* 6FF98 8006F398 8FB60048 */  lw         $s6, 0x48($sp)
/* 6FF9C 8006F39C 8FB50044 */  lw         $s5, 0x44($sp)
/* 6FFA0 8006F3A0 8FB40040 */  lw         $s4, 0x40($sp)
/* 6FFA4 8006F3A4 8FB3003C */  lw         $s3, 0x3c($sp)
/* 6FFA8 8006F3A8 8FB20038 */  lw         $s2, 0x38($sp)
/* 6FFAC 8006F3AC 8FB10034 */  lw         $s1, 0x34($sp)
/* 6FFB0 8006F3B0 8FB00030 */  lw         $s0, 0x30($sp)
/* 6FFB4 8006F3B4 03E00008 */  jr         $ra
/* 6FFB8 8006F3B8 27BD0058 */   addiu     $sp, $sp, 0x58
