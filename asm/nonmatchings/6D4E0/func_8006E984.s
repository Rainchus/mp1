	.set noat
	.set noreorder

glabel func_8006E984
/* 6F584 8006E984 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6F588 8006E988 AFBF0018 */  sw         $ra, 0x18($sp)
/* 6F58C 8006E98C AFB10014 */  sw         $s1, 0x14($sp)
/* 6F590 8006E990 AFB00010 */  sw         $s0, 0x10($sp)
/* 6F594 8006E994 00808021 */  addu       $s0, $a0, $zero
/* 6F598 8006E998 24110001 */  addiu      $s1, $zero, 1
/* 6F59C 8006E99C 00111400 */  sll        $v0, $s1, 0x10
.L8006E9A0:
/* 6F5A0 8006E9A0 00021383 */  sra        $v0, $v0, 0xe
/* 6F5A4 8006E9A4 00501021 */  addu       $v0, $v0, $s0
/* 6F5A8 8006E9A8 8C4400C0 */  lw         $a0, 0xc0($v0)
/* 6F5AC 8006E9AC 10800009 */  beqz       $a0, .L8006E9D4
/* 6F5B0 8006E9B0 00002821 */   addu      $a1, $zero, $zero
/* 6F5B4 8006E9B4 8606001C */  lh         $a2, 0x1c($s0)
/* 6F5B8 8006E9B8 8602001A */  lh         $v0, 0x1a($s0)
/* 6F5BC 8006E9BC 00C20018 */  mult       $a2, $v0
/* 6F5C0 8006E9C0 00003012 */  mflo       $a2
/* 6F5C4 8006E9C4 000617C2 */  srl        $v0, $a2, 0x1f
/* 6F5C8 8006E9C8 00C23021 */  addu       $a2, $a2, $v0
/* 6F5CC 8006E9CC 0C026DDC */  jal        func_8009B770
/* 6F5D0 8006E9D0 00063043 */   sra       $a2, $a2, 1
.L8006E9D4:
/* 6F5D4 8006E9D4 26220001 */  addiu      $v0, $s1, 1
/* 6F5D8 8006E9D8 00408821 */  addu       $s1, $v0, $zero
/* 6F5DC 8006E9DC 00021400 */  sll        $v0, $v0, 0x10
/* 6F5E0 8006E9E0 00021403 */  sra        $v0, $v0, 0x10
/* 6F5E4 8006E9E4 2842000A */  slti       $v0, $v0, 0xa
/* 6F5E8 8006E9E8 5440FFED */  bnel       $v0, $zero, .L8006E9A0
/* 6F5EC 8006E9EC 00111400 */   sll       $v0, $s1, 0x10
/* 6F5F0 8006E9F0 8E0400E8 */  lw         $a0, 0xe8($s0)
/* 6F5F4 8006E9F4 10800009 */  beqz       $a0, .L8006EA1C
/* 6F5F8 8006E9F8 00000000 */   nop
/* 6F5FC 8006E9FC 86020018 */  lh         $v0, 0x18($s0)
/* 6F600 8006EA00 8606001A */  lh         $a2, 0x1a($s0)
/* 6F604 8006EA04 00460018 */  mult       $v0, $a2
/* 6F608 8006EA08 00003012 */  mflo       $a2
/* 6F60C 8006EA0C 00000000 */  nop
/* 6F610 8006EA10 00000000 */  nop
/* 6F614 8006EA14 0C026DDC */  jal        func_8009B770
/* 6F618 8006EA18 00002821 */   addu      $a1, $zero, $zero
.L8006EA1C:
/* 6F61C 8006EA1C 96020024 */  lhu        $v0, 0x24($s0)
/* 6F620 8006EA20 A602002C */  sh         $v0, 0x2c($s0)
/* 6F624 8006EA24 96020026 */  lhu        $v0, 0x26($s0)
/* 6F628 8006EA28 A602002E */  sh         $v0, 0x2e($s0)
/* 6F62C 8006EA2C A600006E */  sh         $zero, 0x6e($s0)
/* 6F630 8006EA30 8FBF0018 */  lw         $ra, 0x18($sp)
/* 6F634 8006EA34 8FB10014 */  lw         $s1, 0x14($sp)
/* 6F638 8006EA38 8FB00010 */  lw         $s0, 0x10($sp)
/* 6F63C 8006EA3C 03E00008 */  jr         $ra
/* 6F640 8006EA40 27BD0020 */   addiu     $sp, $sp, 0x20
