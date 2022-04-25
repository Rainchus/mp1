	.set noat
	.set noreorder

glabel func_8004CB70
/* 4D770 8004CB70 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4D774 8004CB74 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4D778 8004CB78 AFB10014 */  sw         $s1, 0x14($sp)
/* 4D77C 8004CB7C AFB00010 */  sw         $s0, 0x10($sp)
/* 4D780 8004CB80 00808021 */  addu       $s0, $a0, $zero
/* 4D784 8004CB84 00C08821 */  addu       $s1, $a2, $zero
/* 4D788 8004CB88 00052400 */  sll        $a0, $a1, 0x10
/* 4D78C 8004CB8C 0C01307B */  jal        func_8004C1EC
/* 4D790 8004CB90 00042403 */   sra       $a0, $a0, 0x10
/* 4D794 8004CB94 C4400004 */  lwc1       $f0, 4($v0)
/* 4D798 8004CB98 E6200000 */  swc1       $f0, ($s1)
/* 4D79C 8004CB9C C4400008 */  lwc1       $f0, 8($v0)
/* 4D7A0 8004CBA0 E6200004 */  swc1       $f0, 4($s1)
/* 4D7A4 8004CBA4 C440000C */  lwc1       $f0, 0xc($v0)
/* 4D7A8 8004CBA8 00108400 */  sll        $s0, $s0, 0x10
/* 4D7AC 8004CBAC 00108403 */  sra        $s0, $s0, 0x10
/* 4D7B0 8004CBB0 2402FFFF */  addiu      $v0, $zero, -1
/* 4D7B4 8004CBB4 12020012 */  beq        $s0, $v0, .L8004CC00
/* 4D7B8 8004CBB8 E6200008 */   swc1      $f0, 8($s1)
/* 4D7BC 8004CBBC 0C014AB3 */  jal        func_80052ACC
/* 4D7C0 8004CBC0 02002021 */   addu      $a0, $s0, $zero
/* 4D7C4 8004CBC4 00021400 */  sll        $v0, $v0, 0x10
/* 4D7C8 8004CBC8 1440000D */  bnez       $v0, .L8004CC00
/* 4D7CC 8004CBCC 001010C0 */   sll       $v0, $s0, 3
/* 4D7D0 8004CBD0 C6200000 */  lwc1       $f0, ($s1)
/* 4D7D4 8004CBD4 3C01800C */  lui        $at, %hi(D_800C51C0)
/* 4D7D8 8004CBD8 00220821 */  addu       $at, $at, $v0
/* 4D7DC 8004CBDC C42251C0 */  lwc1       $f2, %lo(D_800C51C0)($at)
/* 4D7E0 8004CBE0 46020000 */  add.s      $f0, $f0, $f2
/* 4D7E4 8004CBE4 E6200000 */  swc1       $f0, ($s1)
/* 4D7E8 8004CBE8 C6200008 */  lwc1       $f0, 8($s1)
/* 4D7EC 8004CBEC 3C01800C */  lui        $at, %hi(D_800C51C4)
/* 4D7F0 8004CBF0 00220821 */  addu       $at, $at, $v0
/* 4D7F4 8004CBF4 C42251C4 */  lwc1       $f2, %lo(D_800C51C4)($at)
/* 4D7F8 8004CBF8 46020000 */  add.s      $f0, $f0, $f2
/* 4D7FC 8004CBFC E6200008 */  swc1       $f0, 8($s1)
.L8004CC00:
/* 4D800 8004CC00 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4D804 8004CC04 8FB10014 */  lw         $s1, 0x14($sp)
/* 4D808 8004CC08 8FB00010 */  lw         $s0, 0x10($sp)
/* 4D80C 8004CC0C 03E00008 */  jr         $ra
/* 4D810 8004CC10 27BD0020 */   addiu     $sp, $sp, 0x20
