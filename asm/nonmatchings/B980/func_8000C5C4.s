	.set noat
	.set noreorder

glabel func_8000C5C4
/* D1C4 8000C5C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D1C8 8000C5C8 AFBF0010 */  sw         $ra, 0x10($sp)
/* D1CC 8000C5CC 3C03800D */  lui        $v1, %hi(D_800CDAF0)
/* D1D0 8000C5D0 8C63DAF0 */  lw         $v1, %lo(D_800CDAF0)($v1)
/* D1D4 8000C5D4 34630010 */  ori        $v1, $v1, 0x10
/* D1D8 8000C5D8 2402FFFB */  addiu      $v0, $zero, -5
/* D1DC 8000C5DC 00621024 */  and        $v0, $v1, $v0
/* D1E0 8000C5E0 3C01800D */  lui        $at, %hi(D_800CDAF0)
/* D1E4 8000C5E4 AC22DAF0 */  sw         $v0, %lo(D_800CDAF0)($at)
/* D1E8 8000C5E8 30630002 */  andi       $v1, $v1, 2
/* D1EC 8000C5EC 1460000E */  bnez       $v1, .L8000C628
/* D1F0 8000C5F0 00000000 */   nop
/* D1F4 8000C5F4 0C003051 */  jal        func_8000C144
/* D1F8 8000C5F8 00000000 */   nop
/* D1FC 8000C5FC 24030001 */  addiu      $v1, $zero, 1
/* D200 8000C600 14430004 */  bne        $v0, $v1, .L8000C614
/* D204 8000C604 00000000 */   nop
/* D208 8000C608 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* D20C 8000C60C 0C0229E8 */  jal        func_8008A7A0
/* D210 8000C610 8C84DAD4 */   lw        $a0, %lo(D_800CDAD4)($a0)
.L8000C614:
/* D214 8000C614 3C02800D */  lui        $v0, %hi(D_800CDAF0)
/* D218 8000C618 8C42DAF0 */  lw         $v0, %lo(D_800CDAF0)($v0)
/* D21C 8000C61C 34420002 */  ori        $v0, $v0, 2
/* D220 8000C620 3C01800D */  lui        $at, %hi(D_800CDAF0)
/* D224 8000C624 AC22DAF0 */  sw         $v0, %lo(D_800CDAF0)($at)
.L8000C628:
/* D228 8000C628 3C02800D */  lui        $v0, %hi(D_800CDAF0)
/* D22C 8000C62C 8C42DAF0 */  lw         $v0, %lo(D_800CDAF0)($v0)
/* D230 8000C630 2403FFEF */  addiu      $v1, $zero, -0x11
/* D234 8000C634 00431024 */  and        $v0, $v0, $v1
/* D238 8000C638 3C01800D */  lui        $at, %hi(D_800CDAF0)
/* D23C 8000C63C AC22DAF0 */  sw         $v0, %lo(D_800CDAF0)($at)
/* D240 8000C640 8FBF0010 */  lw         $ra, 0x10($sp)
/* D244 8000C644 03E00008 */  jr         $ra
/* D248 8000C648 27BD0018 */   addiu     $sp, $sp, 0x18
