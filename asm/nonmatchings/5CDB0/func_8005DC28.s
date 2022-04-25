	.set noat
	.set noreorder

glabel func_8005DC28
/* 5E828 8005DC28 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5E82C 8005DC2C AFBF0020 */  sw         $ra, 0x20($sp)
/* 5E830 8005DC30 AFB1001C */  sw         $s1, 0x1c($sp)
/* 5E834 8005DC34 AFB00018 */  sw         $s0, 0x18($sp)
/* 5E838 8005DC38 3C03800C */  lui        $v1, %hi(D_800C598A)
/* 5E83C 8005DC3C 8463598A */  lh         $v1, %lo(D_800C598A)($v1)
/* 5E840 8005DC40 3C02800C */  lui        $v0, %hi(D_800C5988)
/* 5E844 8005DC44 84425988 */  lh         $v0, %lo(D_800C5988)($v0)
/* 5E848 8005DC48 1062001E */  beq        $v1, $v0, .L8005DCC4
/* 5E84C 8005DC4C 00001021 */   addu      $v0, $zero, $zero
/* 5E850 8005DC50 3C02800C */  lui        $v0, %hi(D_800C598C)
/* 5E854 8005DC54 8442598C */  lh         $v0, %lo(D_800C598C)($v0)
/* 5E858 8005DC58 00408821 */  addu       $s1, $v0, $zero
/* 5E85C 8005DC5C 00028040 */  sll        $s0, $v0, 1
/* 5E860 8005DC60 02028021 */  addu       $s0, $s0, $v0
/* 5E864 8005DC64 00108080 */  sll        $s0, $s0, 2
/* 5E868 8005DC68 3C02800C */  lui        $v0, %hi(D_800C5990)
/* 5E86C 8005DC6C 8C425990 */  lw         $v0, %lo(D_800C5990)($v0)
/* 5E870 8005DC70 02028021 */  addu       $s0, $s0, $v0
/* 5E874 8005DC74 24020004 */  addiu      $v0, $zero, 4
/* 5E878 8005DC78 A6020000 */  sh         $v0, ($s0)
/* 5E87C 8005DC7C 96020002 */  lhu        $v0, 2($s0)
/* 5E880 8005DC80 3C01800C */  lui        $at, %hi(D_800C598C)
/* 5E884 8005DC84 A422598C */  sh         $v0, %lo(D_800C598C)($at)
/* 5E888 8005DC88 0C018C51 */  jal        func_80063144
/* 5E88C 8005DC8C 30A5FFFF */   andi      $a1, $a1, 0xffff
/* 5E890 8005DC90 AE020004 */  sw         $v0, 4($s0)
/* 5E894 8005DC94 A4510022 */  sh         $s1, 0x22($v0)
/* 5E898 8005DC98 8E040004 */  lw         $a0, 4($s0)
/* 5E89C 8005DC9C 3C058006 */  lui        $a1, %hi(func_8005DDDC)
/* 5E8A0 8005DCA0 0C018D76 */  jal        func_800635D8
/* 5E8A4 8005DCA4 24A5DDDC */   addiu     $a1, $a1, %lo(func_8005DDDC)
/* 5E8A8 8005DCA8 AE000008 */  sw         $zero, 8($s0)
/* 5E8AC 8005DCAC 3C02800C */  lui        $v0, %hi(D_800C598A)
/* 5E8B0 8005DCB0 9442598A */  lhu        $v0, %lo(D_800C598A)($v0)
/* 5E8B4 8005DCB4 24420001 */  addiu      $v0, $v0, 1
/* 5E8B8 8005DCB8 3C01800C */  lui        $at, %hi(D_800C598A)
/* 5E8BC 8005DCBC A422598A */  sh         $v0, %lo(D_800C598A)($at)
/* 5E8C0 8005DCC0 8E020004 */  lw         $v0, 4($s0)
.L8005DCC4:
/* 5E8C4 8005DCC4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 5E8C8 8005DCC8 8FB1001C */  lw         $s1, 0x1c($sp)
/* 5E8CC 8005DCCC 8FB00018 */  lw         $s0, 0x18($sp)
/* 5E8D0 8005DCD0 03E00008 */  jr         $ra
/* 5E8D4 8005DCD4 27BD0028 */   addiu     $sp, $sp, 0x28
