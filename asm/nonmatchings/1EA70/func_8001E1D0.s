	.set noat
	.set noreorder

glabel func_8001E1D0
/* 1EDD0 8001E1D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1EDD4 8001E1D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1EDD8 8001E1D8 AFB00010 */  sw         $s0, 0x10($sp)
/* 1EDDC 8001E1DC 00042400 */  sll        $a0, $a0, 0x10
/* 1EDE0 8001E1E0 00042403 */  sra        $a0, $a0, 0x10
/* 1EDE4 8001E1E4 3C02800F */  lui        $v0, %hi(D_800ECDE0)
/* 1EDE8 8001E1E8 8C42CDE0 */  lw         $v0, %lo(D_800ECDE0)($v0)
/* 1EDEC 8001E1EC 000480C0 */  sll        $s0, $a0, 3
/* 1EDF0 8001E1F0 02048021 */  addu       $s0, $s0, $a0
/* 1EDF4 8001E1F4 00108080 */  sll        $s0, $s0, 2
/* 1EDF8 8001E1F8 02021021 */  addu       $v0, $s0, $v0
/* 1EDFC 8001E1FC 84430000 */  lh         $v1, ($v0)
/* 1EE00 8001E200 3C04800F */  lui        $a0, %hi(D_800F2B7C)
/* 1EE04 8001E204 8C842B7C */  lw         $a0, %lo(D_800F2B7C)($a0)
/* 1EE08 8001E208 00031040 */  sll        $v0, $v1, 1
/* 1EE0C 8001E20C 00431021 */  addu       $v0, $v0, $v1
/* 1EE10 8001E210 00021180 */  sll        $v0, $v0, 6
/* 1EE14 8001E214 00441021 */  addu       $v0, $v0, $a0
/* 1EE18 8001E218 30A600FF */  andi       $a2, $a1, 0xff
/* 1EE1C 8001E21C 8C450020 */  lw         $a1, 0x20($v0)
/* 1EE20 8001E220 0C007803 */  jal        func_8001E00C
/* 1EE24 8001E224 2404FFFF */   addiu     $a0, $zero, -1
/* 1EE28 8001E228 00022400 */  sll        $a0, $v0, 0x10
/* 1EE2C 8001E22C 00042403 */  sra        $a0, $a0, 0x10
/* 1EE30 8001E230 3C05800F */  lui        $a1, %hi(D_800ECDE0)
/* 1EE34 8001E234 8CA5CDE0 */  lw         $a1, %lo(D_800ECDE0)($a1)
/* 1EE38 8001E238 000418C0 */  sll        $v1, $a0, 3
/* 1EE3C 8001E23C 00641821 */  addu       $v1, $v1, $a0
/* 1EE40 8001E240 00031880 */  sll        $v1, $v1, 2
/* 1EE44 8001E244 00651821 */  addu       $v1, $v1, $a1
/* 1EE48 8001E248 02058021 */  addu       $s0, $s0, $a1
/* 1EE4C 8001E24C 96040002 */  lhu        $a0, 2($s0)
/* 1EE50 8001E250 A4640002 */  sh         $a0, 2($v1)
/* 1EE54 8001E254 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1EE58 8001E258 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1EE5C 8001E25C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1EE60 8001E260 03E00008 */  jr         $ra
/* 1EE64 8001E264 27BD0018 */   addiu     $sp, $sp, 0x18
