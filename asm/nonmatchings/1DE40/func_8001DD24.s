	.set noat
	.set noreorder

glabel func_8001DD24
/* 1E924 8001DD24 27BDFF70 */  addiu      $sp, $sp, -0x90
/* 1E928 8001DD28 AFBF0074 */  sw         $ra, 0x74($sp)
/* 1E92C 8001DD2C AFB20070 */  sw         $s2, 0x70($sp)
/* 1E930 8001DD30 AFB1006C */  sw         $s1, 0x6c($sp)
/* 1E934 8001DD34 AFB00068 */  sw         $s0, 0x68($sp)
/* 1E938 8001DD38 F7B80088 */  sdc1       $f24, 0x88($sp)
/* 1E93C 8001DD3C F7B60080 */  sdc1       $f22, 0x80($sp)
/* 1E940 8001DD40 F7B40078 */  sdc1       $f20, 0x78($sp)
/* 1E944 8001DD44 4485C000 */  mtc1       $a1, $f24
/* 1E948 8001DD48 00C08821 */  addu       $s1, $a2, $zero
/* 1E94C 8001DD4C 00E09021 */  addu       $s2, $a3, $zero
/* 1E950 8001DD50 00042400 */  sll        $a0, $a0, 0x10
/* 1E954 8001DD54 00042403 */  sra        $a0, $a0, 0x10
/* 1E958 8001DD58 00048080 */  sll        $s0, $a0, 2
/* 1E95C 8001DD5C 02048021 */  addu       $s0, $s0, $a0
/* 1E960 8001DD60 00108140 */  sll        $s0, $s0, 5
/* 1E964 8001DD64 02048023 */  subu       $s0, $s0, $a0
/* 1E968 8001DD68 001080C0 */  sll        $s0, $s0, 3
/* 1E96C 8001DD6C 3C02800C */  lui        $v0, %hi(D_800C3110)
/* 1E970 8001DD70 8C423110 */  lw         $v0, %lo(D_800C3110)($v0)
/* 1E974 8001DD74 02028021 */  addu       $s0, $s0, $v0
/* 1E978 8001DD78 C600000C */  lwc1       $f0, 0xc($s0)
/* 1E97C 8001DD7C E7A00010 */  swc1       $f0, 0x10($sp)
/* 1E980 8001DD80 C6000010 */  lwc1       $f0, 0x10($s0)
/* 1E984 8001DD84 E7A00014 */  swc1       $f0, 0x14($sp)
/* 1E988 8001DD88 C6000014 */  lwc1       $f0, 0x14($s0)
/* 1E98C 8001DD8C E7A00018 */  swc1       $f0, 0x18($sp)
/* 1E990 8001DD90 C6000018 */  lwc1       $f0, 0x18($s0)
/* 1E994 8001DD94 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 1E998 8001DD98 C600001C */  lwc1       $f0, 0x1c($s0)
/* 1E99C 8001DD9C E7A00020 */  swc1       $f0, 0x20($sp)
/* 1E9A0 8001DDA0 C6000020 */  lwc1       $f0, 0x20($s0)
/* 1E9A4 8001DDA4 E7A00024 */  swc1       $f0, 0x24($sp)
/* 1E9A8 8001DDA8 8E050000 */  lw         $a1, ($s0)
/* 1E9AC 8001DDAC 8E060004 */  lw         $a2, 4($s0)
/* 1E9B0 8001DDB0 8E070008 */  lw         $a3, 8($s0)
/* 1E9B4 8001DDB4 0C0270A8 */  jal        func_8009C2A0
/* 1E9B8 8001DDB8 27A40028 */   addiu     $a0, $sp, 0x28
/* 1E9BC 8001DDBC C60C0040 */  lwc1       $f12, 0x40($s0)
/* 1E9C0 8001DDC0 3C014000 */  lui        $at, 0x4000
/* 1E9C4 8001DDC4 4481B000 */  mtc1       $at, $f22
/* 1E9C8 8001DDC8 00000000 */  nop
/* 1E9CC 8001DDCC 0C02BAB0 */  jal        func_800AEAC0
/* 1E9D0 8001DDD0 46166303 */   div.s     $f12, $f12, $f22
/* 1E9D4 8001DDD4 46000506 */  mov.s      $f20, $f0
/* 1E9D8 8001DDD8 C60C0040 */  lwc1       $f12, 0x40($s0)
/* 1E9DC 8001DDDC 0C02BBF4 */  jal        func_800AEFD0
/* 1E9E0 8001DDE0 46166303 */   div.s     $f12, $f12, $f22
/* 1E9E4 8001DDE4 4600A503 */  div.s      $f20, $f20, $f0
/* 1E9E8 8001DDE8 4618A502 */  mul.s      $f20, $f20, $f24
/* 1E9EC 8001DDEC 3C013FAA */  lui        $at, 0x3faa
/* 1E9F0 8001DDF0 3421AAAB */  ori        $at, $at, 0xaaab
/* 1E9F4 8001DDF4 44812000 */  mtc1       $at, $f4
/* 1E9F8 8001DDF8 00000000 */  nop
/* 1E9FC 8001DDFC 4604A102 */  mul.s      $f4, $f20, $f4
/* 1EA00 8001DE00 C6260000 */  lwc1       $f6, ($s1)
/* 1EA04 8001DE04 3C0143A0 */  lui        $at, 0x43a0
/* 1EA08 8001DE08 44810000 */  mtc1       $at, $f0
/* 1EA0C 8001DE0C 00000000 */  nop
/* 1EA10 8001DE10 46003183 */  div.s      $f6, $f6, $f0
/* 1EA14 8001DE14 3C014370 */  lui        $at, 0x4370
/* 1EA18 8001DE18 44810000 */  mtc1       $at, $f0
/* 1EA1C 8001DE1C C6220004 */  lwc1       $f2, 4($s1)
/* 1EA20 8001DE20 46020081 */  sub.s      $f2, $f0, $f2
/* 1EA24 8001DE24 46001083 */  div.s      $f2, $f2, $f0
/* 1EA28 8001DE28 46042000 */  add.s      $f0, $f4, $f4
/* 1EA2C 8001DE2C 46060002 */  mul.s      $f0, $f0, $f6
/* 1EA30 8001DE30 46040001 */  sub.s      $f0, $f0, $f4
/* 1EA34 8001DE34 E6400000 */  swc1       $f0, ($s2)
/* 1EA38 8001DE38 4614A000 */  add.s      $f0, $f20, $f20
/* 1EA3C 8001DE3C 46020002 */  mul.s      $f0, $f0, $f2
/* 1EA40 8001DE40 46140001 */  sub.s      $f0, $f0, $f20
/* 1EA44 8001DE44 E6400004 */  swc1       $f0, 4($s2)
/* 1EA48 8001DE48 8FBF0074 */  lw         $ra, 0x74($sp)
/* 1EA4C 8001DE4C 8FB20070 */  lw         $s2, 0x70($sp)
/* 1EA50 8001DE50 8FB1006C */  lw         $s1, 0x6c($sp)
/* 1EA54 8001DE54 8FB00068 */  lw         $s0, 0x68($sp)
/* 1EA58 8001DE58 D7B80088 */  ldc1       $f24, 0x88($sp)
/* 1EA5C 8001DE5C D7B60080 */  ldc1       $f22, 0x80($sp)
/* 1EA60 8001DE60 D7B40078 */  ldc1       $f20, 0x78($sp)
/* 1EA64 8001DE64 03E00008 */  jr         $ra
/* 1EA68 8001DE68 27BD0090 */   addiu     $sp, $sp, 0x90
/* 1EA6C 8001DE6C 00000000 */  nop
