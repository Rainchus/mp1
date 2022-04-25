	.set noat
	.set noreorder

glabel func_8001CD60
/* 1D960 8001CD60 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1D964 8001CD64 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1D968 8001CD68 AFB10014 */  sw         $s1, 0x14($sp)
/* 1D96C 8001CD6C AFB00010 */  sw         $s0, 0x10($sp)
/* 1D970 8001CD70 00801021 */  addu       $v0, $a0, $zero
/* 1D974 8001CD74 3C01800F */  lui        $at, %hi(D_800EC6DE)
/* 1D978 8001CD78 A020C6DE */  sb         $zero, %lo(D_800EC6DE)($at)
/* 1D97C 8001CD7C 3C045649 */  lui        $a0, 0x5649
/* 1D980 8001CD80 8C45003C */  lw         $a1, 0x3c($v0)
/* 1D984 8001CD84 8C460038 */  lw         $a2, 0x38($v0)
/* 1D988 8001CD88 0C0070BA */  jal        func_8001C2E8
/* 1D98C 8001CD8C 34844557 */   ori       $a0, $a0, 0x4557
/* 1D990 8001CD90 00402821 */  addu       $a1, $v0, $zero
/* 1D994 8001CD94 10A00042 */  beqz       $a1, .L8001CEA0
/* 1D998 8001CD98 24020001 */   addiu     $v0, $zero, 1
/* 1D99C 8001CD9C 3C01800F */  lui        $at, %hi(D_800EC6DE)
/* 1D9A0 8001CDA0 A022C6DE */  sb         $v0, %lo(D_800EC6DE)($at)
/* 1D9A4 8001CDA4 90A60005 */  lbu        $a2, 5($a1)
/* 1D9A8 8001CDA8 00063400 */  sll        $a2, $a2, 0x10
/* 1D9AC 8001CDAC 00A63021 */  addu       $a2, $a1, $a2
/* 1D9B0 8001CDB0 90A20006 */  lbu        $v0, 6($a1)
/* 1D9B4 8001CDB4 00021200 */  sll        $v0, $v0, 8
/* 1D9B8 8001CDB8 00C23021 */  addu       $a2, $a2, $v0
/* 1D9BC 8001CDBC 90A20007 */  lbu        $v0, 7($a1)
/* 1D9C0 8001CDC0 00C23021 */  addu       $a2, $a2, $v0
/* 1D9C4 8001CDC4 3C044241 */  lui        $a0, 0x4241
/* 1D9C8 8001CDC8 3484434B */  ori        $a0, $a0, 0x434b
/* 1D9CC 8001CDCC 24A50008 */  addiu      $a1, $a1, 8
/* 1D9D0 8001CDD0 0C0070BA */  jal        func_8001C2E8
/* 1D9D4 8001CDD4 24C60008 */   addiu     $a2, $a2, 8
/* 1D9D8 8001CDD8 00408821 */  addu       $s1, $v0, $zero
/* 1D9DC 8001CDDC 12200030 */  beqz       $s1, .L8001CEA0
/* 1D9E0 8001CDE0 24020002 */   addiu     $v0, $zero, 2
/* 1D9E4 8001CDE4 3C01800F */  lui        $at, %hi(D_800EC6DE)
/* 1D9E8 8001CDE8 A022C6DE */  sb         $v0, %lo(D_800EC6DE)($at)
/* 1D9EC 8001CDEC 92220008 */  lbu        $v0, 8($s1)
/* 1D9F0 8001CDF0 1440000E */  bnez       $v0, .L8001CE2C
/* 1D9F4 8001CDF4 24020004 */   addiu     $v0, $zero, 4
/* 1D9F8 8001CDF8 24020003 */  addiu      $v0, $zero, 3
/* 1D9FC 8001CDFC 3C01800F */  lui        $at, %hi(D_800EC6DE)
/* 1DA00 8001CE00 A022C6DE */  sb         $v0, %lo(D_800EC6DE)($at)
/* 1DA04 8001CE04 92220009 */  lbu        $v0, 9($s1)
/* 1DA08 8001CE08 3C01800C */  lui        $at, %hi(D_800C30C0)
/* 1DA0C 8001CE0C A02230C0 */  sb         $v0, %lo(D_800C30C0)($at)
/* 1DA10 8001CE10 9222000A */  lbu        $v0, 0xa($s1)
/* 1DA14 8001CE14 3C01800C */  lui        $at, %hi(D_800C30C1)
/* 1DA18 8001CE18 A02230C1 */  sb         $v0, %lo(D_800C30C1)($at)
/* 1DA1C 8001CE1C 9222000B */  lbu        $v0, 0xb($s1)
/* 1DA20 8001CE20 3C01800C */  lui        $at, %hi(D_800C30C2)
/* 1DA24 8001CE24 080073A8 */  j          .L8001CEA0
/* 1DA28 8001CE28 A02230C2 */   sb        $v0, %lo(D_800C30C2)($at)
.L8001CE2C:
/* 1DA2C 8001CE2C 3C01800F */  lui        $at, %hi(D_800EC6DE)
/* 1DA30 8001CE30 A022C6DE */  sb         $v0, %lo(D_800EC6DE)($at)
/* 1DA34 8001CE34 9223000B */  lbu        $v1, 0xb($s1)
/* 1DA38 8001CE38 00031A00 */  sll        $v1, $v1, 8
/* 1DA3C 8001CE3C 9222000C */  lbu        $v0, 0xc($s1)
/* 1DA40 8001CE40 00431021 */  addu       $v0, $v0, $v1
/* 1DA44 8001CE44 3C01800F */  lui        $at, %hi(D_800ED738)
/* 1DA48 8001CE48 A422D738 */  sh         $v0, %lo(D_800ED738)($at)
/* 1DA4C 8001CE4C 9223000D */  lbu        $v1, 0xd($s1)
/* 1DA50 8001CE50 00031A00 */  sll        $v1, $v1, 8
/* 1DA54 8001CE54 9222000E */  lbu        $v0, 0xe($s1)
/* 1DA58 8001CE58 00431021 */  addu       $v0, $v0, $v1
/* 1DA5C 8001CE5C 3C01800F */  lui        $at, %hi(D_800F3960)
/* 1DA60 8001CE60 A4223960 */  sh         $v0, %lo(D_800F3960)($at)
/* 1DA64 8001CE64 92300010 */  lbu        $s0, 0x10($s1)
/* 1DA68 8001CE68 00108400 */  sll        $s0, $s0, 0x10
/* 1DA6C 8001CE6C 92220011 */  lbu        $v0, 0x11($s1)
/* 1DA70 8001CE70 00021200 */  sll        $v0, $v0, 8
/* 1DA74 8001CE74 02028021 */  addu       $s0, $s0, $v0
/* 1DA78 8001CE78 92220012 */  lbu        $v0, 0x12($s1)
/* 1DA7C 8001CE7C 02028021 */  addu       $s0, $s0, $v0
/* 1DA80 8001CE80 0C008D9A */  jal        func_80023668
/* 1DA84 8001CE84 02002021 */   addu      $a0, $s0, $zero
/* 1DA88 8001CE88 3C01800F */  lui        $at, %hi(D_800F33C8)
/* 1DA8C 8001CE8C AC2233C8 */  sw         $v0, %lo(D_800F33C8)($at)
/* 1DA90 8001CE90 26240013 */  addiu      $a0, $s1, 0x13
/* 1DA94 8001CE94 00402821 */  addu       $a1, $v0, $zero
/* 1DA98 8001CE98 0C008E8E */  jal        func_80023A38
/* 1DA9C 8001CE9C 02003021 */   addu      $a2, $s0, $zero
.L8001CEA0:
/* 1DAA0 8001CEA0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1DAA4 8001CEA4 8FB10014 */  lw         $s1, 0x14($sp)
/* 1DAA8 8001CEA8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1DAAC 8001CEAC 03E00008 */  jr         $ra
/* 1DAB0 8001CEB0 27BD0020 */   addiu     $sp, $sp, 0x20
