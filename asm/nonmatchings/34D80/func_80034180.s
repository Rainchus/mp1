	.set noat
	.set noreorder

glabel func_80034180
/* 34D80 80034180 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 34D84 80034184 AFBF0010 */  sw         $ra, 0x10($sp)
/* 34D88 80034188 0C008D9A */  jal        func_80023668
/* 34D8C 8003418C 24040C00 */   addiu     $a0, $zero, 0xc00
/* 34D90 80034190 3C01800F */  lui        $at, %hi(D_800ED554)
/* 34D94 80034194 AC22D554 */  sw         $v0, %lo(D_800ED554)($at)
/* 34D98 80034198 00002021 */  addu       $a0, $zero, $zero
/* 34D9C 8003419C 3C05800F */  lui        $a1, %hi(D_800ED554)
/* 34DA0 800341A0 8CA5D554 */  lw         $a1, %lo(D_800ED554)($a1)
/* 34DA4 800341A4 2406FFFF */  addiu      $a2, $zero, -1
.L800341A8:
/* 34DA8 800341A8 00041400 */  sll        $v0, $a0, 0x10
/* 34DAC 800341AC 00021403 */  sra        $v0, $v0, 0x10
/* 34DB0 800341B0 00021840 */  sll        $v1, $v0, 1
/* 34DB4 800341B4 00621821 */  addu       $v1, $v1, $v0
/* 34DB8 800341B8 000318C0 */  sll        $v1, $v1, 3
/* 34DBC 800341BC 00651821 */  addu       $v1, $v1, $a1
/* 34DC0 800341C0 24820001 */  addiu      $v0, $a0, 1
/* 34DC4 800341C4 00402021 */  addu       $a0, $v0, $zero
/* 34DC8 800341C8 00021400 */  sll        $v0, $v0, 0x10
/* 34DCC 800341CC 00021403 */  sra        $v0, $v0, 0x10
/* 34DD0 800341D0 28420080 */  slti       $v0, $v0, 0x80
/* 34DD4 800341D4 1440FFF4 */  bnez       $v0, .L800341A8
/* 34DD8 800341D8 A4660002 */   sh        $a2, 2($v1)
/* 34DDC 800341DC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 34DE0 800341E0 03E00008 */  jr         $ra
/* 34DE4 800341E4 27BD0018 */   addiu     $sp, $sp, 0x18
