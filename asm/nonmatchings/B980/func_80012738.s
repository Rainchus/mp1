	.set noat
	.set noreorder

glabel func_80012738
/* 13338 80012738 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1333C 8001273C AFBF0010 */  sw         $ra, 0x10($sp)
/* 13340 80012740 3C02800D */  lui        $v0, %hi(D_800CEAA4)
/* 13344 80012744 8C42EAA4 */  lw         $v0, %lo(D_800CEAA4)($v0)
/* 13348 80012748 34420010 */  ori        $v0, $v0, 0x10
/* 1334C 8001274C 3C01800D */  lui        $at, %hi(D_800CEAA4)
/* 13350 80012750 AC22EAA4 */  sw         $v0, %lo(D_800CEAA4)($at)
/* 13354 80012754 00042600 */  sll        $a0, $a0, 0x18
/* 13358 80012758 0C002B7F */  jal        func_8000ADFC
/* 1335C 8001275C 00042603 */   sra       $a0, $a0, 0x18
/* 13360 80012760 3C01800D */  lui        $at, %hi(D_800CEAB2)
/* 13364 80012764 A422EAB2 */  sh         $v0, %lo(D_800CEAB2)($at)
/* 13368 80012768 3C01800D */  lui        $at, %hi(D_800CEAB0)
/* 1336C 8001276C 0C00377B */  jal        func_8000DDEC
/* 13370 80012770 A422EAB0 */   sh        $v0, %lo(D_800CEAB0)($at)
/* 13374 80012774 3C01800D */  lui        $at, %hi(D_800CEAA8)
/* 13378 80012778 AC20EAA8 */  sw         $zero, %lo(D_800CEAA8)($at)
/* 1337C 8001277C 3C02800D */  lui        $v0, %hi(D_800CEAA4)
/* 13380 80012780 8C42EAA4 */  lw         $v0, %lo(D_800CEAA4)($v0)
/* 13384 80012784 2403FFEF */  addiu      $v1, $zero, -0x11
/* 13388 80012788 00431024 */  and        $v0, $v0, $v1
/* 1338C 8001278C 3C01800D */  lui        $at, %hi(D_800CEAA4)
/* 13390 80012790 AC22EAA4 */  sw         $v0, %lo(D_800CEAA4)($at)
/* 13394 80012794 8FBF0010 */  lw         $ra, 0x10($sp)
/* 13398 80012798 03E00008 */  jr         $ra
/* 1339C 8001279C 27BD0018 */   addiu     $sp, $sp, 0x18
