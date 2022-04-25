	.set noat
	.set noreorder

glabel func_8003F07C
/* 3FC7C 8003F07C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3FC80 8003F080 AFBF0024 */  sw         $ra, 0x24($sp)
/* 3FC84 8003F084 AFB20020 */  sw         $s2, 0x20($sp)
/* 3FC88 8003F088 AFB1001C */  sw         $s1, 0x1c($sp)
/* 3FC8C 8003F08C AFB00018 */  sw         $s0, 0x18($sp)
/* 3FC90 8003F090 00808821 */  addu       $s1, $a0, $zero
/* 3FC94 8003F094 00A08021 */  addu       $s0, $a1, $zero
/* 3FC98 8003F098 3C04800F */  lui        $a0, %hi(D_800F5038)
/* 3FC9C 8003F09C 24845038 */  addiu      $a0, $a0, %lo(D_800F5038)
/* 3FCA0 8003F0A0 3C05800D */  lui        $a1, %hi(D_800CAB58)
/* 3FCA4 8003F0A4 24A5AB58 */  addiu      $a1, $a1, %lo(D_800CAB58)
/* 3FCA8 8003F0A8 3C06800F */  lui        $a2, %hi(D_800F65B8)
/* 3FCAC 8003F0AC 84C665B8 */  lh         $a2, %lo(D_800F65B8)($a2)
/* 3FCB0 8003F0B0 0C023124 */  jal        func_8008C490
/* 3FCB4 8003F0B4 001188C0 */   sll       $s1, $s1, 3
/* 3FCB8 8003F0B8 3231FFF8 */  andi       $s1, $s1, 0xfff8
/* 3FCBC 8003F0BC 00108400 */  sll        $s0, $s0, 0x10
/* 3FCC0 8003F0C0 00108403 */  sra        $s0, $s0, 0x10
/* 3FCC4 8003F0C4 001028C0 */  sll        $a1, $s0, 3
/* 3FCC8 8003F0C8 24120009 */  addiu      $s2, $zero, 9
/* 3FCCC 8003F0CC AFB20010 */  sw         $s2, 0x10($sp)
/* 3FCD0 8003F0D0 02202021 */  addu       $a0, $s1, $zero
/* 3FCD4 8003F0D4 30A5FFFF */  andi       $a1, $a1, 0xffff
/* 3FCD8 8003F0D8 3C06800F */  lui        $a2, %hi(D_800F5038)
/* 3FCDC 8003F0DC 24C65038 */  addiu      $a2, $a2, %lo(D_800F5038)
/* 3FCE0 8003F0E0 0C00FB2C */  jal        func_8003ECB0
/* 3FCE4 8003F0E4 2407000F */   addiu     $a3, $zero, 0xf
/* 3FCE8 8003F0E8 3C04800F */  lui        $a0, %hi(D_800F5038)
/* 3FCEC 8003F0EC 24845038 */  addiu      $a0, $a0, %lo(D_800F5038)
/* 3FCF0 8003F0F0 3C05800D */  lui        $a1, %hi(D_800CAB64)
/* 3FCF4 8003F0F4 24A5AB64 */  addiu      $a1, $a1, %lo(D_800CAB64)
/* 3FCF8 8003F0F8 3C06800F */  lui        $a2, %hi(D_800F37A8)
/* 3FCFC 8003F0FC 0C023124 */  jal        func_8008C490
/* 3FD00 8003F100 84C637A8 */   lh        $a2, %lo(D_800F37A8)($a2)
/* 3FD04 8003F104 26050001 */  addiu      $a1, $s0, 1
/* 3FD08 8003F108 000528C0 */  sll        $a1, $a1, 3
/* 3FD0C 8003F10C AFB20010 */  sw         $s2, 0x10($sp)
/* 3FD10 8003F110 02202021 */  addu       $a0, $s1, $zero
/* 3FD14 8003F114 30A5FFFF */  andi       $a1, $a1, 0xffff
/* 3FD18 8003F118 3C06800F */  lui        $a2, %hi(D_800F5038)
/* 3FD1C 8003F11C 24C65038 */  addiu      $a2, $a2, %lo(D_800F5038)
/* 3FD20 8003F120 0C00FB2C */  jal        func_8003ECB0
/* 3FD24 8003F124 2407000F */   addiu     $a3, $zero, 0xf
/* 3FD28 8003F128 3C04800F */  lui        $a0, %hi(D_800F5038)
/* 3FD2C 8003F12C 24845038 */  addiu      $a0, $a0, %lo(D_800F5038)
/* 3FD30 8003F130 3C05800D */  lui        $a1, %hi(D_800CAB70)
/* 3FD34 8003F134 24A5AB70 */  addiu      $a1, $a1, %lo(D_800CAB70)
/* 3FD38 8003F138 3C06800F */  lui        $a2, %hi(D_800EE986)
/* 3FD3C 8003F13C 0C023124 */  jal        func_8008C490
/* 3FD40 8003F140 84C6E986 */   lh        $a2, %lo(D_800EE986)($a2)
/* 3FD44 8003F144 26050002 */  addiu      $a1, $s0, 2
/* 3FD48 8003F148 000528C0 */  sll        $a1, $a1, 3
/* 3FD4C 8003F14C AFB20010 */  sw         $s2, 0x10($sp)
/* 3FD50 8003F150 02202021 */  addu       $a0, $s1, $zero
/* 3FD54 8003F154 30A5FFFF */  andi       $a1, $a1, 0xffff
/* 3FD58 8003F158 3C06800F */  lui        $a2, %hi(D_800F5038)
/* 3FD5C 8003F15C 24C65038 */  addiu      $a2, $a2, %lo(D_800F5038)
/* 3FD60 8003F160 0C00FB2C */  jal        func_8003ECB0
/* 3FD64 8003F164 2407000F */   addiu     $a3, $zero, 0xf
/* 3FD68 8003F168 3C04800F */  lui        $a0, %hi(D_800F5038)
/* 3FD6C 8003F16C 24845038 */  addiu      $a0, $a0, %lo(D_800F5038)
/* 3FD70 8003F170 3C05800D */  lui        $a1, %hi(D_800CAB7C)
/* 3FD74 8003F174 24A5AB7C */  addiu      $a1, $a1, %lo(D_800CAB7C)
/* 3FD78 8003F178 3C06800F */  lui        $a2, %hi(D_800F64C6)
/* 3FD7C 8003F17C 84C664C6 */  lh         $a2, %lo(D_800F64C6)($a2)
/* 3FD80 8003F180 0C023124 */  jal        func_8008C490
/* 3FD84 8003F184 26100003 */   addiu     $s0, $s0, 3
/* 3FD88 8003F188 001080C0 */  sll        $s0, $s0, 3
/* 3FD8C 8003F18C AFB20010 */  sw         $s2, 0x10($sp)
/* 3FD90 8003F190 02202021 */  addu       $a0, $s1, $zero
/* 3FD94 8003F194 3205FFFF */  andi       $a1, $s0, 0xffff
/* 3FD98 8003F198 3C06800F */  lui        $a2, %hi(D_800F5038)
/* 3FD9C 8003F19C 24C65038 */  addiu      $a2, $a2, %lo(D_800F5038)
/* 3FDA0 8003F1A0 0C00FB2C */  jal        func_8003ECB0
/* 3FDA4 8003F1A4 2407000F */   addiu     $a3, $zero, 0xf
/* 3FDA8 8003F1A8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 3FDAC 8003F1AC 8FB20020 */  lw         $s2, 0x20($sp)
/* 3FDB0 8003F1B0 8FB1001C */  lw         $s1, 0x1c($sp)
/* 3FDB4 8003F1B4 8FB00018 */  lw         $s0, 0x18($sp)
/* 3FDB8 8003F1B8 03E00008 */  jr         $ra
/* 3FDBC 8003F1BC 27BD0028 */   addiu     $sp, $sp, 0x28
