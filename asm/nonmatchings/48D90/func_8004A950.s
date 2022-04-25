	.set noat
	.set noreorder

glabel func_8004A950
/* 4B550 8004A950 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4B554 8004A954 AFBF002C */  sw         $ra, 0x2c($sp)
/* 4B558 8004A958 AFB60028 */  sw         $s6, 0x28($sp)
/* 4B55C 8004A95C AFB50024 */  sw         $s5, 0x24($sp)
/* 4B560 8004A960 AFB40020 */  sw         $s4, 0x20($sp)
/* 4B564 8004A964 AFB3001C */  sw         $s3, 0x1c($sp)
/* 4B568 8004A968 AFB20018 */  sw         $s2, 0x18($sp)
/* 4B56C 8004A96C AFB10014 */  sw         $s1, 0x14($sp)
/* 4B570 8004A970 AFB00010 */  sw         $s0, 0x10($sp)
/* 4B574 8004A974 3C12800D */  lui        $s2, %hi(D_800D6738)
/* 4B578 8004A978 86526738 */  lh         $s2, %lo(D_800D6738)($s2)
/* 4B57C 8004A97C 3C02800D */  lui        $v0, %hi(D_800D6734)
/* 4B580 8004A980 84426734 */  lh         $v0, %lo(D_800D6734)($v0)
/* 4B584 8004A984 02429021 */  addu       $s2, $s2, $v0
/* 4B588 8004A988 2652FF88 */  addiu      $s2, $s2, -0x78
/* 4B58C 8004A98C 3C022AAA */  lui        $v0, 0x2aaa
/* 4B590 8004A990 3442AAAB */  ori        $v0, $v0, 0xaaab
/* 4B594 8004A994 02420018 */  mult       $s2, $v0
/* 4B598 8004A998 00003010 */  mfhi       $a2
/* 4B59C 8004A99C 000618C3 */  sra        $v1, $a2, 3
/* 4B5A0 8004A9A0 001217C3 */  sra        $v0, $s2, 0x1f
/* 4B5A4 8004A9A4 00629023 */  subu       $s2, $v1, $v0
/* 4B5A8 8004A9A8 0000A021 */  addu       $s4, $zero, $zero
/* 4B5AC 8004A9AC 3C16800D */  lui        $s6, %hi(D_800D6A60)
/* 4B5B0 8004A9B0 26D66A60 */  addiu      $s6, $s6, %lo(D_800D6A60)
.L8004A9B4:
/* 4B5B4 8004A9B4 3C03800D */  lui        $v1, %hi(D_800D6736)
/* 4B5B8 8004A9B8 84636736 */  lh         $v1, %lo(D_800D6736)($v1)
/* 4B5BC 8004A9BC 3C02800D */  lui        $v0, %hi(D_800D6732)
/* 4B5C0 8004A9C0 84426732 */  lh         $v0, %lo(D_800D6732)($v0)
/* 4B5C4 8004A9C4 00621821 */  addu       $v1, $v1, $v0
/* 4B5C8 8004A9C8 2462FF60 */  addiu      $v0, $v1, -0xa0
/* 4B5CC 8004A9CC 04420001 */  bltzl      $v0, .L8004A9D4
/* 4B5D0 8004A9D0 2462FF9F */   addiu     $v0, $v1, -0x61
.L8004A9D4:
/* 4B5D4 8004A9D4 00028983 */  sra        $s1, $v0, 6
/* 4B5D8 8004A9D8 00008021 */  addu       $s0, $zero, $zero
/* 4B5DC 8004A9DC 0012AFC2 */  srl        $s5, $s2, 0x1f
/* 4B5E0 8004A9E0 00149880 */  sll        $s3, $s4, 2
.L8004A9E4:
/* 4B5E4 8004A9E4 001117C2 */  srl        $v0, $s1, 0x1f
/* 4B5E8 8004A9E8 00551025 */  or         $v0, $v0, $s5
/* 4B5EC 8004A9EC 1440000C */  bnez       $v0, .L8004AA20
/* 4B5F0 8004A9F0 00101040 */   sll       $v0, $s0, 1
/* 4B5F4 8004A9F4 3C03800C */  lui        $v1, %hi(D_800C4F78)
/* 4B5F8 8004A9F8 8C634F78 */  lw         $v1, %lo(D_800C4F78)($v1)
/* 4B5FC 8004A9FC 8C620008 */  lw         $v0, 8($v1)
/* 4B600 8004AA00 0222102A */  slt        $v0, $s1, $v0
/* 4B604 8004AA04 10400006 */  beqz       $v0, .L8004AA20
/* 4B608 8004AA08 00101040 */   sll       $v0, $s0, 1
/* 4B60C 8004AA0C 8C62000C */  lw         $v0, 0xc($v1)
/* 4B610 8004AA10 0242102A */  slt        $v0, $s2, $v0
/* 4B614 8004AA14 14400008 */  bnez       $v0, .L8004AA38
/* 4B618 8004AA18 02202021 */   addu      $a0, $s1, $zero
/* 4B61C 8004AA1C 00101040 */  sll        $v0, $s0, 1
.L8004AA20:
/* 4B620 8004AA20 00501021 */  addu       $v0, $v0, $s0
/* 4B624 8004AA24 000210C0 */  sll        $v0, $v0, 3
/* 4B628 8004AA28 00561021 */  addu       $v0, $v0, $s6
/* 4B62C 8004AA2C 02621021 */  addu       $v0, $s3, $v0
/* 4B630 8004AA30 08012A98 */  j          .L8004AA60
/* 4B634 8004AA34 AC400000 */   sw        $zero, ($v0)
.L8004AA38:
/* 4B638 8004AA38 0C012A05 */  jal        func_8004A814
/* 4B63C 8004AA3C 02402821 */   addu      $a1, $s2, $zero
/* 4B640 8004AA40 0C012A24 */  jal        func_8004A890
/* 4B644 8004AA44 3044FFFF */   andi      $a0, $v0, 0xffff
/* 4B648 8004AA48 00101840 */  sll        $v1, $s0, 1
/* 4B64C 8004AA4C 00701821 */  addu       $v1, $v1, $s0
/* 4B650 8004AA50 000318C0 */  sll        $v1, $v1, 3
/* 4B654 8004AA54 00761821 */  addu       $v1, $v1, $s6
/* 4B658 8004AA58 02631821 */  addu       $v1, $s3, $v1
/* 4B65C 8004AA5C AC620000 */  sw         $v0, ($v1)
.L8004AA60:
/* 4B660 8004AA60 26100001 */  addiu      $s0, $s0, 1
/* 4B664 8004AA64 2A020006 */  slti       $v0, $s0, 6
/* 4B668 8004AA68 1440FFDE */  bnez       $v0, .L8004A9E4
/* 4B66C 8004AA6C 26310001 */   addiu     $s1, $s1, 1
/* 4B670 8004AA70 26940001 */  addiu      $s4, $s4, 1
/* 4B674 8004AA74 2A820006 */  slti       $v0, $s4, 6
/* 4B678 8004AA78 1440FFCE */  bnez       $v0, .L8004A9B4
/* 4B67C 8004AA7C 26520001 */   addiu     $s2, $s2, 1
/* 4B680 8004AA80 8FBF002C */  lw         $ra, 0x2c($sp)
/* 4B684 8004AA84 8FB60028 */  lw         $s6, 0x28($sp)
/* 4B688 8004AA88 8FB50024 */  lw         $s5, 0x24($sp)
/* 4B68C 8004AA8C 8FB40020 */  lw         $s4, 0x20($sp)
/* 4B690 8004AA90 8FB3001C */  lw         $s3, 0x1c($sp)
/* 4B694 8004AA94 8FB20018 */  lw         $s2, 0x18($sp)
/* 4B698 8004AA98 8FB10014 */  lw         $s1, 0x14($sp)
/* 4B69C 8004AA9C 8FB00010 */  lw         $s0, 0x10($sp)
/* 4B6A0 8004AAA0 03E00008 */  jr         $ra
/* 4B6A4 8004AAA4 27BD0030 */   addiu     $sp, $sp, 0x30
