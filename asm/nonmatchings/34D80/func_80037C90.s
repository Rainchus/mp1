	.set noat
	.set noreorder

glabel func_80037C90
/* 38890 80037C90 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 38894 80037C94 AFBF0010 */  sw         $ra, 0x10($sp)
/* 38898 80037C98 3C04800C */  lui        $a0, %hi(D_800C41A4)
/* 3889C 80037C9C 0C00537D */  jal        func_80014DF4
/* 388A0 80037CA0 848441A4 */   lh        $a0, %lo(D_800C41A4)($a0)
/* 388A4 80037CA4 3C01800C */  lui        $at, %hi(D_800C41A4)
/* 388A8 80037CA8 A42041A4 */  sh         $zero, %lo(D_800C41A4)($at)
/* 388AC 80037CAC 3C04800C */  lui        $a0, %hi(D_800C41A2)
/* 388B0 80037CB0 848441A2 */  lh         $a0, %lo(D_800C41A2)($a0)
/* 388B4 80037CB4 10800005 */  beqz       $a0, .L80037CCC
/* 388B8 80037CB8 00000000 */   nop
/* 388BC 80037CBC 0C00537D */  jal        func_80014DF4
/* 388C0 80037CC0 00000000 */   nop
/* 388C4 80037CC4 3C01800C */  lui        $at, %hi(D_800C41A2)
/* 388C8 80037CC8 A42041A2 */  sh         $zero, %lo(D_800C41A2)($at)
.L80037CCC:
/* 388CC 80037CCC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 388D0 80037CD0 03E00008 */  jr         $ra
/* 388D4 80037CD4 27BD0018 */   addiu     $sp, $sp, 0x18
/* 388D8 80037CD8 00000000 */  nop
/* 388DC 80037CDC 00000000 */  nop
