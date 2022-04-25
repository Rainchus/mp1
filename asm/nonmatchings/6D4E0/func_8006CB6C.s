	.set noat
	.set noreorder

glabel func_8006CB6C
/* 6D76C 8006CB6C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6D770 8006CB70 AFBF0018 */  sw         $ra, 0x18($sp)
/* 6D774 8006CB74 A7A00010 */  sh         $zero, 0x10($sp)
.L8006CB78:
/* 6D778 8006CB78 0C01B306 */  jal        func_8006CC18
/* 6D77C 8006CB7C 27A40010 */   addiu     $a0, $sp, 0x10
/* 6D780 8006CB80 97A20010 */  lhu        $v0, 0x10($sp)
/* 6D784 8006CB84 24420001 */  addiu      $v0, $v0, 1
/* 6D788 8006CB88 A7A20010 */  sh         $v0, 0x10($sp)
/* 6D78C 8006CB8C 00021400 */  sll        $v0, $v0, 0x10
/* 6D790 8006CB90 00021403 */  sra        $v0, $v0, 0x10
/* 6D794 8006CB94 28420004 */  slti       $v0, $v0, 4
/* 6D798 8006CB98 1440FFF7 */  bnez       $v0, .L8006CB78
/* 6D79C 8006CB9C 00000000 */   nop
/* 6D7A0 8006CBA0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 6D7A4 8006CBA4 00001021 */  addu       $v0, $zero, $zero
/* 6D7A8 8006CBA8 03E00008 */  jr         $ra
/* 6D7AC 8006CBAC 27BD0020 */   addiu     $sp, $sp, 0x20
