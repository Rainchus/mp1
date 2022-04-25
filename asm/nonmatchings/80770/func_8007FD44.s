	.set noat
	.set noreorder

glabel func_8007FD44
/* 80944 8007FD44 3C0E800C */  lui        $t6, %hi(D_800C63C0)
/* 80948 8007FD48 8DCE63C0 */  lw         $t6, %lo(D_800C63C0)($t6)
/* 8094C 8007FD4C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 80950 8007FD50 AFBF0014 */  sw         $ra, 0x14($sp)
/* 80954 8007FD54 11C0000E */  beqz       $t6, .L8007FD90
/* 80958 8007FD58 00803825 */   or        $a3, $a0, $zero
/* 8095C 8007FD5C 90990002 */  lbu        $t9, 2($a0)
/* 80960 8007FD60 240F0002 */  addiu      $t7, $zero, 2
/* 80964 8007FD64 24180025 */  addiu      $t8, $zero, 0x25
/* 80968 8007FD68 33280080 */  andi       $t0, $t9, 0x80
/* 8096C 8007FD6C A08F0004 */  sb         $t7, 4($a0)
/* 80970 8007FD70 11000048 */  beqz       $t0, .L8007FE94
/* 80974 8007FD74 A0980005 */   sb        $t8, 5($a0)
/* 80978 8007FD78 8C840008 */  lw         $a0, 8($a0)
/* 8097C 8007FD7C 24050025 */  addiu      $a1, $zero, 0x25
/* 80980 8007FD80 0C0222C4 */  jal        func_80088B10
/* 80984 8007FD84 24060001 */   addiu     $a2, $zero, 1
/* 80988 8007FD88 10000043 */  b          .L8007FE98
/* 8098C 8007FD8C 8FBF0014 */   lw        $ra, 0x14($sp)
.L8007FD90:
/* 80990 8007FD90 3C04800F */  lui        $a0, %hi(D_800E87A8)
/* 80994 8007FD94 248487A8 */  addiu      $a0, $a0, %lo(D_800E87A8)
/* 80998 8007FD98 00002825 */  or         $a1, $zero, $zero
/* 8099C 8007FD9C 24060001 */  addiu      $a2, $zero, 1
/* 809A0 8007FDA0 0C022278 */  jal        func_800889E0
/* 809A4 8007FDA4 AFA70018 */   sw        $a3, 0x18($sp)
/* 809A8 8007FDA8 8FA70018 */  lw         $a3, 0x18($sp)
/* 809AC 8007FDAC 24090008 */  addiu      $t1, $zero, 8
/* 809B0 8007FDB0 24010001 */  addiu      $at, $zero, 1
/* 809B4 8007FDB4 90E40000 */  lbu        $a0, ($a3)
/* 809B8 8007FDB8 240A00FF */  addiu      $t2, $zero, 0xff
/* 809BC 8007FDBC A0E90004 */  sb         $t1, 4($a3)
/* 809C0 8007FDC0 10810009 */  beq        $a0, $at, .L8007FDE8
/* 809C4 8007FDC4 A0E00005 */   sb        $zero, 5($a3)
/* 809C8 8007FDC8 24010005 */  addiu      $at, $zero, 5
/* 809CC 8007FDCC 10810019 */  beq        $a0, $at, .L8007FE34
/* 809D0 8007FDD0 00E02825 */   or        $a1, $a3, $zero
/* 809D4 8007FDD4 24010006 */  addiu      $at, $zero, 6
/* 809D8 8007FDD8 10810016 */  beq        $a0, $at, .L8007FE34
/* 809DC 8007FDDC 248FFFFF */   addiu     $t7, $a0, -1
/* 809E0 8007FDE0 10000016 */  b          .L8007FE3C
/* 809E4 8007FDE4 2DE1000E */   sltiu     $at, $t7, 0xe
.L8007FDE8:
/* 809E8 8007FDE8 3C0B800F */  lui        $t3, %hi(D_800E87E5)
/* 809EC 8007FDEC 256B87E5 */  addiu      $t3, $t3, %lo(D_800E87E5)
/* 809F0 8007FDF0 A16A0000 */  sb         $t2, ($t3)
/* 809F4 8007FDF4 0C020534 */  jal        func_800814D0
/* 809F8 8007FDF8 AFA70018 */   sw        $a3, 0x18($sp)
/* 809FC 8007FDFC 8FA70018 */  lw         $a3, 0x18($sp)
/* 80A00 8007FE00 3C0C800F */  lui        $t4, %hi(D_800E87E5)
/* 80A04 8007FE04 258C87E5 */  addiu      $t4, $t4, %lo(D_800E87E5)
/* 80A08 8007FE08 A1800000 */  sb         $zero, ($t4)
/* 80A0C 8007FE0C 90ED0002 */  lbu        $t5, 2($a3)
/* 80A10 8007FE10 00002825 */  or         $a1, $zero, $zero
/* 80A14 8007FE14 24060001 */  addiu      $a2, $zero, 1
/* 80A18 8007FE18 31AE0080 */  andi       $t6, $t5, 0x80
/* 80A1C 8007FE1C 11C00018 */  beqz       $t6, .L8007FE80
/* 80A20 8007FE20 A0E00004 */   sb        $zero, 4($a3)
/* 80A24 8007FE24 0C0222C4 */  jal        func_80088B10
/* 80A28 8007FE28 8CE40008 */   lw        $a0, 8($a3)
/* 80A2C 8007FE2C 10000014 */  b          .L8007FE80
/* 80A30 8007FE30 00000000 */   nop
.L8007FE34:
/* 80A34 8007FE34 10000007 */  b          .L8007FE54
/* 80A38 8007FE38 ACE00018 */   sw        $zero, 0x18($a3)
.L8007FE3C:
/* 80A3C 8007FE3C 14200005 */  bnez       $at, .L8007FE54
/* 80A40 8007FE40 2418001F */   addiu     $t8, $zero, 0x1f
/* 80A44 8007FE44 24190002 */  addiu      $t9, $zero, 2
/* 80A48 8007FE48 A0F80005 */  sb         $t8, 5($a3)
/* 80A4C 8007FE4C 1000000C */  b          .L8007FE80
/* 80A50 8007FE50 A0F90004 */   sb        $t9, 4($a3)
.L8007FE54:
/* 80A54 8007FE54 3C04800F */  lui        $a0, %hi(D_800E8748)
/* 80A58 8007FE58 24848748 */  addiu      $a0, $a0, %lo(D_800E8748)
/* 80A5C 8007FE5C 00003025 */  or         $a2, $zero, $zero
/* 80A60 8007FE60 0C0222C4 */  jal        func_80088B10
/* 80A64 8007FE64 AFA70018 */   sw        $a3, 0x18($sp)
/* 80A68 8007FE68 10400005 */  beqz       $v0, .L8007FE80
/* 80A6C 8007FE6C 8FA70018 */   lw        $a3, 0x18($sp)
/* 80A70 8007FE70 24080023 */  addiu      $t0, $zero, 0x23
/* 80A74 8007FE74 24090002 */  addiu      $t1, $zero, 2
/* 80A78 8007FE78 A0E80005 */  sb         $t0, 5($a3)
/* 80A7C 8007FE7C A0E90004 */  sb         $t1, 4($a3)
.L8007FE80:
/* 80A80 8007FE80 3C04800F */  lui        $a0, %hi(D_800E87A8)
/* 80A84 8007FE84 248487A8 */  addiu      $a0, $a0, %lo(D_800E87A8)
/* 80A88 8007FE88 00002825 */  or         $a1, $zero, $zero
/* 80A8C 8007FE8C 0C0222C4 */  jal        func_80088B10
/* 80A90 8007FE90 24060001 */   addiu     $a2, $zero, 1
.L8007FE94:
/* 80A94 8007FE94 8FBF0014 */  lw         $ra, 0x14($sp)
.L8007FE98:
/* 80A98 8007FE98 27BD0018 */  addiu      $sp, $sp, 0x18
/* 80A9C 8007FE9C 03E00008 */  jr         $ra
/* 80AA0 8007FEA0 00000000 */   nop
