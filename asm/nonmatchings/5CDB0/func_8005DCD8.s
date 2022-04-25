	.set noat
	.set noreorder

glabel func_8005DCD8
/* 5E8D8 8005DCD8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5E8DC 8005DCDC AFBF0028 */  sw         $ra, 0x28($sp)
/* 5E8E0 8005DCE0 AFB10024 */  sw         $s1, 0x24($sp)
/* 5E8E4 8005DCE4 AFB00020 */  sw         $s0, 0x20($sp)
/* 5E8E8 8005DCE8 8FA80040 */  lw         $t0, 0x40($sp)
/* 5E8EC 8005DCEC 3C03800C */  lui        $v1, %hi(D_800C598A)
/* 5E8F0 8005DCF0 8463598A */  lh         $v1, %lo(D_800C598A)($v1)
/* 5E8F4 8005DCF4 3C02800C */  lui        $v0, %hi(D_800C5988)
/* 5E8F8 8005DCF8 84425988 */  lh         $v0, %lo(D_800C5988)($v0)
/* 5E8FC 8005DCFC 1062001F */  beq        $v1, $v0, .L8005DD7C
/* 5E900 8005DD00 00001021 */   addu      $v0, $zero, $zero
/* 5E904 8005DD04 3C02800C */  lui        $v0, %hi(D_800C598C)
/* 5E908 8005DD08 8442598C */  lh         $v0, %lo(D_800C598C)($v0)
/* 5E90C 8005DD0C 00408821 */  addu       $s1, $v0, $zero
/* 5E910 8005DD10 00028040 */  sll        $s0, $v0, 1
/* 5E914 8005DD14 02028021 */  addu       $s0, $s0, $v0
/* 5E918 8005DD18 00108080 */  sll        $s0, $s0, 2
/* 5E91C 8005DD1C 3C02800C */  lui        $v0, %hi(D_800C5990)
/* 5E920 8005DD20 8C425990 */  lw         $v0, %lo(D_800C5990)($v0)
/* 5E924 8005DD24 02028021 */  addu       $s0, $s0, $v0
/* 5E928 8005DD28 24020004 */  addiu      $v0, $zero, 4
/* 5E92C 8005DD2C A6020000 */  sh         $v0, ($s0)
/* 5E930 8005DD30 96020002 */  lhu        $v0, 2($s0)
/* 5E934 8005DD34 3C01800C */  lui        $at, %hi(D_800C598C)
/* 5E938 8005DD38 A422598C */  sh         $v0, %lo(D_800C598C)($at)
/* 5E93C 8005DD3C AFA80010 */  sw         $t0, 0x10($sp)
/* 5E940 8005DD40 0C018CC5 */  jal        func_80063314
/* 5E944 8005DD44 30A5FFFF */   andi      $a1, $a1, 0xffff
/* 5E948 8005DD48 AE020004 */  sw         $v0, 4($s0)
/* 5E94C 8005DD4C A4510022 */  sh         $s1, 0x22($v0)
/* 5E950 8005DD50 8E040004 */  lw         $a0, 4($s0)
/* 5E954 8005DD54 3C058006 */  lui        $a1, %hi(func_8005DDDC)
/* 5E958 8005DD58 0C018D76 */  jal        func_800635D8
/* 5E95C 8005DD5C 24A5DDDC */   addiu     $a1, $a1, %lo(func_8005DDDC)
/* 5E960 8005DD60 AE000008 */  sw         $zero, 8($s0)
/* 5E964 8005DD64 3C02800C */  lui        $v0, %hi(D_800C598A)
/* 5E968 8005DD68 9442598A */  lhu        $v0, %lo(D_800C598A)($v0)
/* 5E96C 8005DD6C 24420001 */  addiu      $v0, $v0, 1
/* 5E970 8005DD70 3C01800C */  lui        $at, %hi(D_800C598A)
/* 5E974 8005DD74 A422598A */  sh         $v0, %lo(D_800C598A)($at)
/* 5E978 8005DD78 8E020004 */  lw         $v0, 4($s0)
.L8005DD7C:
/* 5E97C 8005DD7C 8FBF0028 */  lw         $ra, 0x28($sp)
/* 5E980 8005DD80 8FB10024 */  lw         $s1, 0x24($sp)
/* 5E984 8005DD84 8FB00020 */  lw         $s0, 0x20($sp)
/* 5E988 8005DD88 03E00008 */  jr         $ra
/* 5E98C 8005DD8C 27BD0030 */   addiu     $sp, $sp, 0x30
