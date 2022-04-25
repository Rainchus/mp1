	.set noat
	.set noreorder

glabel func_800FA1C8_152528
/* 152528 800FA1C8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 15252C 800FA1CC AFBF0030 */  sw         $ra, 0x30($sp)
/* 152530 800FA1D0 AFB1002C */  sw         $s1, 0x2c($sp)
/* 152534 800FA1D4 AFB00028 */  sw         $s0, 0x28($sp)
/* 152538 800FA1D8 00808821 */  addu       $s1, $a0, $zero
/* 15253C 800FA1DC 27B00018 */  addiu      $s0, $sp, 0x18
/* 152540 800FA1E0 3C038010 */  lui        $v1, %hi(D_800FA8E8)
/* 152544 800FA1E4 9463A8E8 */  lhu        $v1, %lo(D_800FA8E8)($v1)
/* 152548 800FA1E8 00031040 */  sll        $v0, $v1, 1
/* 15254C 800FA1EC 00431021 */  addu       $v0, $v0, $v1
/* 152550 800FA1F0 00021080 */  sll        $v0, $v0, 2
/* 152554 800FA1F4 3C058010 */  lui        $a1, %hi(D_800FA824)
/* 152558 800FA1F8 00A22821 */  addu       $a1, $a1, $v0
/* 15255C 800FA1FC 8CA5A824 */  lw         $a1, %lo(D_800FA824)($a1)
/* 152560 800FA200 3C068010 */  lui        $a2, %hi(D_800FA828)
/* 152564 800FA204 00C23021 */  addu       $a2, $a2, $v0
/* 152568 800FA208 8CC6A828 */  lw         $a2, %lo(D_800FA828)($a2)
/* 15256C 800FA20C 3C078010 */  lui        $a3, %hi(D_800FA82C)
/* 152570 800FA210 00E23821 */  addu       $a3, $a3, $v0
/* 152574 800FA214 8CE7A82C */  lw         $a3, %lo(D_800FA82C)($a3)
/* 152578 800FA218 0C028340 */  jal        func_800A0D00
/* 15257C 800FA21C 02002021 */   addu      $a0, $s0, $zero
/* 152580 800FA220 3C03800F */  lui        $v1, %hi(D_800F3344)
/* 152584 800FA224 90633344 */  lbu        $v1, %lo(D_800F3344)($v1)
/* 152588 800FA228 00031080 */  sll        $v0, $v1, 2
/* 15258C 800FA22C 00431021 */  addu       $v0, $v0, $v1
/* 152590 800FA230 00021080 */  sll        $v0, $v0, 2
/* 152594 800FA234 AFB00010 */  sw         $s0, 0x10($sp)
/* 152598 800FA238 3063FFFF */  andi       $v1, $v1, 0xffff
/* 15259C 800FA23C AFA30014 */  sw         $v1, 0x14($sp)
/* 1525A0 800FA240 02202021 */  addu       $a0, $s1, $zero
/* 1525A4 800FA244 3C05800C */  lui        $a1, %hi(D_800C59AC)
/* 1525A8 800FA248 00A22821 */  addu       $a1, $a1, $v0
/* 1525AC 800FA24C 8CA559AC */  lw         $a1, %lo(D_800C59AC)($a1)
/* 1525B0 800FA250 3C06800C */  lui        $a2, %hi(D_800C59B0)
/* 1525B4 800FA254 00C23021 */  addu       $a2, $a2, $v0
/* 1525B8 800FA258 8CC659B0 */  lw         $a2, %lo(D_800C59B0)($a2)
/* 1525BC 800FA25C 0C03E6F3 */  jal        func_800F9BCC_151F2C
/* 1525C0 800FA260 24070003 */   addiu     $a3, $zero, 3
/* 1525C4 800FA264 8FBF0030 */  lw         $ra, 0x30($sp)
/* 1525C8 800FA268 8FB1002C */  lw         $s1, 0x2c($sp)
/* 1525CC 800FA26C 8FB00028 */  lw         $s0, 0x28($sp)
/* 1525D0 800FA270 03E00008 */  jr         $ra
/* 1525D4 800FA274 27BD0038 */   addiu     $sp, $sp, 0x38
