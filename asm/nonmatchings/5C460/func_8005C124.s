	.set noat
	.set noreorder

glabel func_8005C124
/* 5CD24 8005C124 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5CD28 8005C128 AFBF001C */  sw         $ra, 0x1c($sp)
/* 5CD2C 8005C12C AFB20018 */  sw         $s2, 0x18($sp)
/* 5CD30 8005C130 AFB10014 */  sw         $s1, 0x14($sp)
/* 5CD34 8005C134 AFB00010 */  sw         $s0, 0x10($sp)
/* 5CD38 8005C138 00008821 */  addu       $s1, $zero, $zero
/* 5CD3C 8005C13C 3C12800E */  lui        $s2, %hi(D_800D8930)
/* 5CD40 8005C140 26528930 */  addiu      $s2, $s2, %lo(D_800D8930)
/* 5CD44 8005C144 00111080 */  sll        $v0, $s1, 2
.L8005C148:
/* 5CD48 8005C148 00528021 */  addu       $s0, $v0, $s2
/* 5CD4C 8005C14C 8E040000 */  lw         $a0, ($s0)
/* 5CD50 8005C150 10800004 */  beqz       $a0, .L8005C164
/* 5CD54 8005C154 00000000 */   nop
/* 5CD58 8005C158 0C00EE29 */  jal        func_8003B8A4
/* 5CD5C 8005C15C 00000000 */   nop
/* 5CD60 8005C160 AE000000 */  sw         $zero, ($s0)
.L8005C164:
/* 5CD64 8005C164 3C04800E */  lui        $a0, %hi(D_800D8940)
/* 5CD68 8005C168 8C848940 */  lw         $a0, %lo(D_800D8940)($a0)
/* 5CD6C 8005C16C 10800005 */  beqz       $a0, .L8005C184
/* 5CD70 8005C170 26310001 */   addiu     $s1, $s1, 1
/* 5CD74 8005C174 0C017764 */  jal        func_8005DD90
/* 5CD78 8005C178 00000000 */   nop
/* 5CD7C 8005C17C 3C01800E */  lui        $at, %hi(D_800D8940)
/* 5CD80 8005C180 AC208940 */  sw         $zero, %lo(D_800D8940)($at)
.L8005C184:
/* 5CD84 8005C184 2A220004 */  slti       $v0, $s1, 4
/* 5CD88 8005C188 1440FFEF */  bnez       $v0, .L8005C148
/* 5CD8C 8005C18C 00111080 */   sll       $v0, $s1, 2
/* 5CD90 8005C190 8FBF001C */  lw         $ra, 0x1c($sp)
/* 5CD94 8005C194 8FB20018 */  lw         $s2, 0x18($sp)
/* 5CD98 8005C198 8FB10014 */  lw         $s1, 0x14($sp)
/* 5CD9C 8005C19C 8FB00010 */  lw         $s0, 0x10($sp)
/* 5CDA0 8005C1A0 03E00008 */  jr         $ra
/* 5CDA4 8005C1A4 27BD0020 */   addiu     $sp, $sp, 0x20
/* 5CDA8 8005C1A8 00000000 */  nop
/* 5CDAC 8005C1AC 00000000 */  nop
