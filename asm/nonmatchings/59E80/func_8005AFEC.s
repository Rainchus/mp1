	.set noat
	.set noreorder

glabel func_8005AFEC
/* 5BBEC 8005AFEC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5BBF0 8005AFF0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 5BBF4 8005AFF4 A7A00010 */  sh         $zero, 0x10($sp)
/* 5BBF8 8005AFF8 3C02800E */  lui        $v0, %hi(D_800D8720)
/* 5BBFC 8005AFFC 90428720 */  lbu        $v0, %lo(D_800D8720)($v0)
/* 5BC00 8005B000 10400004 */  beqz       $v0, .L8005B014
/* 5BC04 8005B004 240401F0 */   addiu     $a0, $zero, 0x1f0
/* 5BC08 8005B008 27A50010 */  addiu      $a1, $sp, 0x10
/* 5BC0C 8005B00C 0C006569 */  jal        func_800195A4
/* 5BC10 8005B010 24060002 */   addiu     $a2, $zero, 2
.L8005B014:
/* 5BC14 8005B014 97A20010 */  lhu        $v0, 0x10($sp)
/* 5BC18 8005B018 8FBF0018 */  lw         $ra, 0x18($sp)
/* 5BC1C 8005B01C 03E00008 */  jr         $ra
/* 5BC20 8005B020 27BD0020 */   addiu     $sp, $sp, 0x20
