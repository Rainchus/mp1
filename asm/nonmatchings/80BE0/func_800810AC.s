	.set noat
	.set noreorder

glabel func_800810AC
/* 81CAC 800810AC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 81CB0 800810B0 00803025 */  or         $a2, $a0, $zero
/* 81CB4 800810B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 81CB8 800810B8 3C04800F */  lui        $a0, %hi(D_800E8760)
/* 81CBC 800810BC 24848760 */  addiu      $a0, $a0, %lo(D_800E8760)
/* 81CC0 800810C0 0C022278 */  jal        func_800889E0
/* 81CC4 800810C4 27A5001C */   addiu     $a1, $sp, 0x1c
/* 81CC8 800810C8 14400008 */  bnez       $v0, .L800810EC
/* 81CCC 800810CC 8FAE001C */   lw        $t6, 0x1c($sp)
/* 81CD0 800810D0 3C01000A */  lui        $at, 0xa
/* 81CD4 800810D4 55C10006 */  bnel       $t6, $at, .L800810F0
/* 81CD8 800810D8 00001025 */   or        $v0, $zero, $zero
/* 81CDC 800810DC 0C020494 */  jal        func_80081250
/* 81CE0 800810E0 00000000 */   nop
/* 81CE4 800810E4 10000002 */  b          .L800810F0
/* 81CE8 800810E8 240200FF */   addiu     $v0, $zero, 0xff
.L800810EC:
/* 81CEC 800810EC 00001025 */  or         $v0, $zero, $zero
.L800810F0:
/* 81CF0 800810F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 81CF4 800810F4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 81CF8 800810F8 03E00008 */  jr         $ra
/* 81CFC 800810FC 00000000 */   nop
