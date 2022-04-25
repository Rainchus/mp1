	.set noat
	.set noreorder

glabel func_8003F1C0
/* 3FDC0 8003F1C0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3FDC4 8003F1C4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 3FDC8 8003F1C8 AFB20020 */  sw         $s2, 0x20($sp)
/* 3FDCC 8003F1CC AFB1001C */  sw         $s1, 0x1c($sp)
/* 3FDD0 8003F1D0 AFB00018 */  sw         $s0, 0x18($sp)
/* 3FDD4 8003F1D4 00808821 */  addu       $s1, $a0, $zero
/* 3FDD8 8003F1D8 00A08021 */  addu       $s0, $a1, $zero
/* 3FDDC 8003F1DC 3C04800F */  lui        $a0, %hi(D_800F5038)
/* 3FDE0 8003F1E0 24845038 */  addiu      $a0, $a0, %lo(D_800F5038)
/* 3FDE4 8003F1E4 3C05800D */  lui        $a1, %hi(D_800CAB88)
/* 3FDE8 8003F1E8 24A5AB88 */  addiu      $a1, $a1, %lo(D_800CAB88)
/* 3FDEC 8003F1EC 3C06800F */  lui        $a2, %hi(D_800F3298)
/* 3FDF0 8003F1F0 84C63298 */  lh         $a2, %lo(D_800F3298)($a2)
/* 3FDF4 8003F1F4 0C023124 */  jal        func_8008C490
/* 3FDF8 8003F1F8 001188C0 */   sll       $s1, $s1, 3
/* 3FDFC 8003F1FC 3231FFF8 */  andi       $s1, $s1, 0xfff8
/* 3FE00 8003F200 00108400 */  sll        $s0, $s0, 0x10
/* 3FE04 8003F204 00108403 */  sra        $s0, $s0, 0x10
/* 3FE08 8003F208 001028C0 */  sll        $a1, $s0, 3
/* 3FE0C 8003F20C 24120009 */  addiu      $s2, $zero, 9
/* 3FE10 8003F210 AFB20010 */  sw         $s2, 0x10($sp)
/* 3FE14 8003F214 02202021 */  addu       $a0, $s1, $zero
/* 3FE18 8003F218 30A5FFFF */  andi       $a1, $a1, 0xffff
/* 3FE1C 8003F21C 3C06800F */  lui        $a2, %hi(D_800F5038)
/* 3FE20 8003F220 24C65038 */  addiu      $a2, $a2, %lo(D_800F5038)
/* 3FE24 8003F224 0C00FB2C */  jal        func_8003ECB0
/* 3FE28 8003F228 2407000F */   addiu     $a3, $zero, 0xf
/* 3FE2C 8003F22C 3C04800F */  lui        $a0, %hi(D_800F5038)
/* 3FE30 8003F230 24845038 */  addiu      $a0, $a0, %lo(D_800F5038)
/* 3FE34 8003F234 3C05800D */  lui        $a1, %hi(D_800CAB90)
/* 3FE38 8003F238 24A5AB90 */  addiu      $a1, $a1, %lo(D_800CAB90)
/* 3FE3C 8003F23C 3C06800F */  lui        $a2, %hi(D_800F3180)
/* 3FE40 8003F240 0C023124 */  jal        func_8008C490
/* 3FE44 8003F244 84C63180 */   lh        $a2, %lo(D_800F3180)($a2)
/* 3FE48 8003F248 26050001 */  addiu      $a1, $s0, 1
/* 3FE4C 8003F24C 000528C0 */  sll        $a1, $a1, 3
/* 3FE50 8003F250 AFB20010 */  sw         $s2, 0x10($sp)
/* 3FE54 8003F254 02202021 */  addu       $a0, $s1, $zero
/* 3FE58 8003F258 30A5FFFF */  andi       $a1, $a1, 0xffff
/* 3FE5C 8003F25C 3C06800F */  lui        $a2, %hi(D_800F5038)
/* 3FE60 8003F260 24C65038 */  addiu      $a2, $a2, %lo(D_800F5038)
/* 3FE64 8003F264 0C00FB2C */  jal        func_8003ECB0
/* 3FE68 8003F268 2407000F */   addiu     $a3, $zero, 0xf
/* 3FE6C 8003F26C 3C04800F */  lui        $a0, %hi(D_800F5038)
/* 3FE70 8003F270 24845038 */  addiu      $a0, $a0, %lo(D_800F5038)
/* 3FE74 8003F274 3C05800D */  lui        $a1, %hi(D_800CAB98)
/* 3FE78 8003F278 24A5AB98 */  addiu      $a1, $a1, %lo(D_800CAB98)
/* 3FE7C 8003F27C 3C06800F */  lui        $a2, %hi(D_800ECC20)
/* 3FE80 8003F280 0C023124 */  jal        func_8008C490
/* 3FE84 8003F284 84C6CC20 */   lh        $a2, %lo(D_800ECC20)($a2)
/* 3FE88 8003F288 26050002 */  addiu      $a1, $s0, 2
/* 3FE8C 8003F28C 000528C0 */  sll        $a1, $a1, 3
/* 3FE90 8003F290 AFB20010 */  sw         $s2, 0x10($sp)
/* 3FE94 8003F294 02202021 */  addu       $a0, $s1, $zero
/* 3FE98 8003F298 30A5FFFF */  andi       $a1, $a1, 0xffff
/* 3FE9C 8003F29C 3C06800F */  lui        $a2, %hi(D_800F5038)
/* 3FEA0 8003F2A0 24C65038 */  addiu      $a2, $a2, %lo(D_800F5038)
/* 3FEA4 8003F2A4 0C00FB2C */  jal        func_8003ECB0
/* 3FEA8 8003F2A8 2407000F */   addiu     $a3, $zero, 0xf
/* 3FEAC 8003F2AC 3C04800F */  lui        $a0, %hi(D_800F5038)
/* 3FEB0 8003F2B0 24845038 */  addiu      $a0, $a0, %lo(D_800F5038)
/* 3FEB4 8003F2B4 3C05800D */  lui        $a1, %hi(D_800CABA0)
/* 3FEB8 8003F2B8 24A5ABA0 */  addiu      $a1, $a1, %lo(D_800CABA0)
/* 3FEBC 8003F2BC 3C06800F */  lui        $a2, %hi(D_800ED3C0)
/* 3FEC0 8003F2C0 0C023124 */  jal        func_8008C490
/* 3FEC4 8003F2C4 84C6D3C0 */   lh        $a2, %lo(D_800ED3C0)($a2)
/* 3FEC8 8003F2C8 26050003 */  addiu      $a1, $s0, 3
/* 3FECC 8003F2CC 000528C0 */  sll        $a1, $a1, 3
/* 3FED0 8003F2D0 AFB20010 */  sw         $s2, 0x10($sp)
/* 3FED4 8003F2D4 02202021 */  addu       $a0, $s1, $zero
/* 3FED8 8003F2D8 30A5FFFF */  andi       $a1, $a1, 0xffff
/* 3FEDC 8003F2DC 3C06800F */  lui        $a2, %hi(D_800F5038)
/* 3FEE0 8003F2E0 24C65038 */  addiu      $a2, $a2, %lo(D_800F5038)
/* 3FEE4 8003F2E4 0C00FB2C */  jal        func_8003ECB0
/* 3FEE8 8003F2E8 2407000F */   addiu     $a3, $zero, 0xf
/* 3FEEC 8003F2EC 3C04800F */  lui        $a0, %hi(D_800F5038)
/* 3FEF0 8003F2F0 24845038 */  addiu      $a0, $a0, %lo(D_800F5038)
/* 3FEF4 8003F2F4 3C05800D */  lui        $a1, %hi(D_800CABA8)
/* 3FEF8 8003F2F8 24A5ABA8 */  addiu      $a1, $a1, %lo(D_800CABA8)
/* 3FEFC 8003F2FC 3C06800F */  lui        $a2, %hi(D_800F65D8)
/* 3FF00 8003F300 0C023124 */  jal        func_8008C490
/* 3FF04 8003F304 84C665D8 */   lh        $a2, %lo(D_800F65D8)($a2)
/* 3FF08 8003F308 26050004 */  addiu      $a1, $s0, 4
/* 3FF0C 8003F30C 000528C0 */  sll        $a1, $a1, 3
/* 3FF10 8003F310 AFB20010 */  sw         $s2, 0x10($sp)
/* 3FF14 8003F314 02202021 */  addu       $a0, $s1, $zero
/* 3FF18 8003F318 30A5FFFF */  andi       $a1, $a1, 0xffff
/* 3FF1C 8003F31C 3C06800F */  lui        $a2, %hi(D_800F5038)
/* 3FF20 8003F320 24C65038 */  addiu      $a2, $a2, %lo(D_800F5038)
/* 3FF24 8003F324 0C00FB2C */  jal        func_8003ECB0
/* 3FF28 8003F328 2407000F */   addiu     $a3, $zero, 0xf
/* 3FF2C 8003F32C 3C04800F */  lui        $a0, %hi(D_800F5038)
/* 3FF30 8003F330 24845038 */  addiu      $a0, $a0, %lo(D_800F5038)
/* 3FF34 8003F334 3C05800D */  lui        $a1, %hi(D_800CABB0)
/* 3FF38 8003F338 24A5ABB0 */  addiu      $a1, $a1, %lo(D_800CABB0)
/* 3FF3C 8003F33C 3C06800F */  lui        $a2, %hi(D_800F37E8)
/* 3FF40 8003F340 84C637E8 */  lh         $a2, %lo(D_800F37E8)($a2)
/* 3FF44 8003F344 0C023124 */  jal        func_8008C490
/* 3FF48 8003F348 26100005 */   addiu     $s0, $s0, 5
/* 3FF4C 8003F34C 001080C0 */  sll        $s0, $s0, 3
/* 3FF50 8003F350 AFB20010 */  sw         $s2, 0x10($sp)
/* 3FF54 8003F354 02202021 */  addu       $a0, $s1, $zero
/* 3FF58 8003F358 3205FFFF */  andi       $a1, $s0, 0xffff
/* 3FF5C 8003F35C 3C06800F */  lui        $a2, %hi(D_800F5038)
/* 3FF60 8003F360 24C65038 */  addiu      $a2, $a2, %lo(D_800F5038)
/* 3FF64 8003F364 0C00FB2C */  jal        func_8003ECB0
/* 3FF68 8003F368 2407000F */   addiu     $a3, $zero, 0xf
/* 3FF6C 8003F36C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 3FF70 8003F370 8FB20020 */  lw         $s2, 0x20($sp)
/* 3FF74 8003F374 8FB1001C */  lw         $s1, 0x1c($sp)
/* 3FF78 8003F378 8FB00018 */  lw         $s0, 0x18($sp)
/* 3FF7C 8003F37C 03E00008 */  jr         $ra
/* 3FF80 8003F380 27BD0028 */   addiu     $sp, $sp, 0x28
