	.set noat
	.set noreorder

glabel func_8005DB84
/* 5E784 8005DB84 27BDFFF8 */  addiu      $sp, $sp, -8
/* 5E788 8005DB88 00042400 */  sll        $a0, $a0, 0x10
/* 5E78C 8005DB8C 00042303 */  sra        $a0, $a0, 0xc
/* 5E790 8005DB90 3C02800F */  lui        $v0, %hi(D_800ED618)
/* 5E794 8005DB94 2442D618 */  addiu      $v0, $v0, %lo(D_800ED618)
/* 5E798 8005DB98 00822021 */  addu       $a0, $a0, $v0
/* 5E79C 8005DB9C 94820002 */  lhu        $v0, 2($a0)
/* 5E7A0 8005DBA0 1840000E */  blez       $v0, .L8005DBDC
/* 5E7A4 8005DBA4 00003021 */   addu      $a2, $zero, $zero
.L8005DBA8:
/* 5E7A8 8005DBA8 8C83000C */  lw         $v1, 0xc($a0)
/* 5E7AC 8005DBAC 00061080 */  sll        $v0, $a2, 2
/* 5E7B0 8005DBB0 00431021 */  addu       $v0, $v0, $v1
/* 5E7B4 8005DBB4 8C430000 */  lw         $v1, ($v0)
/* 5E7B8 8005DBB8 10600004 */  beqz       $v1, .L8005DBCC
/* 5E7BC 8005DBBC 24C60001 */   addiu     $a2, $a2, 1
/* 5E7C0 8005DBC0 8C620010 */  lw         $v0, 0x10($v1)
/* 5E7C4 8005DBC4 00A21025 */  or         $v0, $a1, $v0
/* 5E7C8 8005DBC8 AC620010 */  sw         $v0, 0x10($v1)
.L8005DBCC:
/* 5E7CC 8005DBCC 94820002 */  lhu        $v0, 2($a0)
/* 5E7D0 8005DBD0 00C2102A */  slt        $v0, $a2, $v0
/* 5E7D4 8005DBD4 1440FFF4 */  bnez       $v0, .L8005DBA8
/* 5E7D8 8005DBD8 00000000 */   nop
.L8005DBDC:
/* 5E7DC 8005DBDC 03E00008 */  jr         $ra
/* 5E7E0 8005DBE0 27BD0008 */   addiu     $sp, $sp, 8
