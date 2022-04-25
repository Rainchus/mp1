	.set noat
	.set noreorder

glabel func_80025F60
/* 26B60 80025F60 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 26B64 80025F64 AFBF0018 */  sw         $ra, 0x18($sp)
/* 26B68 80025F68 AFB10014 */  sw         $s1, 0x14($sp)
/* 26B6C 80025F6C AFB00010 */  sw         $s0, 0x10($sp)
/* 26B70 80025F70 00A08821 */  addu       $s1, $a1, $zero
/* 26B74 80025F74 00048400 */  sll        $s0, $a0, 0x10
/* 26B78 80025F78 00108403 */  sra        $s0, $s0, 0x10
/* 26B7C 80025F7C 02002021 */  addu       $a0, $s0, $zero
/* 26B80 80025F80 24051C00 */  addiu      $a1, $zero, 0x1c00
/* 26B84 80025F84 0C00963B */  jal        func_800258EC
/* 26B88 80025F88 02203021 */   addu      $a2, $s1, $zero
/* 26B8C 80025F8C 3C03800F */  lui        $v1, %hi(D_800F2B7C)
/* 26B90 80025F90 8C632B7C */  lw         $v1, %lo(D_800F2B7C)($v1)
/* 26B94 80025F94 00101040 */  sll        $v0, $s0, 1
/* 26B98 80025F98 00501021 */  addu       $v0, $v0, $s0
/* 26B9C 80025F9C 00021180 */  sll        $v0, $v0, 6
/* 26BA0 80025FA0 00431021 */  addu       $v0, $v0, $v1
/* 26BA4 80025FA4 8C42006C */  lw         $v0, 0x6c($v0)
/* 26BA8 80025FA8 00118A82 */  srl        $s1, $s1, 0xa
/* 26BAC 80025FAC 32310007 */  andi       $s1, $s1, 7
/* 26BB0 80025FB0 A0510028 */  sb         $s1, 0x28($v0)
/* 26BB4 80025FB4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 26BB8 80025FB8 8FB10014 */  lw         $s1, 0x14($sp)
/* 26BBC 80025FBC 8FB00010 */  lw         $s0, 0x10($sp)
/* 26BC0 80025FC0 03E00008 */  jr         $ra
/* 26BC4 80025FC4 27BD0020 */   addiu     $sp, $sp, 0x20
