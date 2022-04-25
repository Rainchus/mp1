	.set noat
	.set noreorder

glabel func_8007F2FC
/* 7FEFC 8007F2FC 3C08800E */  lui        $t0, %hi(D_800E6EB8)
/* 7FF00 8007F300 8D086EB8 */  lw         $t0, %lo(D_800E6EB8)($t0)
/* 7FF04 8007F304 3C07800E */  lui        $a3, %hi(D_800E7A3C)
/* 7FF08 8007F308 8CE77A3C */  lw         $a3, %lo(D_800E7A3C)($a3)
/* 7FF0C 8007F30C 3C03800E */  lui        $v1, %hi(D_800E6EBC)
/* 7FF10 8007F310 8C636EBC */  lw         $v1, %lo(D_800E6EBC)($v1)
/* 7FF14 8007F314 3C05800E */  lui        $a1, %hi(D_800E7A48)
/* 7FF18 8007F318 8CA57A48 */  lw         $a1, %lo(D_800E7A48)($a1)
/* 7FF1C 8007F31C 3C02800E */  lui        $v0, %hi(D_800E6EC0)
/* 7FF20 8007F320 8C426EC0 */  lw         $v0, %lo(D_800E6EC0)($v0)
/* 7FF24 8007F324 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 7FF28 8007F328 AFB3001C */  sw         $s3, 0x1c($sp)
/* 7FF2C 8007F32C AFB50024 */  sw         $s5, 0x24($sp)
/* 7FF30 8007F330 3C15800E */  lui        $s5, %hi(D_800E6EC8)
/* 7FF34 8007F334 26B56EC8 */  addiu      $s5, $s5, %lo(D_800E6EC8)
/* 7FF38 8007F338 AFB10014 */  sw         $s1, 0x14($sp)
/* 7FF3C 8007F33C 3C11800E */  lui        $s1, %hi(D_800E6EF8)
/* 7FF40 8007F340 26316EF8 */  addiu      $s1, $s1, %lo(D_800E6EF8)
/* 7FF44 8007F344 AFB00010 */  sw         $s0, 0x10($sp)
/* 7FF48 8007F348 3C10800E */  lui        $s0, %hi(D_800E6F10)
/* 7FF4C 8007F34C 26106F10 */  addiu      $s0, $s0, %lo(D_800E6F10)
/* 7FF50 8007F350 AFB40020 */  sw         $s4, 0x20($sp)
/* 7FF54 8007F354 3C14800E */  lui        $s4, %hi(D_800E6EE0)
/* 7FF58 8007F358 26946EE0 */  addiu      $s4, $s4, %lo(D_800E6EE0)
/* 7FF5C 8007F35C AFBF0028 */  sw         $ra, 0x28($sp)
/* 7FF60 8007F360 AFB20018 */  sw         $s2, 0x18($sp)
/* 7FF64 8007F364 00073840 */  sll        $a3, $a3, 1
/* 7FF68 8007F368 01073021 */  addu       $a2, $t0, $a3
/* 7FF6C 8007F36C 00052840 */  sll        $a1, $a1, 1
/* 7FF70 8007F370 3C01800E */  lui        $at, %hi(D_800E6ECC)
/* 7FF74 8007F374 AC286ECC */  sw         $t0, %lo(D_800E6ECC)($at)
/* 7FF78 8007F378 AEA80000 */  sw         $t0, ($s5)
/* 7FF7C 8007F37C 3C01800E */  lui        $at, %hi(D_800E6ED0)
/* 7FF80 8007F380 AC266ED0 */  sw         $a2, %lo(D_800E6ED0)($at)
/* 7FF84 8007F384 3C01800E */  lui        $at, %hi(D_800E6EFC)
/* 7FF88 8007F388 AC236EFC */  sw         $v1, %lo(D_800E6EFC)($at)
/* 7FF8C 8007F38C AE230000 */  sw         $v1, ($s1)
/* 7FF90 8007F390 00651821 */  addu       $v1, $v1, $a1
/* 7FF94 8007F394 3C01800E */  lui        $at, %hi(D_800E6F00)
/* 7FF98 8007F398 AC236F00 */  sw         $v1, %lo(D_800E6F00)($at)
/* 7FF9C 8007F39C 3C01800E */  lui        $at, %hi(D_800E6F14)
/* 7FFA0 8007F3A0 AC226F14 */  sw         $v0, %lo(D_800E6F14)($at)
/* 7FFA4 8007F3A4 AE020000 */  sw         $v0, ($s0)
/* 7FFA8 8007F3A8 00451021 */  addu       $v0, $v0, $a1
/* 7FFAC 8007F3AC 3C01800E */  lui        $at, %hi(D_800E6F18)
/* 7FFB0 8007F3B0 AC226F18 */  sw         $v0, %lo(D_800E6F18)($at)
/* 7FFB4 8007F3B4 AE880000 */  sw         $t0, ($s4)
/* 7FFB8 8007F3B8 3C01800E */  lui        $at, %hi(D_800E6EE4)
/* 7FFBC 8007F3BC AC266EE4 */  sw         $a2, %lo(D_800E6EE4)($at)
/* 7FFC0 8007F3C0 00C73021 */  addu       $a2, $a2, $a3
/* 7FFC4 8007F3C4 3C01800E */  lui        $at, %hi(D_800E6EE8)
/* 7FFC8 8007F3C8 AC266EE8 */  sw         $a2, %lo(D_800E6EE8)($at)
/* 7FFCC 8007F3CC 0C01FB95 */  jal        func_8007EE54
/* 7FFD0 8007F3D0 00809821 */   addu      $s3, $a0, $zero
/* 7FFD4 8007F3D4 3C02800E */  lui        $v0, %hi(D_800E7A34)
/* 7FFD8 8007F3D8 8C427A34 */  lw         $v0, %lo(D_800E7A34)($v0)
/* 7FFDC 8007F3DC 3C05800E */  lui        $a1, %hi(D_800E6EBC)
/* 7FFE0 8007F3E0 8CA56EBC */  lw         $a1, %lo(D_800E6EBC)($a1)
/* 7FFE4 8007F3E4 3C03800E */  lui        $v1, %hi(D_800E7A4C)
/* 7FFE8 8007F3E8 8C637A4C */  lw         $v1, %lo(D_800E7A4C)($v1)
/* 7FFEC 8007F3EC 3C04800E */  lui        $a0, %hi(D_800E6EC0)
/* 7FFF0 8007F3F0 8C846EC0 */  lw         $a0, %lo(D_800E6EC0)($a0)
/* 7FFF4 8007F3F4 00021040 */  sll        $v0, $v0, 1
/* 7FFF8 8007F3F8 02629821 */  addu       $s3, $s3, $v0
/* 7FFFC 8007F3FC 3C02800E */  lui        $v0, %hi(D_800E7A3C)
/* 80000 8007F400 8C427A3C */  lw         $v0, %lo(D_800E7A3C)($v0)
/* 80004 8007F404 2472FFFE */  addiu      $s2, $v1, -2
/* 80008 8007F408 AE250000 */  sw         $a1, ($s1)
/* 8000C 8007F40C AE040000 */  sw         $a0, ($s0)
/* 80010 8007F410 3C03800E */  lui        $v1, %hi(D_800E6ECC)
/* 80014 8007F414 8C636ECC */  lw         $v1, %lo(D_800E6ECC)($v1)
/* 80018 8007F418 3C04800E */  lui        $a0, %hi(D_800E6ED0)
/* 8001C 8007F41C 8C846ED0 */  lw         $a0, %lo(D_800E6ED0)($a0)
/* 80020 8007F420 8E850000 */  lw         $a1, ($s4)
/* 80024 8007F424 3C06800E */  lui        $a2, %hi(D_800E6EE4)
/* 80028 8007F428 8CC66EE4 */  lw         $a2, %lo(D_800E6EE4)($a2)
/* 8002C 8007F42C 3C07800E */  lui        $a3, %hi(D_800E6EE8)
/* 80030 8007F430 8CE76EE8 */  lw         $a3, %lo(D_800E6EE8)($a3)
/* 80034 8007F434 00021040 */  sll        $v0, $v0, 1
/* 80038 8007F438 00621821 */  addu       $v1, $v1, $v0
/* 8003C 8007F43C 00822021 */  addu       $a0, $a0, $v0
/* 80040 8007F440 00A22821 */  addu       $a1, $a1, $v0
/* 80044 8007F444 00C23021 */  addu       $a2, $a2, $v0
/* 80048 8007F448 00E23821 */  addu       $a3, $a3, $v0
/* 8004C 8007F44C 3C01800E */  lui        $at, %hi(D_800E6ECC)
/* 80050 8007F450 AC236ECC */  sw         $v1, %lo(D_800E6ECC)($at)
/* 80054 8007F454 3C01800E */  lui        $at, %hi(D_800E6ED0)
/* 80058 8007F458 AC246ED0 */  sw         $a0, %lo(D_800E6ED0)($at)
/* 8005C 8007F45C AE850000 */  sw         $a1, ($s4)
/* 80060 8007F460 3C01800E */  lui        $at, %hi(D_800E6EE4)
/* 80064 8007F464 AC266EE4 */  sw         $a2, %lo(D_800E6EE4)($at)
/* 80068 8007F468 3C01800E */  lui        $at, %hi(D_800E6EE8)
/* 8006C 8007F46C 1A400020 */  blez       $s2, .L8007F4F0
/* 80070 8007F470 AC276EE8 */   sw        $a3, %lo(D_800E6EE8)($at)
/* 80074 8007F474 02A08821 */  addu       $s1, $s5, $zero
/* 80078 8007F478 02808021 */  addu       $s0, $s4, $zero
.L8007F47C:
/* 8007C 8007F47C 0C01FB95 */  jal        func_8007EE54
/* 80080 8007F480 02602021 */   addu      $a0, $s3, $zero
/* 80084 8007F484 3C02800E */  lui        $v0, %hi(D_800E7A34)
/* 80088 8007F488 8C427A34 */  lw         $v0, %lo(D_800E7A34)($v0)
/* 8008C 8007F48C 2652FFFF */  addiu      $s2, $s2, -1
/* 80090 8007F490 8E230000 */  lw         $v1, ($s1)
/* 80094 8007F494 8E240004 */  lw         $a0, 4($s1)
/* 80098 8007F498 8E250008 */  lw         $a1, 8($s1)
/* 8009C 8007F49C 8E060000 */  lw         $a2, ($s0)
/* 800A0 8007F4A0 00021040 */  sll        $v0, $v0, 1
/* 800A4 8007F4A4 02629821 */  addu       $s3, $s3, $v0
/* 800A8 8007F4A8 3C02800E */  lui        $v0, %hi(D_800E7A3C)
/* 800AC 8007F4AC 8C427A3C */  lw         $v0, %lo(D_800E7A3C)($v0)
/* 800B0 8007F4B0 8E070004 */  lw         $a3, 4($s0)
/* 800B4 8007F4B4 8E080008 */  lw         $t0, 8($s0)
/* 800B8 8007F4B8 00021040 */  sll        $v0, $v0, 1
/* 800BC 8007F4BC 00621821 */  addu       $v1, $v1, $v0
/* 800C0 8007F4C0 00822021 */  addu       $a0, $a0, $v0
/* 800C4 8007F4C4 00A22821 */  addu       $a1, $a1, $v0
/* 800C8 8007F4C8 00C23021 */  addu       $a2, $a2, $v0
/* 800CC 8007F4CC 00E23821 */  addu       $a3, $a3, $v0
/* 800D0 8007F4D0 01024021 */  addu       $t0, $t0, $v0
/* 800D4 8007F4D4 AE230000 */  sw         $v1, ($s1)
/* 800D8 8007F4D8 AE240004 */  sw         $a0, 4($s1)
/* 800DC 8007F4DC AE250008 */  sw         $a1, 8($s1)
/* 800E0 8007F4E0 AE060000 */  sw         $a2, ($s0)
/* 800E4 8007F4E4 AE070004 */  sw         $a3, 4($s0)
/* 800E8 8007F4E8 1E40FFE4 */  bgtz       $s2, .L8007F47C
/* 800EC 8007F4EC AE080008 */   sw        $t0, 8($s0)
.L8007F4F0:
/* 800F0 8007F4F0 3C02800E */  lui        $v0, %hi(D_800E6EE4)
/* 800F4 8007F4F4 8C426EE4 */  lw         $v0, %lo(D_800E6EE4)($v0)
/* 800F8 8007F4F8 3C03800E */  lui        $v1, %hi(D_800E6EFC)
/* 800FC 8007F4FC 8C636EFC */  lw         $v1, %lo(D_800E6EFC)($v1)
/* 80100 8007F500 3C05800E */  lui        $a1, %hi(D_800E6F14)
/* 80104 8007F504 8CA56F14 */  lw         $a1, %lo(D_800E6F14)($a1)
/* 80108 8007F508 3C01800E */  lui        $at, %hi(D_800E6EE8)
/* 8010C 8007F50C AC226EE8 */  sw         $v0, %lo(D_800E6EE8)($at)
/* 80110 8007F510 3C01800E */  lui        $at, %hi(D_800E6F00)
/* 80114 8007F514 AC236F00 */  sw         $v1, %lo(D_800E6F00)($at)
/* 80118 8007F518 3C01800E */  lui        $at, %hi(D_800E6F18)
/* 8011C 8007F51C AC256F18 */  sw         $a1, %lo(D_800E6F18)($at)
/* 80120 8007F520 0C01FB95 */  jal        func_8007EE54
/* 80124 8007F524 02602021 */   addu      $a0, $s3, $zero
/* 80128 8007F528 8FBF0028 */  lw         $ra, 0x28($sp)
/* 8012C 8007F52C 8FB50024 */  lw         $s5, 0x24($sp)
/* 80130 8007F530 8FB40020 */  lw         $s4, 0x20($sp)
/* 80134 8007F534 8FB3001C */  lw         $s3, 0x1c($sp)
/* 80138 8007F538 8FB20018 */  lw         $s2, 0x18($sp)
/* 8013C 8007F53C 8FB10014 */  lw         $s1, 0x14($sp)
/* 80140 8007F540 8FB00010 */  lw         $s0, 0x10($sp)
/* 80144 8007F544 03E00008 */  jr         $ra
/* 80148 8007F548 27BD0030 */   addiu     $sp, $sp, 0x30
