	.set noat
	.set noreorder

glabel func_8005DF44
/* 5EB44 8005DF44 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5EB48 8005DF48 AFBF0018 */  sw         $ra, 0x18($sp)
/* 5EB4C 8005DF4C 3C02800C */  lui        $v0, %hi(D_800C597E)
/* 5EB50 8005DF50 8442597E */  lh         $v0, %lo(D_800C597E)($v0)
/* 5EB54 8005DF54 00401821 */  addu       $v1, $v0, $zero
/* 5EB58 8005DF58 28420008 */  slti       $v0, $v0, 8
/* 5EB5C 8005DF5C 10400012 */  beqz       $v0, .L8005DFA8
/* 5EB60 8005DF60 00A03821 */   addu      $a3, $a1, $zero
/* 5EB64 8005DF64 24620001 */  addiu      $v0, $v1, 1
/* 5EB68 8005DF68 3C01800C */  lui        $at, %hi(D_800C597E)
/* 5EB6C 8005DF6C A422597E */  sh         $v0, %lo(D_800C597E)($at)
/* 5EB70 8005DF70 00021400 */  sll        $v0, $v0, 0x10
/* 5EB74 8005DF74 00021343 */  sra        $v0, $v0, 0xd
/* 5EB78 8005DF78 3C03800F */  lui        $v1, %hi(D_800F37F8)
/* 5EB7C 8005DF7C 246337F8 */  addiu      $v1, $v1, %lo(D_800F37F8)
/* 5EB80 8005DF80 00431021 */  addu       $v0, $v0, $v1
/* 5EB84 8005DF84 AC440000 */  sw         $a0, ($v0)
/* 5EB88 8005DF88 A4470004 */  sh         $a3, 4($v0)
/* 5EB8C 8005DF8C A4460006 */  sh         $a2, 6($v0)
/* 5EB90 8005DF90 00052C00 */  sll        $a1, $a1, 0x10
/* 5EB94 8005DF94 00052C03 */  sra        $a1, $a1, 0x10
/* 5EB98 8005DF98 0C017811 */  jal        func_8005E044
/* 5EB9C 8005DF9C 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 5EBA0 8005DFA0 080177EB */  j          .L8005DFAC
/* 5EBA4 8005DFA4 24020001 */   addiu     $v0, $zero, 1
.L8005DFA8:
/* 5EBA8 8005DFA8 00001021 */  addu       $v0, $zero, $zero
.L8005DFAC:
/* 5EBAC 8005DFAC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 5EBB0 8005DFB0 03E00008 */  jr         $ra
/* 5EBB4 8005DFB4 27BD0020 */   addiu     $sp, $sp, 0x20
