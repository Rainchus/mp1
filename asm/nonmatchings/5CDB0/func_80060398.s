	.set noat
	.set noreorder

glabel func_80060398
/* 60F98 80060398 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 60F9C 8006039C AFBF0018 */  sw         $ra, 0x18($sp)
/* 60FA0 800603A0 AFB10014 */  sw         $s1, 0x14($sp)
/* 60FA4 800603A4 AFB00010 */  sw         $s0, 0x10($sp)
/* 60FA8 800603A8 3C02800F */  lui        $v0, %hi(D_800F64E0)
/* 60FAC 800603AC 8C4264E0 */  lw         $v0, %lo(D_800F64E0)($v0)
/* 60FB0 800603B0 1040000A */  beqz       $v0, .L800603DC
/* 60FB4 800603B4 00008021 */   addu      $s0, $zero, $zero
/* 60FB8 800603B8 00048C00 */  sll        $s1, $a0, 0x10
/* 60FBC 800603BC 00102400 */  sll        $a0, $s0, 0x10
.L800603C0:
/* 60FC0 800603C0 00042403 */  sra        $a0, $a0, 0x10
/* 60FC4 800603C4 0C0182F2 */  jal        func_80060BC8
/* 60FC8 800603C8 00112C03 */   sra       $a1, $s1, 0x10
/* 60FCC 800603CC 26100001 */  addiu      $s0, $s0, 1
/* 60FD0 800603D0 2A02000D */  slti       $v0, $s0, 0xd
/* 60FD4 800603D4 1440FFFA */  bnez       $v0, .L800603C0
/* 60FD8 800603D8 00102400 */   sll       $a0, $s0, 0x10
.L800603DC:
/* 60FDC 800603DC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 60FE0 800603E0 8FB10014 */  lw         $s1, 0x14($sp)
/* 60FE4 800603E4 8FB00010 */  lw         $s0, 0x10($sp)
/* 60FE8 800603E8 03E00008 */  jr         $ra
/* 60FEC 800603EC 27BD0020 */   addiu     $sp, $sp, 0x20
