	.set noat
	.set noreorder

glabel func_8004D7D8
/* 4E3D8 8004D7D8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4E3DC 8004D7DC AFBF001C */  sw         $ra, 0x1c($sp)
/* 4E3E0 8004D7E0 AFB20018 */  sw         $s2, 0x18($sp)
/* 4E3E4 8004D7E4 AFB10014 */  sw         $s1, 0x14($sp)
/* 4E3E8 8004D7E8 AFB00010 */  sw         $s0, 0x10($sp)
/* 4E3EC 8004D7EC 00A08021 */  addu       $s0, $a1, $zero
/* 4E3F0 8004D7F0 02009021 */  addu       $s2, $s0, $zero
/* 4E3F4 8004D7F4 00C08821 */  addu       $s1, $a2, $zero
/* 4E3F8 8004D7F8 00042400 */  sll        $a0, $a0, 0x10
/* 4E3FC 8004D7FC 0C014AA3 */  jal        func_80052A8C
/* 4E400 8004D800 00042403 */   sra       $a0, $a0, 0x10
/* 4E404 8004D804 00108400 */  sll        $s0, $s0, 0x10
/* 4E408 8004D808 06000003 */  bltz       $s0, .L8004D818
/* 4E40C 8004D80C 00401821 */   addu      $v1, $v0, $zero
/* 4E410 8004D810 A472000E */  sh         $s2, 0xe($v1)
/* 4E414 8004D814 A4720012 */  sh         $s2, 0x12($v1)
.L8004D818:
/* 4E418 8004D818 00111400 */  sll        $v0, $s1, 0x10
/* 4E41C 8004D81C 04400003 */  bltz       $v0, .L8004D82C
/* 4E420 8004D820 26220001 */   addiu     $v0, $s1, 1
/* 4E424 8004D824 A4710010 */  sh         $s1, 0x10($v1)
/* 4E428 8004D828 A4620014 */  sh         $v0, 0x14($v1)
.L8004D82C:
/* 4E42C 8004D82C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 4E430 8004D830 8FB20018 */  lw         $s2, 0x18($sp)
/* 4E434 8004D834 8FB10014 */  lw         $s1, 0x14($sp)
/* 4E438 8004D838 8FB00010 */  lw         $s0, 0x10($sp)
/* 4E43C 8004D83C 03E00008 */  jr         $ra
/* 4E440 8004D840 27BD0020 */   addiu     $sp, $sp, 0x20
