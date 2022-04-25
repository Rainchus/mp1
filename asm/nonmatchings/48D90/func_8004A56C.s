	.set noat
	.set noreorder

glabel func_8004A56C
/* 4B16C 8004A56C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4B170 8004A570 AFBF0018 */  sw         $ra, 0x18($sp)
.L8004A574:
/* 4B174 8004A574 3C04800D */  lui        $a0, %hi(D_800D7FD8)
/* 4B178 8004A578 24847FD8 */  addiu      $a0, $a0, %lo(D_800D7FD8)
/* 4B17C 8004A57C 27A50010 */  addiu      $a1, $sp, 0x10
/* 4B180 8004A580 0C022278 */  jal        func_800889E0
/* 4B184 8004A584 00003021 */   addu      $a2, $zero, $zero
/* 4B188 8004A588 14400009 */  bnez       $v0, .L8004A5B0
/* 4B18C 8004A58C 00000000 */   nop
/* 4B190 8004A590 8FA20010 */  lw         $v0, 0x10($sp)
/* 4B194 8004A594 1040FFF7 */  beqz       $v0, .L8004A574
/* 4B198 8004A598 00000000 */   nop
/* 4B19C 8004A59C 0C00EDE6 */  jal        func_8003B798
/* 4B1A0 8004A5A0 8C440008 */   lw        $a0, 8($v0)
/* 4B1A4 8004A5A4 8FA20010 */  lw         $v0, 0x10($sp)
/* 4B1A8 8004A5A8 0801295D */  j          .L8004A574
/* 4B1AC 8004A5AC AC400008 */   sw        $zero, 8($v0)
.L8004A5B0:
/* 4B1B0 8004A5B0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4B1B4 8004A5B4 03E00008 */  jr         $ra
/* 4B1B8 8004A5B8 27BD0020 */   addiu     $sp, $sp, 0x20
