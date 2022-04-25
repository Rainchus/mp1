	.set noat
	.set noreorder

glabel func_8005B414
/* 5C014 8005B414 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5C018 8005B418 AFBF0010 */  sw         $ra, 0x10($sp)
/* 5C01C 8005B41C 3C02800E */  lui        $v0, %hi(D_800D8720)
/* 5C020 8005B420 90428720 */  lbu        $v0, %lo(D_800D8720)($v0)
/* 5C024 8005B424 1040000F */  beqz       $v0, .L8005B464
/* 5C028 8005B428 24040050 */   addiu     $a0, $zero, 0x50
/* 5C02C 8005B42C 3C05800F */  lui        $a1, %hi(D_800ED150)
/* 5C030 8005B430 24A5D150 */  addiu      $a1, $a1, %lo(D_800ED150)
/* 5C034 8005B434 0C006569 */  jal        func_800195A4
/* 5C038 8005B438 24060044 */   addiu     $a2, $zero, 0x44
/* 5C03C 8005B43C 24040094 */  addiu      $a0, $zero, 0x94
/* 5C040 8005B440 3C05800F */  lui        $a1, %hi(D_800F32B0)
/* 5C044 8005B444 24A532B0 */  addiu      $a1, $a1, %lo(D_800F32B0)
/* 5C048 8005B448 0C006569 */  jal        func_800195A4
/* 5C04C 8005B44C 240600C0 */   addiu     $a2, $zero, 0xc0
/* 5C050 8005B450 24040154 */  addiu      $a0, $zero, 0x154
/* 5C054 8005B454 3C05800F */  lui        $a1, %hi(D_800ED5C0)
/* 5C058 8005B458 24A5D5C0 */  addiu      $a1, $a1, %lo(D_800ED5C0)
/* 5C05C 8005B45C 0C006569 */  jal        func_800195A4
/* 5C060 8005B460 24060026 */   addiu     $a2, $zero, 0x26
.L8005B464:
/* 5C064 8005B464 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5C068 8005B468 03E00008 */  jr         $ra
/* 5C06C 8005B46C 27BD0018 */   addiu     $sp, $sp, 0x18
