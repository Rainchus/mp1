	.set noat
	.set noreorder

glabel func_8005CDAC
/* 5D9AC 8005CDAC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5D9B0 8005CDB0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 5D9B4 8005CDB4 24020008 */  addiu      $v0, $zero, 8
/* 5D9B8 8005CDB8 3C01800E */  lui        $at, %hi(D_800D8984)
/* 5D9BC 8005CDBC A4228984 */  sh         $v0, %lo(D_800D8984)($at)
/* 5D9C0 8005CDC0 3C01800E */  lui        $at, %hi(D_800D8986)
/* 5D9C4 8005CDC4 A4248986 */  sh         $a0, %lo(D_800D8986)($at)
/* 5D9C8 8005CDC8 3C01800E */  lui        $at, %hi(D_800D8988)
/* 5D9CC 8005CDCC 0C0170E1 */  jal        func_8005C384
/* 5D9D0 8005CDD0 A4258988 */   sh        $a1, %lo(D_800D8988)($at)
/* 5D9D4 8005CDD4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5D9D8 8005CDD8 03E00008 */  jr         $ra
/* 5D9DC 8005CDDC 27BD0018 */   addiu     $sp, $sp, 0x18
