	.set noat
	.set noreorder

glabel func_8006D99C
/* 6E59C 8006D99C 90820000 */  lbu        $v0, ($a0)
/* 6E5A0 8006D9A0 1040001B */  beqz       $v0, .L8006DA10
/* 6E5A4 8006D9A4 00001821 */   addu      $v1, $zero, $zero
/* 6E5A8 8006D9A8 00051400 */  sll        $v0, $a1, 0x10
/* 6E5AC 8006D9AC 00022C03 */  sra        $a1, $v0, 0x10
.L8006D9B0:
/* 6E5B0 8006D9B0 90820000 */  lbu        $v0, ($a0)
/* 6E5B4 8006D9B4 24420080 */  addiu      $v0, $v0, 0x80
/* 6E5B8 8006D9B8 304200FF */  andi       $v0, $v0, 0xff
/* 6E5BC 8006D9BC 2C420002 */  sltiu      $v0, $v0, 2
/* 6E5C0 8006D9C0 54400010 */  bnel       $v0, $zero, .L8006DA04
/* 6E5C4 8006D9C4 24840001 */   addiu     $a0, $a0, 1
/* 6E5C8 8006D9C8 00031400 */  sll        $v0, $v1, 0x10
/* 6E5CC 8006D9CC 14A00007 */  bnez       $a1, .L8006D9EC
/* 6E5D0 8006D9D0 00021C03 */   sra       $v1, $v0, 0x10
/* 6E5D4 8006D9D4 90820000 */  lbu        $v0, ($a0)
/* 6E5D8 8006D9D8 3C01800C */  lui        $at, %hi(D_800C5E34)
/* 6E5DC 8006D9DC 00220821 */  addu       $at, $at, $v0
/* 6E5E0 8006D9E0 90225E34 */  lbu        $v0, %lo(D_800C5E34)($at)
/* 6E5E4 8006D9E4 0801B680 */  j          .L8006DA00
/* 6E5E8 8006D9E8 00621821 */   addu      $v1, $v1, $v0
.L8006D9EC:
/* 6E5EC 8006D9EC 90820000 */  lbu        $v0, ($a0)
/* 6E5F0 8006D9F0 3C01800C */  lui        $at, %hi(D_800C5F34)
/* 6E5F4 8006D9F4 00220821 */  addu       $at, $at, $v0
/* 6E5F8 8006D9F8 90225F34 */  lbu        $v0, %lo(D_800C5F34)($at)
/* 6E5FC 8006D9FC 00621821 */  addu       $v1, $v1, $v0
.L8006DA00:
/* 6E600 8006DA00 24840001 */  addiu      $a0, $a0, 1
.L8006DA04:
/* 6E604 8006DA04 90820000 */  lbu        $v0, ($a0)
/* 6E608 8006DA08 1440FFE9 */  bnez       $v0, .L8006D9B0
/* 6E60C 8006DA0C 00000000 */   nop
.L8006DA10:
/* 6E610 8006DA10 00031400 */  sll        $v0, $v1, 0x10
/* 6E614 8006DA14 03E00008 */  jr         $ra
/* 6E618 8006DA18 00021403 */   sra       $v0, $v0, 0x10
