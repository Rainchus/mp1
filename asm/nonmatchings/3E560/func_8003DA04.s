	.set noat
	.set noreorder

glabel func_8003DA04
/* 3E604 8003DA04 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3E608 8003DA08 AFBF0018 */  sw         $ra, 0x18($sp)
/* 3E60C 8003DA0C 00042400 */  sll        $a0, $a0, 0x10
/* 3E610 8003DA10 00042403 */  sra        $a0, $a0, 0x10
/* 3E614 8003DA14 3C03800D */  lui        $v1, %hi(D_800D61C8)
/* 3E618 8003DA18 246361C8 */  addiu      $v1, $v1, %lo(D_800D61C8)
/* 3E61C 8003DA1C 00041040 */  sll        $v0, $a0, 1
/* 3E620 8003DA20 00432821 */  addu       $a1, $v0, $v1
/* 3E624 8003DA24 84A20000 */  lh         $v0, ($a1)
/* 3E628 8003DA28 10400008 */  beqz       $v0, .L8003DA4C
/* 3E62C 8003DA2C 00401821 */   addu      $v1, $v0, $zero
/* 3E630 8003DA30 2462FFFF */  addiu      $v0, $v1, -1
/* 3E634 8003DA34 A4A20000 */  sh         $v0, ($a1)
/* 3E638 8003DA38 00021400 */  sll        $v0, $v0, 0x10
/* 3E63C 8003DA3C 14400003 */  bnez       $v0, .L8003DA4C
/* 3E640 8003DA40 00000000 */   nop
/* 3E644 8003DA44 0C00D0F2 */  jal        func_800343C8
/* 3E648 8003DA48 00000000 */   nop
.L8003DA4C:
/* 3E64C 8003DA4C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 3E650 8003DA50 03E00008 */  jr         $ra
/* 3E654 8003DA54 27BD0020 */   addiu     $sp, $sp, 0x20
