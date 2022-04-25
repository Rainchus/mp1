	.set noat
	.set noreorder

glabel func_80023684
/* 24284 80023684 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 24288 80023688 AFBF0010 */  sw         $ra, 0x10($sp)
/* 2428C 8002368C 00052C00 */  sll        $a1, $a1, 0x10
/* 24290 80023690 0C008DA9 */  jal        func_800236A4
/* 24294 80023694 00052C03 */   sra       $a1, $a1, 0x10
/* 24298 80023698 8FBF0010 */  lw         $ra, 0x10($sp)
/* 2429C 8002369C 03E00008 */  jr         $ra
/* 242A0 800236A0 27BD0018 */   addiu     $sp, $sp, 0x18
