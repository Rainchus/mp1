	.set noat
	.set noreorder

glabel func_800F9C50_D10C0
/* D10C0 800F9C50 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* D10C4 800F9C54 AFBF0048 */  sw         $ra, 0x48($sp)
/* D10C8 800F9C58 AFB30044 */  sw         $s3, 0x44($sp)
/* D10CC 800F9C5C AFB20040 */  sw         $s2, 0x40($sp)
/* D10D0 800F9C60 AFB1003C */  sw         $s1, 0x3c($sp)
/* D10D4 800F9C64 AFB00038 */  sw         $s0, 0x38($sp)
/* D10D8 800F9C68 00809821 */  addu       $s3, $a0, $zero
/* D10DC 800F9C6C 2402000F */  addiu      $v0, $zero, 0xf
/* D10E0 800F9C70 A7A20018 */  sh         $v0, 0x18($sp)
/* D10E4 800F9C74 24020038 */  addiu      $v0, $zero, 0x38
/* D10E8 800F9C78 A7A2001A */  sh         $v0, 0x1a($sp)
/* D10EC 800F9C7C 24030078 */  addiu      $v1, $zero, 0x78
/* D10F0 800F9C80 A7A30020 */  sh         $v1, 0x20($sp)
/* D10F4 800F9C84 A7A30022 */  sh         $v1, 0x22($sp)
/* D10F8 800F9C88 24020010 */  addiu      $v0, $zero, 0x10
/* D10FC 800F9C8C A7A20028 */  sh         $v0, 0x28($sp)
/* D1100 800F9C90 2402003C */  addiu      $v0, $zero, 0x3c
/* D1104 800F9C94 A7A2002A */  sh         $v0, 0x2a($sp)
/* D1108 800F9C98 A7A30030 */  sh         $v1, 0x30($sp)
/* D110C 800F9C9C A7A30032 */  sh         $v1, 0x32($sp)
/* D1110 800F9CA0 00002021 */  addu       $a0, $zero, $zero
/* D1114 800F9CA4 3082FFFF */  andi       $v0, $a0, 0xffff
.L800F9CA8:
/* D1118 800F9CA8 00021840 */  sll        $v1, $v0, 1
/* D111C 800F9CAC 00621821 */  addu       $v1, $v1, $v0
/* D1120 800F9CB0 00031900 */  sll        $v1, $v1, 4
/* D1124 800F9CB4 3C02800F */  lui        $v0, %hi(D_800F32B0)
/* D1128 800F9CB8 00431021 */  addu       $v0, $v0, $v1
/* D112C 800F9CBC 904232B0 */  lbu        $v0, %lo(D_800F32B0)($v0)
/* D1130 800F9CC0 50400007 */  beql       $v0, $zero, .L800F9CE0
/* D1134 800F9CC4 3083FFFF */   andi      $v1, $a0, 0xffff
/* D1138 800F9CC8 24840001 */  addiu      $a0, $a0, 1
/* D113C 800F9CCC 3082FFFF */  andi       $v0, $a0, 0xffff
/* D1140 800F9CD0 2C420004 */  sltiu      $v0, $v0, 4
/* D1144 800F9CD4 1440FFF4 */  bnez       $v0, .L800F9CA8
/* D1148 800F9CD8 3082FFFF */   andi      $v0, $a0, 0xffff
/* D114C 800F9CDC 3083FFFF */  andi       $v1, $a0, 0xffff
.L800F9CE0:
/* D1150 800F9CE0 24020001 */  addiu      $v0, $zero, 1
/* D1154 800F9CE4 1062000A */  beq        $v1, $v0, .L800F9D10
/* D1158 800F9CE8 28620002 */   slti      $v0, $v1, 2
/* D115C 800F9CEC 1440000B */  bnez       $v0, .L800F9D1C
/* D1160 800F9CF0 00008021 */   addu      $s0, $zero, $zero
/* D1164 800F9CF4 24020002 */  addiu      $v0, $zero, 2
/* D1168 800F9CF8 10620007 */  beq        $v1, $v0, .L800F9D18
/* D116C 800F9CFC 24020003 */   addiu     $v0, $zero, 3
/* D1170 800F9D00 10620006 */  beq        $v1, $v0, .L800F9D1C
/* D1174 800F9D04 24100003 */   addiu     $s0, $zero, 3
/* D1178 800F9D08 0803E747 */  j          .L800F9D1C
/* D117C 800F9D0C 00008021 */   addu      $s0, $zero, $zero
.L800F9D10:
/* D1180 800F9D10 0803E747 */  j          .L800F9D1C
/* D1184 800F9D14 24100001 */   addiu     $s0, $zero, 1
.L800F9D18:
/* D1188 800F9D18 24100002 */  addiu      $s0, $zero, 2
.L800F9D1C:
/* D118C 800F9D1C 3C018010 */  lui        $at, %hi(D_800FE30C)
/* D1190 800F9D20 A430E30C */  sh         $s0, %lo(D_800FE30C)($at)
/* D1194 800F9D24 00101040 */  sll        $v0, $s0, 1
/* D1198 800F9D28 00501021 */  addu       $v0, $v0, $s0
/* D119C 800F9D2C 00021100 */  sll        $v0, $v0, 4
/* D11A0 800F9D30 3C01800F */  lui        $at, %hi(D_800F32B3)
/* D11A4 800F9D34 00220821 */  addu       $at, $at, $v0
/* D11A8 800F9D38 902232B3 */  lbu        $v0, %lo(D_800F32B3)($at)
/* D11AC 800F9D3C 3C018010 */  lui        $at, %hi(D_800FE310)
/* D11B0 800F9D40 A422E310 */  sh         $v0, %lo(D_800FE310)($at)
/* D11B4 800F9D44 3203FFFF */  andi       $v1, $s0, 0xffff
/* D11B8 800F9D48 00031040 */  sll        $v0, $v1, 1
/* D11BC 800F9D4C 00431021 */  addu       $v0, $v0, $v1
/* D11C0 800F9D50 00021100 */  sll        $v0, $v0, 4
/* D11C4 800F9D54 3C01800F */  lui        $at, %hi(D_800F32B6)
/* D11C8 800F9D58 00220821 */  addu       $at, $at, $v0
/* D11CC 800F9D5C 942232B6 */  lhu        $v0, %lo(D_800F32B6)($at)
/* D11D0 800F9D60 30420001 */  andi       $v0, $v0, 1
/* D11D4 800F9D64 10400005 */  beqz       $v0, .L800F9D7C
/* D11D8 800F9D68 24020001 */   addiu     $v0, $zero, 1
/* D11DC 800F9D6C 3C018010 */  lui        $at, %hi(D_800FE192)
/* D11E0 800F9D70 A422E192 */  sh         $v0, %lo(D_800FE192)($at)
/* D11E4 800F9D74 0803E762 */  j          .L800F9D88
/* D11E8 800F9D78 3210FFFF */   andi      $s0, $s0, 0xffff
.L800F9D7C:
/* D11EC 800F9D7C 3C018010 */  lui        $at, %hi(D_800FE192)
/* D11F0 800F9D80 A420E192 */  sh         $zero, %lo(D_800FE192)($at)
/* D11F4 800F9D84 3210FFFF */  andi       $s0, $s0, 0xffff
.L800F9D88:
/* D11F8 800F9D88 00101040 */  sll        $v0, $s0, 1
/* D11FC 800F9D8C 00501021 */  addu       $v0, $v0, $s0
/* D1200 800F9D90 00021100 */  sll        $v0, $v0, 4
/* D1204 800F9D94 3C03800F */  lui        $v1, %hi(D_800F32B4)
/* D1208 800F9D98 00621821 */  addu       $v1, $v1, $v0
/* D120C 800F9D9C 906332B4 */  lbu        $v1, %lo(D_800F32B4)($v1)
/* D1210 800F9DA0 3C018010 */  lui        $at, %hi(D_800FE312)
/* D1214 800F9DA4 A423E312 */  sh         $v1, %lo(D_800FE312)($at)
/* D1218 800F9DA8 3063FFFF */  andi       $v1, $v1, 0xffff
/* D121C 800F9DAC 00031080 */  sll        $v0, $v1, 2
/* D1220 800F9DB0 00431021 */  addu       $v0, $v0, $v1
/* D1224 800F9DB4 00021080 */  sll        $v0, $v0, 2
/* D1228 800F9DB8 3C11800C */  lui        $s1, %hi(D_800C59AC)
/* D122C 800F9DBC 02228821 */  addu       $s1, $s1, $v0
/* D1230 800F9DC0 8E3159AC */  lw         $s1, %lo(D_800C59AC)($s1)
/* D1234 800F9DC4 0C002540 */  jal        func_80009500
/* D1238 800F9DC8 3632001C */   ori       $s2, $s1, 0x1c
/* D123C 800F9DCC 24020699 */  addiu      $v0, $zero, 0x699
/* D1240 800F9DD0 AFA20010 */  sw         $v0, 0x10($sp)
/* D1244 800F9DD4 24020689 */  addiu      $v0, $zero, 0x689
/* D1248 800F9DD8 AFA20014 */  sw         $v0, 0x14($sp)
/* D124C 800F9DDC 02602021 */  addu       $a0, $s3, $zero
/* D1250 800F9DE0 02202821 */  addu       $a1, $s1, $zero
/* D1254 800F9DE4 2406009E */  addiu      $a2, $zero, 0x9e
/* D1258 800F9DE8 0C0025E7 */  jal        func_8000979C
/* D125C 800F9DEC 02003821 */   addu      $a3, $s0, $zero
/* D1260 800F9DF0 8E620040 */  lw         $v0, 0x40($s3)
/* D1264 800F9DF4 84440002 */  lh         $a0, 2($v0)
/* D1268 800F9DF8 3C058000 */  lui        $a1, 0x8000
/* D126C 800F9DFC 0C00964C */  jal        func_80025930
/* D1270 800F9E00 00003021 */   addu      $a2, $zero, $zero
/* D1274 800F9E04 8E620040 */  lw         $v0, 0x40($s3)
/* D1278 800F9E08 0C0096B5 */  jal        func_80025AD4
/* D127C 800F9E0C 84440002 */   lh        $a0, 2($v0)
/* D1280 800F9E10 8E620040 */  lw         $v0, 0x40($s3)
/* D1284 800F9E14 0C0096CD */  jal        func_80025B34
/* D1288 800F9E18 84440002 */   lh        $a0, 2($v0)
/* D128C 800F9E1C 8E620040 */  lw         $v0, 0x40($s3)
/* D1290 800F9E20 84420002 */  lh         $v0, 2($v0)
/* D1294 800F9E24 00022040 */  sll        $a0, $v0, 1
/* D1298 800F9E28 00822021 */  addu       $a0, $a0, $v0
/* D129C 800F9E2C 00042180 */  sll        $a0, $a0, 6
/* D12A0 800F9E30 3C02800F */  lui        $v0, %hi(D_800F2B7C)
/* D12A4 800F9E34 8C422B7C */  lw         $v0, %lo(D_800F2B7C)($v0)
/* D12A8 800F9E38 00822021 */  addu       $a0, $a0, $v0
/* D12AC 800F9E3C 2484007C */  addiu      $a0, $a0, 0x7c
/* D12B0 800F9E40 00002821 */  addu       $a1, $zero, $zero
/* D12B4 800F9E44 3C064170 */  lui        $a2, 0x4170
/* D12B8 800F9E48 0C027A90 */  jal        func_8009EA40
/* D12BC 800F9E4C 00A03821 */   addu      $a3, $a1, $zero
/* D12C0 800F9E50 3C028010 */  lui        $v0, %hi(func_800FA1E4_D1654)
/* D12C4 800F9E54 2442A1E4 */  addiu      $v0, $v0, %lo(func_800FA1E4_D1654)
/* D12C8 800F9E58 AE620014 */  sw         $v0, 0x14($s3)
/* D12CC 800F9E5C 8E620050 */  lw         $v0, 0x50($s3)
/* D12D0 800F9E60 AC4000DC */  sw         $zero, 0xdc($v0)
/* D12D4 800F9E64 8E620040 */  lw         $v0, 0x40($s3)
/* D12D8 800F9E68 84440002 */  lh         $a0, 2($v0)
/* D12DC 800F9E6C 24050060 */  addiu      $a1, $zero, 0x60
/* D12E0 800F9E70 0C00963B */  jal        func_800258EC
/* D12E4 800F9E74 24060020 */   addiu     $a2, $zero, 0x20
/* D12E8 800F9E78 8E620040 */  lw         $v0, 0x40($s3)
/* D12EC 800F9E7C 84440002 */  lh         $a0, 2($v0)
/* D12F0 800F9E80 24050180 */  addiu      $a1, $zero, 0x180
/* D12F4 800F9E84 0C00963B */  jal        func_800258EC
/* D12F8 800F9E88 00003021 */   addu      $a2, $zero, $zero
/* D12FC 800F9E8C 24040019 */  addiu      $a0, $zero, 0x19
/* D1300 800F9E90 0C005D4A */  jal        func_80017528
/* D1304 800F9E94 240502BD */   addiu     $a1, $zero, 0x2bd
/* D1308 800F9E98 8E630040 */  lw         $v1, 0x40($s3)
/* D130C 800F9E9C A4620006 */  sh         $v0, 6($v1)
/* D1310 800F9EA0 2404001A */  addiu      $a0, $zero, 0x1a
/* D1314 800F9EA4 0C005D4A */  jal        func_80017528
/* D1318 800F9EA8 240502BD */   addiu     $a1, $zero, 0x2bd
/* D131C 800F9EAC 8E630040 */  lw         $v1, 0x40($s3)
/* D1320 800F9EB0 A4620008 */  sh         $v0, 8($v1)
/* D1324 800F9EB4 2404001B */  addiu      $a0, $zero, 0x1b
/* D1328 800F9EB8 0C005D4A */  jal        func_80017528
/* D132C 800F9EBC 240502BD */   addiu     $a1, $zero, 0x2bd
/* D1330 800F9EC0 8E630040 */  lw         $v1, 0x40($s3)
/* D1334 800F9EC4 A462000C */  sh         $v0, 0xc($v1)
/* D1338 800F9EC8 2404001C */  addiu      $a0, $zero, 0x1c
/* D133C 800F9ECC 0C005D4A */  jal        func_80017528
/* D1340 800F9ED0 240502BD */   addiu     $a1, $zero, 0x2bd
/* D1344 800F9ED4 8E630040 */  lw         $v1, 0x40($s3)
/* D1348 800F9ED8 A462000A */  sh         $v0, 0xa($v1)
/* D134C 800F9EDC 2404001E */  addiu      $a0, $zero, 0x1e
/* D1350 800F9EE0 0C005D4A */  jal        func_80017528
/* D1354 800F9EE4 240502BD */   addiu     $a1, $zero, 0x2bd
/* D1358 800F9EE8 8E630040 */  lw         $v1, 0x40($s3)
/* D135C 800F9EEC A462000E */  sh         $v0, 0xe($v1)
/* D1360 800F9EF0 2404001D */  addiu      $a0, $zero, 0x1d
/* D1364 800F9EF4 0C005D4A */  jal        func_80017528
/* D1368 800F9EF8 240502BD */   addiu     $a1, $zero, 0x2bd
/* D136C 800F9EFC 8E630040 */  lw         $v1, 0x40($s3)
/* D1370 800F9F00 A4620010 */  sh         $v0, 0x10($v1)
/* D1374 800F9F04 AFA00010 */  sw         $zero, 0x10($sp)
/* D1378 800F9F08 02602021 */  addu       $a0, $s3, $zero
/* D137C 800F9F0C 00002821 */  addu       $a1, $zero, $zero
/* D1380 800F9F10 02203021 */  addu       $a2, $s1, $zero
/* D1384 800F9F14 0C0061F4 */  jal        func_800187D0
/* D1388 800F9F18 24070001 */   addiu     $a3, $zero, 1
/* D138C 800F9F1C AFA00010 */  sw         $zero, 0x10($sp)
/* D1390 800F9F20 02602021 */  addu       $a0, $s3, $zero
/* D1394 800F9F24 24050001 */  addiu      $a1, $zero, 1
/* D1398 800F9F28 36260001 */  ori        $a2, $s1, 1
/* D139C 800F9F2C 0C0061F4 */  jal        func_800187D0
/* D13A0 800F9F30 24070001 */   addiu     $a3, $zero, 1
/* D13A4 800F9F34 AFA00010 */  sw         $zero, 0x10($sp)
/* D13A8 800F9F38 02602021 */  addu       $a0, $s3, $zero
/* D13AC 800F9F3C 24050002 */  addiu      $a1, $zero, 2
/* D13B0 800F9F40 36260003 */  ori        $a2, $s1, 3
/* D13B4 800F9F44 0C0061F4 */  jal        func_800187D0
/* D13B8 800F9F48 24070001 */   addiu     $a3, $zero, 1
/* D13BC 800F9F4C 24020013 */  addiu      $v0, $zero, 0x13
/* D13C0 800F9F50 AFA20010 */  sw         $v0, 0x10($sp)
/* D13C4 800F9F54 02602021 */  addu       $a0, $s3, $zero
/* D13C8 800F9F58 24050006 */  addiu      $a1, $zero, 6
/* D13CC 800F9F5C 36260005 */  ori        $a2, $s1, 5
/* D13D0 800F9F60 0C0061F4 */  jal        func_800187D0
/* D13D4 800F9F64 24070001 */   addiu     $a3, $zero, 1
/* D13D8 800F9F68 2402001B */  addiu      $v0, $zero, 0x1b
/* D13DC 800F9F6C AFA20010 */  sw         $v0, 0x10($sp)
/* D13E0 800F9F70 02602021 */  addu       $a0, $s3, $zero
/* D13E4 800F9F74 24050008 */  addiu      $a1, $zero, 8
/* D13E8 800F9F78 36260009 */  ori        $a2, $s1, 9
/* D13EC 800F9F7C 0C0061F4 */  jal        func_800187D0
/* D13F0 800F9F80 24070001 */   addiu     $a3, $zero, 1
/* D13F4 800F9F84 AFA00010 */  sw         $zero, 0x10($sp)
/* D13F8 800F9F88 02602021 */  addu       $a0, $s3, $zero
/* D13FC 800F9F8C 24050011 */  addiu      $a1, $zero, 0x11
/* D1400 800F9F90 36260018 */  ori        $a2, $s1, 0x18
/* D1404 800F9F94 0C0061F4 */  jal        func_800187D0
/* D1408 800F9F98 00003821 */   addu      $a3, $zero, $zero
/* D140C 800F9F9C AFA00010 */  sw         $zero, 0x10($sp)
/* D1410 800F9FA0 02602021 */  addu       $a0, $s3, $zero
/* D1414 800F9FA4 24050012 */  addiu      $a1, $zero, 0x12
/* D1418 800F9FA8 02403021 */  addu       $a2, $s2, $zero
/* D141C 800F9FAC 0C0061F4 */  jal        func_800187D0
/* D1420 800F9FB0 00003821 */   addu      $a3, $zero, $zero
/* D1424 800F9FB4 AFA00010 */  sw         $zero, 0x10($sp)
/* D1428 800F9FB8 02602021 */  addu       $a0, $s3, $zero
/* D142C 800F9FBC 24050015 */  addiu      $a1, $zero, 0x15
/* D1430 800F9FC0 36260062 */  ori        $a2, $s1, 0x62
/* D1434 800F9FC4 0C0061D3 */  jal        func_8001874C
/* D1438 800F9FC8 00003821 */   addu      $a3, $zero, $zero
/* D143C 800F9FCC AFA00010 */  sw         $zero, 0x10($sp)
/* D1440 800F9FD0 02602021 */  addu       $a0, $s3, $zero
/* D1444 800F9FD4 24050014 */  addiu      $a1, $zero, 0x14
/* D1448 800F9FD8 3626005F */  ori        $a2, $s1, 0x5f
/* D144C 800F9FDC 0C0061D3 */  jal        func_8001874C
/* D1450 800F9FE0 00003821 */   addu      $a3, $zero, $zero
/* D1454 800F9FE4 AFA00010 */  sw         $zero, 0x10($sp)
/* D1458 800F9FE8 02602021 */  addu       $a0, $s3, $zero
/* D145C 800F9FEC 24050004 */  addiu      $a1, $zero, 4
/* D1460 800F9FF0 36260061 */  ori        $a2, $s1, 0x61
/* D1464 800F9FF4 0C0061D3 */  jal        func_8001874C
/* D1468 800F9FF8 24070001 */   addiu     $a3, $zero, 1
/* D146C 800F9FFC AFA00010 */  sw         $zero, 0x10($sp)
/* D1470 800FA000 02602021 */  addu       $a0, $s3, $zero
/* D1474 800FA004 24050020 */  addiu      $a1, $zero, 0x20
/* D1478 800FA008 36260067 */  ori        $a2, $s1, 0x67
/* D147C 800FA00C 0C0061D3 */  jal        func_8001874C
/* D1480 800FA010 00003821 */   addu      $a3, $zero, $zero
/* D1484 800FA014 AFA00010 */  sw         $zero, 0x10($sp)
/* D1488 800FA018 02602021 */  addu       $a0, $s3, $zero
/* D148C 800FA01C 24050021 */  addiu      $a1, $zero, 0x21
/* D1490 800FA020 36260068 */  ori        $a2, $s1, 0x68
/* D1494 800FA024 0C0061D3 */  jal        func_8001874C
/* D1498 800FA028 24070002 */   addiu     $a3, $zero, 2
/* D149C 800FA02C AFA00010 */  sw         $zero, 0x10($sp)
/* D14A0 800FA030 02602021 */  addu       $a0, $s3, $zero
/* D14A4 800FA034 24050022 */  addiu      $a1, $zero, 0x22
/* D14A8 800FA038 36260069 */  ori        $a2, $s1, 0x69
/* D14AC 800FA03C 0C0061D3 */  jal        func_8001874C
/* D14B0 800FA040 24070002 */   addiu     $a3, $zero, 2
/* D14B4 800FA044 24020004 */  addiu      $v0, $zero, 4
/* D14B8 800FA048 AFA20010 */  sw         $v0, 0x10($sp)
/* D14BC 800FA04C 02602021 */  addu       $a0, $s3, $zero
/* D14C0 800FA050 24050023 */  addiu      $a1, $zero, 0x23
/* D14C4 800FA054 3626002F */  ori        $a2, $s1, 0x2f
/* D14C8 800FA058 0C0061D3 */  jal        func_8001874C
/* D14CC 800FA05C 24070001 */   addiu     $a3, $zero, 1
/* D14D0 800FA060 0C03DEBF */  jal        func_800F7AFC_CEF6C
/* D14D4 800FA064 24040002 */   addiu     $a0, $zero, 2
/* D14D8 800FA068 3042FFFF */  andi       $v0, $v0, 0xffff
/* D14DC 800FA06C 00021040 */  sll        $v0, $v0, 1
/* D14E0 800FA070 27B00018 */  addiu      $s0, $sp, 0x18
/* D14E4 800FA074 00501021 */  addu       $v0, $v0, $s0
/* D14E8 800FA078 84460000 */  lh         $a2, ($v0)
/* D14EC 800FA07C 94420008 */  lhu        $v0, 8($v0)
/* D14F0 800FA080 AFA20010 */  sw         $v0, 0x10($sp)
/* D14F4 800FA084 02602021 */  addu       $a0, $s3, $zero
/* D14F8 800FA088 24050024 */  addiu      $a1, $zero, 0x24
/* D14FC 800FA08C 02263025 */  or         $a2, $s1, $a2
/* D1500 800FA090 0C0061D3 */  jal        func_8001874C
/* D1504 800FA094 24070001 */   addiu     $a3, $zero, 1
/* D1508 800FA098 AFA00010 */  sw         $zero, 0x10($sp)
/* D150C 800FA09C 02602021 */  addu       $a0, $s3, $zero
/* D1510 800FA0A0 24050025 */  addiu      $a1, $zero, 0x25
/* D1514 800FA0A4 02403021 */  addu       $a2, $s2, $zero
/* D1518 800FA0A8 0C0061D3 */  jal        func_8001874C
/* D151C 800FA0AC 24070002 */   addiu     $a3, $zero, 2
/* D1520 800FA0B0 0C03DEBF */  jal        func_800F7AFC_CEF6C
/* D1524 800FA0B4 24040002 */   addiu     $a0, $zero, 2
/* D1528 800FA0B8 3042FFFF */  andi       $v0, $v0, 0xffff
/* D152C 800FA0BC 00021040 */  sll        $v0, $v0, 1
/* D1530 800FA0C0 00501021 */  addu       $v0, $v0, $s0
/* D1534 800FA0C4 84460010 */  lh         $a2, 0x10($v0)
/* D1538 800FA0C8 94420018 */  lhu        $v0, 0x18($v0)
/* D153C 800FA0CC AFA20010 */  sw         $v0, 0x10($sp)
/* D1540 800FA0D0 02602021 */  addu       $a0, $s3, $zero
/* D1544 800FA0D4 24050026 */  addiu      $a1, $zero, 0x26
/* D1548 800FA0D8 02263025 */  or         $a2, $s1, $a2
/* D154C 800FA0DC 0C0061D3 */  jal        func_8001874C
/* D1550 800FA0E0 24070001 */   addiu     $a3, $zero, 1
/* D1554 800FA0E4 44800000 */  mtc1       $zero, $f0
/* D1558 800FA0E8 00000000 */  nop
/* D155C 800FA0EC E660001C */  swc1       $f0, 0x1c($s3)
/* D1560 800FA0F0 E6600018 */  swc1       $f0, 0x18($s3)
/* D1564 800FA0F4 3C014310 */  lui        $at, 0x4310
/* D1568 800FA0F8 44810000 */  mtc1       $at, $f0
/* D156C 800FA0FC 00000000 */  nop
/* D1570 800FA100 E6600020 */  swc1       $f0, 0x20($s3)
/* D1574 800FA104 0C03EB46 */  jal        func_800FAD18_D2188
/* D1578 800FA108 9264004C */   lbu       $a0, 0x4c($s3)
/* D157C 800FA10C 9263004C */  lbu        $v1, 0x4c($s3)
/* D1580 800FA110 000310C0 */  sll        $v0, $v1, 3
/* D1584 800FA114 00431023 */  subu       $v0, $v0, $v1
/* D1588 800FA118 00021080 */  sll        $v0, $v0, 2
/* D158C 800FA11C 3C038010 */  lui        $v1, %hi(D_800FE2C8)
/* D1590 800FA120 2463E2C8 */  addiu      $v1, $v1, %lo(D_800FE2C8)
/* D1594 800FA124 00432021 */  addu       $a0, $v0, $v1
/* D1598 800FA128 3C038010 */  lui        $v1, %hi(D_800FE30C)
/* D159C 800FA12C 8463E30C */  lh         $v1, %lo(D_800FE30C)($v1)
/* D15A0 800FA130 00031040 */  sll        $v0, $v1, 1
/* D15A4 800FA134 00431021 */  addu       $v0, $v0, $v1
/* D15A8 800FA138 00021100 */  sll        $v0, $v0, 4
/* D15AC 800FA13C 3C03800F */  lui        $v1, %hi(D_800F32B1)
/* D15B0 800FA140 00621821 */  addu       $v1, $v1, $v0
/* D15B4 800FA144 906332B1 */  lbu        $v1, %lo(D_800F32B1)($v1)
/* D15B8 800FA148 24020001 */  addiu      $v0, $zero, 1
/* D15BC 800FA14C 1062000F */  beq        $v1, $v0, .L800FA18C
/* D15C0 800FA150 28620002 */   slti      $v0, $v1, 2
/* D15C4 800FA154 50400005 */  beql       $v0, $zero, .L800FA16C
/* D15C8 800FA158 24020002 */   addiu     $v0, $zero, 2
/* D15CC 800FA15C 1060000C */  beqz       $v1, .L800FA190
/* D15D0 800FA160 24020005 */   addiu     $v0, $zero, 5
/* D15D4 800FA164 0803E864 */  j          .L800FA190
/* D15D8 800FA168 24020003 */   addiu     $v0, $zero, 3
.L800FA16C:
/* D15DC 800FA16C 10620005 */  beq        $v1, $v0, .L800FA184
/* D15E0 800FA170 24020003 */   addiu     $v0, $zero, 3
/* D15E4 800FA174 50620007 */  beql       $v1, $v0, .L800FA194
/* D15E8 800FA178 A4800018 */   sh        $zero, 0x18($a0)
/* D15EC 800FA17C 0803E864 */  j          .L800FA190
/* D15F0 800FA180 24020003 */   addiu     $v0, $zero, 3
.L800FA184:
/* D15F4 800FA184 0803E864 */  j          .L800FA190
/* D15F8 800FA188 24020001 */   addiu     $v0, $zero, 1
.L800FA18C:
/* D15FC 800FA18C 24020003 */  addiu      $v0, $zero, 3
.L800FA190:
/* D1600 800FA190 A4820018 */  sh         $v0, 0x18($a0)
.L800FA194:
/* D1604 800FA194 02602021 */  addu       $a0, $s3, $zero
/* D1608 800FA198 00002821 */  addu       $a1, $zero, $zero
/* D160C 800FA19C 0C002431 */  jal        func_800090C4
/* D1610 800FA1A0 24060002 */   addiu     $a2, $zero, 2
/* D1614 800FA1A4 3C018010 */  lui        $at, %hi(D_800FD880)
/* D1618 800FA1A8 A420D880 */  sh         $zero, %lo(D_800FD880)($at)
/* D161C 800FA1AC 3C018010 */  lui        $at, %hi(D_800FD882)
/* D1620 800FA1B0 A420D882 */  sh         $zero, %lo(D_800FD882)($at)
/* D1624 800FA1B4 3C018010 */  lui        $at, %hi(D_800FD884)
/* D1628 800FA1B8 A420D884 */  sh         $zero, %lo(D_800FD884)($at)
/* D162C 800FA1BC 02602021 */  addu       $a0, $s3, $zero
/* D1630 800FA1C0 0C00612F */  jal        func_800184BC
/* D1634 800FA1C4 00002821 */   addu      $a1, $zero, $zero
/* D1638 800FA1C8 8FBF0048 */  lw         $ra, 0x48($sp)
/* D163C 800FA1CC 8FB30044 */  lw         $s3, 0x44($sp)
/* D1640 800FA1D0 8FB20040 */  lw         $s2, 0x40($sp)
/* D1644 800FA1D4 8FB1003C */  lw         $s1, 0x3c($sp)
/* D1648 800FA1D8 8FB00038 */  lw         $s0, 0x38($sp)
/* D164C 800FA1DC 03E00008 */  jr         $ra
/* D1650 800FA1E0 27BD0050 */   addiu     $sp, $sp, 0x50
