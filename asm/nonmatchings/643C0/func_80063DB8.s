	.set noat
	.set noreorder

glabel func_80063DB8
/* 649B8 80063DB8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 649BC 80063DBC AFBF0020 */  sw         $ra, 0x20($sp)
/* 649C0 80063DC0 AFB1001C */  sw         $s1, 0x1c($sp)
/* 649C4 80063DC4 AFB00018 */  sw         $s0, 0x18($sp)
/* 649C8 80063DC8 AFA00010 */  sw         $zero, 0x10($sp)
.L80063DCC:
/* 649CC 80063DCC 3C04800F */  lui        $a0, %hi(D_800ED3C8)
/* 649D0 80063DD0 2484D3C8 */  addiu      $a0, $a0, %lo(D_800ED3C8)
/* 649D4 80063DD4 27A50010 */  addiu      $a1, $sp, 0x10
/* 649D8 80063DD8 0C022278 */  jal        func_800889E0
/* 649DC 80063DDC 24060001 */   addiu     $a2, $zero, 1
/* 649E0 80063DE0 0C02217C */  jal        func_800885F0
/* 649E4 80063DE4 00000000 */   nop
/* 649E8 80063DE8 0C022124 */  jal        func_80088490
/* 649EC 80063DEC 24040001 */   addiu     $a0, $zero, 1
/* 649F0 80063DF0 00408021 */  addu       $s0, $v0, $zero
/* 649F4 80063DF4 3C02800E */  lui        $v0, %hi(D_800E35A0)
/* 649F8 80063DF8 8C4235A0 */  lw         $v0, %lo(D_800E35A0)($v0)
/* 649FC 80063DFC 1040000F */  beqz       $v0, .L80063E3C
/* 64A00 80063E00 24020001 */   addiu     $v0, $zero, 1
/* 64A04 80063E04 3C01800E */  lui        $at, %hi(D_800E35D0)
/* 64A08 80063E08 AC2235D0 */  sw         $v0, %lo(D_800E35D0)($at)
/* 64A0C 80063E0C 0C022124 */  jal        func_80088490
/* 64A10 80063E10 02002021 */   addu      $a0, $s0, $zero
/* 64A14 80063E14 3C04800E */  lui        $a0, %hi(D_800E35D8)
/* 64A18 80063E18 248435D8 */  addiu      $a0, $a0, %lo(D_800E35D8)
/* 64A1C 80063E1C 00002821 */  addu       $a1, $zero, $zero
/* 64A20 80063E20 0C022278 */  jal        func_800889E0
/* 64A24 80063E24 24060001 */   addiu     $a2, $zero, 1
/* 64A28 80063E28 0C022124 */  jal        func_80088490
/* 64A2C 80063E2C 24040001 */   addiu     $a0, $zero, 1
/* 64A30 80063E30 00408021 */  addu       $s0, $v0, $zero
/* 64A34 80063E34 3C01800E */  lui        $at, %hi(D_800E35D0)
/* 64A38 80063E38 AC2035D0 */  sw         $zero, %lo(D_800E35D0)($at)
.L80063E3C:
/* 64A3C 80063E3C 8FA40010 */  lw         $a0, 0x10($sp)
/* 64A40 80063E40 3C01800E */  lui        $at, %hi(D_800E35A4)
/* 64A44 80063E44 0C022C9C */  jal        func_8008B270
/* 64A48 80063E48 AC2435A4 */   sw        $a0, %lo(D_800E35A4)($at)
/* 64A4C 80063E4C 0C022D1F */  jal        func_8008B47C
/* 64A50 80063E50 8FA40010 */   lw        $a0, 0x10($sp)
/* 64A54 80063E54 0C022124 */  jal        func_80088490
/* 64A58 80063E58 02002021 */   addu      $a0, $s0, $zero
/* 64A5C 80063E5C 00002021 */  addu       $a0, $zero, $zero
/* 64A60 80063E60 00002821 */  addu       $a1, $zero, $zero
/* 64A64 80063E64 0C0184A3 */  jal        func_8006128C
/* 64A68 80063E68 240600FF */   addiu     $a2, $zero, 0xff
/* 64A6C 80063E6C 00408021 */  addu       $s0, $v0, $zero
/* 64A70 80063E70 00002021 */  addu       $a0, $zero, $zero
/* 64A74 80063E74 240500FF */  addiu      $a1, $zero, 0xff
/* 64A78 80063E78 0C0184A3 */  jal        func_8006128C
/* 64A7C 80063E7C 00003021 */   addu      $a2, $zero, $zero
/* 64A80 80063E80 00408821 */  addu       $s1, $v0, $zero
/* 64A84 80063E84 3C04800E */  lui        $a0, %hi(D_800E2420)
/* 64A88 80063E88 24842420 */  addiu      $a0, $a0, %lo(D_800E2420)
/* 64A8C 80063E8C 3C05800E */  lui        $a1, %hi(D_800E35A8)
/* 64A90 80063E90 24A535A8 */  addiu      $a1, $a1, %lo(D_800E35A8)
/* 64A94 80063E94 0C022278 */  jal        func_800889E0
/* 64A98 80063E98 24060001 */   addiu     $a2, $zero, 1
/* 64A9C 80063E9C 00108400 */  sll        $s0, $s0, 0x10
/* 64AA0 80063EA0 0C0184C1 */  jal        func_80061304
/* 64AA4 80063EA4 00102403 */   sra       $a0, $s0, 0x10
/* 64AA8 80063EA8 0C022124 */  jal        func_80088490
/* 64AAC 80063EAC 24040001 */   addiu     $a0, $zero, 1
/* 64AB0 80063EB0 3C01800E */  lui        $at, %hi(D_800E35A4)
/* 64AB4 80063EB4 AC2035A4 */  sw         $zero, %lo(D_800E35A4)($at)
/* 64AB8 80063EB8 3C01800E */  lui        $at, %hi(D_800E35A8)
/* 64ABC 80063EBC AC2035A8 */  sw         $zero, %lo(D_800E35A8)($at)
/* 64AC0 80063EC0 0C022124 */  jal        func_80088490
/* 64AC4 80063EC4 00402021 */   addu      $a0, $v0, $zero
/* 64AC8 80063EC8 3C04800E */  lui        $a0, %hi(D_800E2458)
/* 64ACC 80063ECC 24842458 */  addiu      $a0, $a0, %lo(D_800E2458)
/* 64AD0 80063ED0 00002821 */  addu       $a1, $zero, $zero
/* 64AD4 80063ED4 0C022278 */  jal        func_800889E0
/* 64AD8 80063ED8 24060001 */   addiu     $a2, $zero, 1
/* 64ADC 80063EDC 00118C00 */  sll        $s1, $s1, 0x10
/* 64AE0 80063EE0 0C0184C1 */  jal        func_80061304
/* 64AE4 80063EE4 00112403 */   sra       $a0, $s1, 0x10
/* 64AE8 80063EE8 8FA20010 */  lw         $v0, 0x10($sp)
/* 64AEC 80063EEC 8C440040 */  lw         $a0, 0x40($v0)
/* 64AF0 80063EF0 8C450044 */  lw         $a1, 0x44($v0)
/* 64AF4 80063EF4 0C0222C4 */  jal        func_80088B10
/* 64AF8 80063EF8 24060001 */   addiu     $a2, $zero, 1
/* 64AFC 80063EFC 8FA20010 */  lw         $v0, 0x10($sp)
/* 64B00 80063F00 8C420044 */  lw         $v0, 0x44($v0)
/* 64B04 80063F04 30420001 */  andi       $v0, $v0, 1
/* 64B08 80063F08 1040FFB0 */  beqz       $v0, .L80063DCC
/* 64B0C 80063F0C 00000000 */   nop
/* 64B10 80063F10 0C018509 */  jal        func_80061424
/* 64B14 80063F14 00000000 */   nop
/* 64B18 80063F18 08018F73 */  j          .L80063DCC
/* 64B1C 80063F1C 00000000 */   nop
/* 64B20 80063F20 8FBF0020 */  lw         $ra, 0x20($sp)
/* 64B24 80063F24 8FB1001C */  lw         $s1, 0x1c($sp)
/* 64B28 80063F28 8FB00018 */  lw         $s0, 0x18($sp)
/* 64B2C 80063F2C 03E00008 */  jr         $ra
/* 64B30 80063F30 27BD0028 */   addiu     $sp, $sp, 0x28
/* 64B34 80063F34 00000000 */  nop
/* 64B38 80063F38 00000000 */  nop
/* 64B3C 80063F3C 00000000 */  nop
