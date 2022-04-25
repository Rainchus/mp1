	.set noat
	.set noreorder

glabel func_8001A600
/* 1B200 8001A600 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1B204 8001A604 AFBF0020 */  sw         $ra, 0x20($sp)
/* 1B208 8001A608 AFB1001C */  sw         $s1, 0x1c($sp)
/* 1B20C 8001A60C AFB00018 */  sw         $s0, 0x18($sp)
/* 1B210 8001A610 00E08021 */  addu       $s0, $a3, $zero
/* 1B214 8001A614 8FB10038 */  lw         $s1, 0x38($sp)
/* 1B218 8001A618 30A5FFFF */  andi       $a1, $a1, 0xffff
/* 1B21C 8001A61C 0C006AE1 */  jal        func_8001AB84
/* 1B220 8001A620 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 1B224 8001A624 0C006AEB */  jal        func_8001ABAC
/* 1B228 8001A628 02002021 */   addu      $a0, $s0, $zero
/* 1B22C 8001A62C 0C006AFA */  jal        func_8001ABE8
/* 1B230 8001A630 02202021 */   addu      $a0, $s1, $zero
/* 1B234 8001A634 0C006AFD */  jal        func_8001ABF4
/* 1B238 8001A638 00002021 */   addu      $a0, $zero, $zero
/* 1B23C 8001A63C 3C03800D */  lui        $v1, %hi(D_800D5F10)
/* 1B240 8001A640 24635F10 */  addiu      $v1, $v1, %lo(D_800D5F10)
/* 1B244 8001A644 3C10800D */  lui        $s0, %hi(D_800D5FB0)
/* 1B248 8001A648 26105FB0 */  addiu      $s0, $s0, %lo(D_800D5FB0)
/* 1B24C 8001A64C AC700000 */  sw         $s0, ($v1)
/* 1B250 8001A650 24020001 */  addiu      $v0, $zero, 1
/* 1B254 8001A654 AC62FFC0 */  sw         $v0, -0x40($v1)
/* 1B258 8001A658 24050002 */  addiu      $a1, $zero, 2
/* 1B25C 8001A65C AC65FFC4 */  sw         $a1, -0x3c($v1)
/* 1B260 8001A660 3C04800B */  lui        $a0, %hi(D_800B1760)
/* 1B264 8001A664 24841760 */  addiu      $a0, $a0, %lo(D_800B1760)
/* 1B268 8001A668 AC64FFC8 */  sw         $a0, -0x38($v1)
/* 1B26C 8001A66C 3C02800B */  lui        $v0, %hi(D_800B1830)
/* 1B270 8001A670 24421830 */  addiu      $v0, $v0, %lo(D_800B1830)
/* 1B274 8001A674 00441023 */  subu       $v0, $v0, $a0
/* 1B278 8001A678 AC62FFCC */  sw         $v0, -0x34($v1)
/* 1B27C 8001A67C 24021000 */  addiu      $v0, $zero, 0x1000
/* 1B280 8001A680 AC62FFD4 */  sw         $v0, -0x2c($v1)
/* 1B284 8001A684 24020800 */  addiu      $v0, $zero, 0x800
/* 1B288 8001A688 AC62FFDC */  sw         $v0, -0x24($v1)
/* 1B28C 8001A68C 24020400 */  addiu      $v0, $zero, 0x400
/* 1B290 8001A690 AC62FFE4 */  sw         $v0, -0x1c($v1)
/* 1B294 8001A694 3C02800F */  lui        $v0, %hi(D_800ED398)
/* 1B298 8001A698 2442D398 */  addiu      $v0, $v0, %lo(D_800ED398)
/* 1B29C 8001A69C AC62FFF0 */  sw         $v0, -0x10($v1)
/* 1B2A0 8001A6A0 AC65FFF4 */  sw         $a1, -0xc($v1)
/* 1B2A4 8001A6A4 24020C00 */  addiu      $v0, $zero, 0xc00
/* 1B2A8 8001A6A8 AC62FFFC */  sw         $v0, -4($v1)
/* 1B2AC 8001A6AC 3C01800F */  lui        $at, %hi(D_800ED3C2)
/* 1B2B0 8001A6B0 A420D3C2 */  sh         $zero, %lo(D_800ED3C2)($at)
/* 1B2B4 8001A6B4 3C01800F */  lui        $at, %hi(D_800ECB2E)
/* 1B2B8 8001A6B8 A420CB2E */  sh         $zero, %lo(D_800ECB2E)($at)
/* 1B2BC 8001A6BC 3C01800F */  lui        $at, %hi(D_800ED0C4)
/* 1B2C0 8001A6C0 AC20D0C4 */  sw         $zero, %lo(D_800ED0C4)($at)
/* 1B2C4 8001A6C4 3C01800F */  lui        $at, %hi(D_800F3838)
/* 1B2C8 8001A6C8 AC203838 */  sw         $zero, %lo(D_800F3838)($at)
/* 1B2CC 8001A6CC 3C01800F */  lui        $at, %hi(D_800ECB1C)
/* 1B2D0 8001A6D0 AC20CB1C */  sw         $zero, %lo(D_800ECB1C)($at)
/* 1B2D4 8001A6D4 3C04800D */  lui        $a0, %hi(D_800D5F18)
/* 1B2D8 8001A6D8 24845F18 */  addiu      $a0, $a0, %lo(D_800D5F18)
/* 1B2DC 8001A6DC 3C05800D */  lui        $a1, %hi(D_800D5F30)
/* 1B2E0 8001A6E0 24A55F30 */  addiu      $a1, $a1, %lo(D_800D5F30)
/* 1B2E4 8001A6E4 0C022188 */  jal        func_80088620
/* 1B2E8 8001A6E8 24060020 */   addiu     $a2, $zero, 0x20
/* 1B2EC 8001A6EC 02002021 */  addu       $a0, $s0, $zero
/* 1B2F0 8001A6F0 3C05800D */  lui        $a1, %hi(D_800D5FC8)
/* 1B2F4 8001A6F4 24A55FC8 */  addiu      $a1, $a1, %lo(D_800D5FC8)
/* 1B2F8 8001A6F8 0C022188 */  jal        func_80088620
/* 1B2FC 8001A6FC 24060008 */   addiu     $a2, $zero, 8
/* 1B300 8001A700 3C02800D */  lui        $v0, %hi(D_800D26D0)
/* 1B304 8001A704 244226D0 */  addiu      $v0, $v0, %lo(D_800D26D0)
/* 1B308 8001A708 AFA20010 */  sw         $v0, 0x10($sp)
/* 1B30C 8001A70C 24020064 */  addiu      $v0, $zero, 0x64
/* 1B310 8001A710 AFA20014 */  sw         $v0, 0x14($sp)
/* 1B314 8001A714 3C04800D */  lui        $a0, %hi(D_800D1D20)
/* 1B318 8001A718 24841D20 */  addiu      $a0, $a0, %lo(D_800D1D20)
/* 1B31C 8001A71C 24050010 */  addiu      $a1, $zero, 0x10
/* 1B320 8001A720 3C068002 */  lui        $a2, %hi(func_8001A7DC)
/* 1B324 8001A724 24C6A7DC */  addiu      $a2, $a2, %lo(func_8001A7DC)
/* 1B328 8001A728 0C022194 */  jal        func_80088650
/* 1B32C 8001A72C 00003821 */   addu      $a3, $zero, $zero
/* 1B330 8001A730 3C04800D */  lui        $a0, %hi(D_800D1D20)
/* 1B334 8001A734 0C022344 */  jal        func_80088D10
/* 1B338 8001A738 24841D20 */   addiu     $a0, $a0, %lo(D_800D1D20)
/* 1B33C 8001A73C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1B340 8001A740 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1B344 8001A744 8FB00018 */  lw         $s0, 0x18($sp)
/* 1B348 8001A748 03E00008 */  jr         $ra
/* 1B34C 8001A74C 27BD0028 */   addiu     $sp, $sp, 0x28
