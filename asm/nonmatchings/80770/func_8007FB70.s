	.set noat
	.set noreorder

glabel func_8007FB70
/* 80770 8007FB70 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 80774 8007FB74 00A4082A */  slt        $at, $a1, $a0
/* 80778 8007FB78 AFBF001C */  sw         $ra, 0x1c($sp)
/* 8077C 8007FB7C AFA40030 */  sw         $a0, 0x30($sp)
/* 80780 8007FB80 AFA50034 */  sw         $a1, 0x34($sp)
/* 80784 8007FB84 AFA60038 */  sw         $a2, 0x38($sp)
/* 80788 8007FB88 10200003 */  beqz       $at, .L8007FB98
/* 8078C 8007FB8C AFA7003C */   sw        $a3, 0x3c($sp)
/* 80790 8007FB90 10000002 */  b          .L8007FB9C
/* 80794 8007FB94 00802825 */   or        $a1, $a0, $zero
.L8007FB98:
/* 80798 8007FB98 8FA50034 */  lw         $a1, 0x34($sp)
.L8007FB9C:
/* 8079C 8007FB9C 2418FFFF */  addiu      $t8, $zero, -1
/* 807A0 8007FBA0 AFB80028 */  sw         $t8, 0x28($sp)
/* 807A4 8007FBA4 00002025 */  or         $a0, $zero, $zero
/* 807A8 8007FBA8 0C0221FC */  jal        func_800887F0
/* 807AC 8007FBAC AFA50020 */   sw        $a1, 0x20($sp)
/* 807B0 8007FBB0 8FA50020 */  lw         $a1, 0x20($sp)
/* 807B4 8007FBB4 0045082A */  slt        $at, $v0, $a1
/* 807B8 8007FBB8 10200004 */  beqz       $at, .L8007FBCC
/* 807BC 8007FBBC 00000000 */   nop
/* 807C0 8007FBC0 AFA20028 */  sw         $v0, 0x28($sp)
/* 807C4 8007FBC4 0C022310 */  jal        func_80088C40
/* 807C8 8007FBC8 00002025 */   or        $a0, $zero, $zero
.L8007FBCC:
/* 807CC 8007FBCC 0C024D48 */  jal        func_80093520
/* 807D0 8007FBD0 00000000 */   nop
/* 807D4 8007FBD4 24190001 */  addiu      $t9, $zero, 1
/* 807D8 8007FBD8 3C01800C */  lui        $at, %hi(D_800C63C4)
/* 807DC 8007FBDC 3C04800F */  lui        $a0, %hi(D_800E8748)
/* 807E0 8007FBE0 AFA2002C */  sw         $v0, 0x2c($sp)
/* 807E4 8007FBE4 AC3963C4 */  sw         $t9, %lo(D_800C63C4)($at)
/* 807E8 8007FBE8 24848748 */  addiu      $a0, $a0, %lo(D_800E8748)
/* 807EC 8007FBEC 8FA50038 */  lw         $a1, 0x38($sp)
/* 807F0 8007FBF0 0C022188 */  jal        func_80088620
/* 807F4 8007FBF4 8FA6003C */   lw        $a2, 0x3c($sp)
/* 807F8 8007FBF8 3C04800F */  lui        $a0, %hi(D_800E8778)
/* 807FC 8007FBFC 3C05800F */  lui        $a1, %hi(D_800E87C4)
/* 80800 8007FC00 24A587C4 */  addiu      $a1, $a1, %lo(D_800E87C4)
/* 80804 8007FC04 24848778 */  addiu      $a0, $a0, %lo(D_800E8778)
/* 80808 8007FC08 0C022188 */  jal        func_80088620
/* 8080C 8007FC0C 24060001 */   addiu     $a2, $zero, 1
/* 80810 8007FC10 3C04800F */  lui        $a0, %hi(D_800E8760)
/* 80814 8007FC14 3C05800F */  lui        $a1, %hi(D_800E87C0)
/* 80818 8007FC18 24A587C0 */  addiu      $a1, $a1, %lo(D_800E87C0)
/* 8081C 8007FC1C 24848760 */  addiu      $a0, $a0, %lo(D_800E8760)
/* 80820 8007FC20 0C022188 */  jal        func_80088620
/* 80824 8007FC24 24060001 */   addiu     $a2, $zero, 1
/* 80828 8007FC28 3C04800F */  lui        $a0, %hi(D_800E8790)
/* 8082C 8007FC2C 3C05800F */  lui        $a1, %hi(D_800E87C8)
/* 80830 8007FC30 24A587C8 */  addiu      $a1, $a1, %lo(D_800E87C8)
/* 80834 8007FC34 24848790 */  addiu      $a0, $a0, %lo(D_800E8790)
/* 80838 8007FC38 0C022188 */  jal        func_80088620
/* 8083C 8007FC3C 24060002 */   addiu     $a2, $zero, 2
/* 80840 8007FC40 3C04800F */  lui        $a0, %hi(D_800E87A8)
/* 80844 8007FC44 3C05800F */  lui        $a1, %hi(D_800E87D0)
/* 80848 8007FC48 24A587D0 */  addiu      $a1, $a1, %lo(D_800E87D0)
/* 8084C 8007FC4C 248487A8 */  addiu      $a0, $a0, %lo(D_800E87A8)
/* 80850 8007FC50 0C022188 */  jal        func_80088620
/* 80854 8007FC54 24060001 */   addiu     $a2, $zero, 1
/* 80858 8007FC58 3C04800E */  lui        $a0, %hi(D_800E7A70)
/* 8085C 8007FC5C 3C05800E */  lui        $a1, %hi(D_800E7A88)
/* 80860 8007FC60 24A57A88 */  addiu      $a1, $a1, %lo(D_800E7A88)
/* 80864 8007FC64 24847A70 */  addiu      $a0, $a0, %lo(D_800E7A70)
/* 80868 8007FC68 0C022188 */  jal        func_80088620
/* 8086C 8007FC6C 24060001 */   addiu     $a2, $zero, 1
/* 80870 8007FC70 8FA90030 */  lw         $t1, 0x30($sp)
/* 80874 8007FC74 3C08800F */  lui        $t0, %hi(D_800E8348)
/* 80878 8007FC78 25088348 */  addiu      $t0, $t0, %lo(D_800E8348)
/* 8087C 8007FC7C 3C04800E */  lui        $a0, %hi(D_800E7BE8)
/* 80880 8007FC80 3C068008 */  lui        $a2, %hi(D_80083E60)
/* 80884 8007FC84 24C63E60 */  addiu      $a2, $a2, %lo(D_80083E60)
/* 80888 8007FC88 24847BE8 */  addiu      $a0, $a0, %lo(D_800E7BE8)
/* 8088C 8007FC8C AFA80010 */  sw         $t0, 0x10($sp)
/* 80890 8007FC90 24050001 */  addiu      $a1, $zero, 1
/* 80894 8007FC94 00003825 */  or         $a3, $zero, $zero
/* 80898 8007FC98 0C022194 */  jal        func_80088650
/* 8089C 8007FC9C AFA90014 */   sw        $t1, 0x14($sp)
/* 808A0 8007FCA0 3C04800E */  lui        $a0, %hi(D_800E7BE8)
/* 808A4 8007FCA4 0C022344 */  jal        func_80088D10
/* 808A8 8007FCA8 24847BE8 */   addiu     $a0, $a0, %lo(D_800E7BE8)
/* 808AC 8007FCAC 8FAB0034 */  lw         $t3, 0x34($sp)
/* 808B0 8007FCB0 3C0A800F */  lui        $t2, %hi(D_800E8748)
/* 808B4 8007FCB4 254A8748 */  addiu      $t2, $t2, %lo(D_800E8748)
/* 808B8 8007FCB8 3C04800E */  lui        $a0, %hi(D_800E7D98)
/* 808BC 8007FCBC 3C068008 */  lui        $a2, %hi(D_8007FFE0)
/* 808C0 8007FCC0 24C6FFE0 */  addiu      $a2, $a2, %lo(D_8007FFE0)
/* 808C4 8007FCC4 24847D98 */  addiu      $a0, $a0, %lo(D_800E7D98)
/* 808C8 8007FCC8 AFAA0010 */  sw         $t2, 0x10($sp)
/* 808CC 8007FCCC 24050001 */  addiu      $a1, $zero, 1
/* 808D0 8007FCD0 00003825 */  or         $a3, $zero, $zero
/* 808D4 8007FCD4 0C022194 */  jal        func_80088650
/* 808D8 8007FCD8 AFAB0014 */   sw        $t3, 0x14($sp)
/* 808DC 8007FCDC 3C04800E */  lui        $a0, %hi(D_800E7D98)
/* 808E0 8007FCE0 0C022344 */  jal        func_80088D10
/* 808E4 8007FCE4 24847D98 */   addiu     $a0, $a0, %lo(D_800E7D98)
/* 808E8 8007FCE8 3C05800F */  lui        $a1, %hi(D_800E8760)
/* 808EC 8007FCEC 24A58760 */  addiu      $a1, $a1, %lo(D_800E8760)
/* 808F0 8007FCF0 24040002 */  addiu      $a0, $zero, 2
/* 808F4 8007FCF4 0C024D6C */  jal        func_800935B0
/* 808F8 8007FCF8 3C060003 */   lui       $a2, 3
/* 808FC 8007FCFC 3C04800F */  lui        $a0, %hi(D_800E87A8)
/* 80900 8007FD00 248487A8 */  addiu      $a0, $a0, %lo(D_800E87A8)
/* 80904 8007FD04 00002825 */  or         $a1, $zero, $zero
/* 80908 8007FD08 0C0222C4 */  jal        func_80088B10
/* 8090C 8007FD0C 00003025 */   or        $a2, $zero, $zero
/* 80910 8007FD10 0C024D64 */  jal        func_80093590
/* 80914 8007FD14 8FA4002C */   lw        $a0, 0x2c($sp)
/* 80918 8007FD18 8FAC0028 */  lw         $t4, 0x28($sp)
/* 8091C 8007FD1C 2401FFFF */  addiu      $at, $zero, -1
/* 80920 8007FD20 00002025 */  or         $a0, $zero, $zero
/* 80924 8007FD24 51810004 */  beql       $t4, $at, .L8007FD38
/* 80928 8007FD28 8FBF001C */   lw        $ra, 0x1c($sp)
/* 8092C 8007FD2C 0C022310 */  jal        func_80088C40
/* 80930 8007FD30 01802825 */   or        $a1, $t4, $zero
/* 80934 8007FD34 8FBF001C */  lw         $ra, 0x1c($sp)
.L8007FD38:
/* 80938 8007FD38 27BD0030 */  addiu      $sp, $sp, 0x30
/* 8093C 8007FD3C 03E00008 */  jr         $ra
/* 80940 8007FD40 00000000 */   nop
