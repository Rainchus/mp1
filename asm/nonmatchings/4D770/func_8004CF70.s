	.set noat
	.set noreorder

glabel func_8004CF70
/* 4DB70 8004CF70 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4DB74 8004CF74 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4DB78 8004CF78 AFB10014 */  sw         $s1, 0x14($sp)
/* 4DB7C 8004CF7C AFB00010 */  sw         $s0, 0x10($sp)
/* 4DB80 8004CF80 00008821 */  addu       $s1, $zero, $zero
/* 4DB84 8004CF84 00008021 */  addu       $s0, $zero, $zero
.L8004CF88:
/* 4DB88 8004CF88 0C014AA3 */  jal        func_80052A8C
/* 4DB8C 8004CF8C 02002021 */   addu      $a0, $s0, $zero
/* 4DB90 8004CF90 8442000C */  lh         $v0, 0xc($v0)
/* 4DB94 8004CF94 02228821 */  addu       $s1, $s1, $v0
/* 4DB98 8004CF98 26100001 */  addiu      $s0, $s0, 1
/* 4DB9C 8004CF9C 2A020004 */  slti       $v0, $s0, 4
/* 4DBA0 8004CFA0 1440FFF9 */  bnez       $v0, .L8004CF88
/* 4DBA4 8004CFA4 00111400 */   sll       $v0, $s1, 0x10
/* 4DBA8 8004CFA8 00021403 */  sra        $v0, $v0, 0x10
/* 4DBAC 8004CFAC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4DBB0 8004CFB0 8FB10014 */  lw         $s1, 0x14($sp)
/* 4DBB4 8004CFB4 8FB00010 */  lw         $s0, 0x10($sp)
/* 4DBB8 8004CFB8 03E00008 */  jr         $ra
/* 4DBBC 8004CFBC 27BD0020 */   addiu     $sp, $sp, 0x20
