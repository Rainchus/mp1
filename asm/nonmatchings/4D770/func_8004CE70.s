	.set noat
	.set noreorder

glabel func_8004CE70
/* 4DA70 8004CE70 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4DA74 8004CE74 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4DA78 8004CE78 AFB10014 */  sw         $s1, 0x14($sp)
/* 4DA7C 8004CE7C AFB00010 */  sw         $s0, 0x10($sp)
/* 4DA80 8004CE80 00A08821 */  addu       $s1, $a1, $zero
/* 4DA84 8004CE84 00042400 */  sll        $a0, $a0, 0x10
/* 4DA88 8004CE88 0C014AA3 */  jal        func_80052A8C
/* 4DA8C 8004CE8C 00042403 */   sra       $a0, $a0, 0x10
/* 4DA90 8004CE90 00408021 */  addu       $s0, $v0, $zero
/* 4DA94 8004CE94 00118C00 */  sll        $s1, $s1, 0x10
/* 4DA98 8004CE98 0C014AA3 */  jal        func_80052A8C
/* 4DA9C 8004CE9C 00112403 */   sra       $a0, $s1, 0x10
/* 4DAA0 8004CEA0 9604000E */  lhu        $a0, 0xe($s0)
/* 4DAA4 8004CEA4 9443000E */  lhu        $v1, 0xe($v0)
/* 4DAA8 8004CEA8 A603000E */  sh         $v1, 0xe($s0)
/* 4DAAC 8004CEAC A444000E */  sh         $a0, 0xe($v0)
/* 4DAB0 8004CEB0 96040010 */  lhu        $a0, 0x10($s0)
/* 4DAB4 8004CEB4 94430010 */  lhu        $v1, 0x10($v0)
/* 4DAB8 8004CEB8 A6030010 */  sh         $v1, 0x10($s0)
/* 4DABC 8004CEBC A4440010 */  sh         $a0, 0x10($v0)
/* 4DAC0 8004CEC0 96040012 */  lhu        $a0, 0x12($s0)
/* 4DAC4 8004CEC4 94430012 */  lhu        $v1, 0x12($v0)
/* 4DAC8 8004CEC8 A6030012 */  sh         $v1, 0x12($s0)
/* 4DACC 8004CECC A4440012 */  sh         $a0, 0x12($v0)
/* 4DAD0 8004CED0 96040014 */  lhu        $a0, 0x14($s0)
/* 4DAD4 8004CED4 94430014 */  lhu        $v1, 0x14($v0)
/* 4DAD8 8004CED8 A6030014 */  sh         $v1, 0x14($s0)
/* 4DADC 8004CEDC A4440014 */  sh         $a0, 0x14($v0)
/* 4DAE0 8004CEE0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4DAE4 8004CEE4 8FB10014 */  lw         $s1, 0x14($sp)
/* 4DAE8 8004CEE8 8FB00010 */  lw         $s0, 0x10($sp)
/* 4DAEC 8004CEEC 03E00008 */  jr         $ra
/* 4DAF0 8004CEF0 27BD0020 */   addiu     $sp, $sp, 0x20
