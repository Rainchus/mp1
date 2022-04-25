	.set noat
	.set noreorder

glabel func_8000B844
/* C444 8000B844 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C448 8000B848 AFBF001C */  sw         $ra, 0x1c($sp)
/* C44C 8000B84C AFB20018 */  sw         $s2, 0x18($sp)
/* C450 8000B850 AFB10014 */  sw         $s1, 0x14($sp)
/* C454 8000B854 AFB00010 */  sw         $s0, 0x10($sp)
/* C458 8000B858 3C05800D */  lui        $a1, %hi(D_800CDAF0)
/* C45C 8000B85C 8CA5DAF0 */  lw         $a1, %lo(D_800CDAF0)($a1)
/* C460 8000B860 30A20010 */  andi       $v0, $a1, 0x10
/* C464 8000B864 144000AC */  bnez       $v0, .L8000BB18
/* C468 8000B868 00000000 */   nop
/* C46C 8000B86C 3C02800D */  lui        $v0, %hi(D_800CDAE0)
/* C470 8000B870 8C42DAE0 */  lw         $v0, %lo(D_800CDAE0)($v0)
/* C474 8000B874 84430000 */  lh         $v1, ($v0)
/* C478 8000B878 24025332 */  addiu      $v0, $zero, 0x5332
/* C47C 8000B87C 14620047 */  bne        $v1, $v0, .L8000B99C
/* C480 8000B880 00002021 */   addu      $a0, $zero, $zero
/* C484 8000B884 3C02800D */  lui        $v0, %hi(D_800CDAFC)
/* C488 8000B888 8442DAFC */  lh         $v0, %lo(D_800CDAFC)($v0)
/* C48C 8000B88C 00021100 */  sll        $v0, $v0, 4
/* C490 8000B890 3C03800D */  lui        $v1, %hi(D_800CDAE4)
/* C494 8000B894 8C63DAE4 */  lw         $v1, %lo(D_800CDAE4)($v1)
/* C498 8000B898 00431021 */  addu       $v0, $v0, $v1
/* C49C 8000B89C 8C510004 */  lw         $s1, 4($v0)
/* C4A0 8000B8A0 8C52000C */  lw         $s2, 0xc($v0)
/* C4A4 8000B8A4 8C500008 */  lw         $s0, 8($v0)
/* C4A8 8000B8A8 90440000 */  lbu        $a0, ($v0)
/* C4AC 8000B8AC 3C02800D */  lui        $v0, %hi(D_800CDAE8)
/* C4B0 8000B8B0 8C42DAE8 */  lw         $v0, %lo(D_800CDAE8)($v0)
/* C4B4 8000B8B4 12220039 */  beq        $s1, $v0, .L8000B99C
/* C4B8 8000B8B8 30A20100 */   andi      $v0, $a1, 0x100
/* C4BC 8000B8BC 1040001C */  beqz       $v0, .L8000B930
/* C4C0 8000B8C0 2A024001 */   slti      $v0, $s0, 0x4001
/* C4C4 8000B8C4 3C02800D */  lui        $v0, %hi(D_800CD9C0)
/* C4C8 8000B8C8 8C42D9C0 */  lw         $v0, %lo(D_800CD9C0)($v0)
/* C4CC 8000B8CC 02021823 */  subu       $v1, $s0, $v0
/* C4D0 8000B8D0 28424001 */  slti       $v0, $v0, 0x4001
/* C4D4 8000B8D4 10400003 */  beqz       $v0, .L8000B8E4
/* C4D8 8000B8D8 24104000 */   addiu     $s0, $zero, 0x4000
/* C4DC 8000B8DC 3C10800D */  lui        $s0, %hi(D_800CD9C0)
/* C4E0 8000B8E0 8E10D9C0 */  lw         $s0, %lo(D_800CD9C0)($s0)
.L8000B8E4:
/* C4E4 8000B8E4 3C05800D */  lui        $a1, %hi(D_800CDAD0)
/* C4E8 8000B8E8 8CA5DAD0 */  lw         $a1, %lo(D_800CDAD0)($a1)
/* C4EC 8000B8EC 02232021 */  addu       $a0, $s1, $v1
/* C4F0 8000B8F0 00652821 */  addu       $a1, $v1, $a1
/* C4F4 8000B8F4 0C002B60 */  jal        func_8000AD80
/* C4F8 8000B8F8 02003021 */   addu      $a2, $s0, $zero
/* C4FC 8000B8FC 3C02800D */  lui        $v0, %hi(D_800CD9C0)
/* C500 8000B900 8C42D9C0 */  lw         $v0, %lo(D_800CD9C0)($v0)
/* C504 8000B904 00501023 */  subu       $v0, $v0, $s0
/* C508 8000B908 3C01800D */  lui        $at, %hi(D_800CD9C0)
/* C50C 8000B90C AC22D9C0 */  sw         $v0, %lo(D_800CD9C0)($at)
/* C510 8000B910 14400081 */  bnez       $v0, .L8000BB18
/* C514 8000B914 2403FEFF */   addiu     $v1, $zero, -0x101
/* C518 8000B918 3C02800D */  lui        $v0, %hi(D_800CDAF0)
/* C51C 8000B91C 8C42DAF0 */  lw         $v0, %lo(D_800CDAF0)($v0)
/* C520 8000B920 00431024 */  and        $v0, $v0, $v1
/* C524 8000B924 3C01800D */  lui        $at, %hi(D_800CDAF0)
/* C528 8000B928 08002E60 */  j          .L8000B980
/* C52C 8000B92C AC22DAF0 */   sw        $v0, %lo(D_800CDAF0)($at)
.L8000B930:
/* C530 8000B930 1440000F */  bnez       $v0, .L8000B970
/* C534 8000B934 02202021 */   addu      $a0, $s1, $zero
/* C538 8000B938 2602C000 */  addiu      $v0, $s0, -0x4000
/* C53C 8000B93C 3C01800D */  lui        $at, %hi(D_800CD9C0)
/* C540 8000B940 AC22D9C0 */  sw         $v0, %lo(D_800CD9C0)($at)
/* C544 8000B944 3C02800D */  lui        $v0, %hi(D_800CDAF0)
/* C548 8000B948 8C42DAF0 */  lw         $v0, %lo(D_800CDAF0)($v0)
/* C54C 8000B94C 34420100 */  ori        $v0, $v0, 0x100
/* C550 8000B950 3C01800D */  lui        $at, %hi(D_800CDAF0)
/* C554 8000B954 AC22DAF0 */  sw         $v0, %lo(D_800CDAF0)($at)
/* C558 8000B958 3C05800D */  lui        $a1, %hi(D_800CDAD0)
/* C55C 8000B95C 8CA5DAD0 */  lw         $a1, %lo(D_800CDAD0)($a1)
/* C560 8000B960 0C002B60 */  jal        func_8000AD80
/* C564 8000B964 24064000 */   addiu     $a2, $zero, 0x4000
/* C568 8000B968 08002EC6 */  j          .L8000BB18
/* C56C 8000B96C 00000000 */   nop
.L8000B970:
/* C570 8000B970 3C05800D */  lui        $a1, %hi(D_800CDAD0)
/* C574 8000B974 8CA5DAD0 */  lw         $a1, %lo(D_800CDAD0)($a1)
/* C578 8000B978 0C002B60 */  jal        func_8000AD80
/* C57C 8000B97C 02003021 */   addu      $a2, $s0, $zero
.L8000B980:
/* C580 8000B980 3C04800D */  lui        $a0, %hi(D_800CDAD0)
/* C584 8000B984 8C84DAD0 */  lw         $a0, %lo(D_800CDAD0)($a0)
/* C588 8000B988 0C0224B8 */  jal        func_800892E0
/* C58C 8000B98C 02402821 */   addu      $a1, $s2, $zero
/* C590 8000B990 3C01800D */  lui        $at, %hi(D_800CDAE8)
/* C594 8000B994 08002EC6 */  j          .L8000BB18
/* C598 8000B998 AC31DAE8 */   sw        $s1, %lo(D_800CDAE8)($at)
.L8000B99C:
/* C59C 8000B99C 3C03800D */  lui        $v1, %hi(D_800CDAF0)
/* C5A0 8000B9A0 8C63DAF0 */  lw         $v1, %lo(D_800CDAF0)($v1)
/* C5A4 8000B9A4 30620200 */  andi       $v0, $v1, 0x200
/* C5A8 8000B9A8 14400021 */  bnez       $v0, .L8000BA30
/* C5AC 8000B9AC 00041080 */   sll       $v0, $a0, 2
/* C5B0 8000B9B0 34620200 */  ori        $v0, $v1, 0x200
/* C5B4 8000B9B4 3C01800D */  lui        $at, %hi(D_800CDAF0)
/* C5B8 8000B9B8 AC22DAF0 */  sw         $v0, %lo(D_800CDAF0)($at)
/* C5BC 8000B9BC 3C04800D */  lui        $a0, %hi(D_800CDAE0)
/* C5C0 8000B9C0 8C84DAE0 */  lw         $a0, %lo(D_800CDAE0)($a0)
/* C5C4 8000B9C4 84830000 */  lh         $v1, ($a0)
/* C5C8 8000B9C8 28625333 */  slti       $v0, $v1, 0x5333
/* C5CC 8000B9CC 1040000C */  beqz       $v0, .L8000BA00
/* C5D0 8000B9D0 28625331 */   slti      $v0, $v1, 0x5331
/* C5D4 8000B9D4 1440000A */  bnez       $v0, .L8000BA00
/* C5D8 8000B9D8 00000000 */   nop
/* C5DC 8000B9DC 3C02800D */  lui        $v0, %hi(D_800CDAFC)
/* C5E0 8000B9E0 8442DAFC */  lh         $v0, %lo(D_800CDAFC)($v0)
/* C5E4 8000B9E4 000210C0 */  sll        $v0, $v0, 3
/* C5E8 8000B9E8 24420004 */  addiu      $v0, $v0, 4
/* C5EC 8000B9EC 00441021 */  addu       $v0, $v0, $a0
/* C5F0 8000B9F0 8C500004 */  lw         $s0, 4($v0)
/* C5F4 8000B9F4 8C440000 */  lw         $a0, ($v0)
/* C5F8 8000B9F8 08002E86 */  j          .L8000BA18
/* C5FC 8000B9FC 32060001 */   andi      $a2, $s0, 1
.L8000BA00:
/* C600 8000BA00 3C02800C */  lui        $v0, %hi(D_800C1878)
/* C604 8000BA04 24421878 */  addiu      $v0, $v0, %lo(D_800C1878)
/* C608 8000BA08 8C430000 */  lw         $v1, ($v0)
/* C60C 8000BA0C 8C44FFFC */  lw         $a0, -4($v0)
/* C610 8000BA10 00648023 */  subu       $s0, $v1, $a0
/* C614 8000BA14 32060001 */  andi       $a2, $s0, 1
.L8000BA18:
/* C618 8000BA18 3C05800D */  lui        $a1, %hi(D_800CDAD8)
/* C61C 8000BA1C 8CA5DAD8 */  lw         $a1, %lo(D_800CDAD8)($a1)
/* C620 8000BA20 0C002B60 */  jal        func_8000AD80
/* C624 8000BA24 02063021 */   addu      $a2, $s0, $a2
/* C628 8000BA28 08002EC6 */  j          .L8000BB18
/* C62C 8000BA2C 00000000 */   nop
.L8000BA30:
/* C630 8000BA30 3C03800D */  lui        $v1, %hi(D_800CDAD0)
/* C634 8000BA34 8C63DAD0 */  lw         $v1, %lo(D_800CDAD0)($v1)
/* C638 8000BA38 00431021 */  addu       $v0, $v0, $v1
/* C63C 8000BA3C 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* C640 8000BA40 8C84DAD4 */  lw         $a0, %lo(D_800CDAD4)($a0)
/* C644 8000BA44 0C02299C */  jal        func_8008A670
/* C648 8000BA48 8C450004 */   lw        $a1, 4($v0)
/* C64C 8000BA4C 3C04800D */  lui        $a0, %hi(D_800CDADC)
/* C650 8000BA50 8C84DADC */  lw         $a0, %lo(D_800CDADC)($a0)
/* C654 8000BA54 3C05800D */  lui        $a1, %hi(D_800CDAD8)
/* C658 8000BA58 0C022690 */  jal        func_80089A40
/* C65C 8000BA5C 8CA5DAD8 */   lw        $a1, %lo(D_800CDAD8)($a1)
/* C660 8000BA60 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* C664 8000BA64 8C84DAD4 */  lw         $a0, %lo(D_800CDAD4)($a0)
/* C668 8000BA68 3C05800D */  lui        $a1, %hi(D_800CDADC)
/* C66C 8000BA6C 0C0229BC */  jal        func_8008A6F0
/* C670 8000BA70 8CA5DADC */   lw        $a1, %lo(D_800CDADC)($a1)
/* C674 8000BA74 3C02800D */  lui        $v0, %hi(D_800CDAF0)
/* C678 8000BA78 8C42DAF0 */  lw         $v0, %lo(D_800CDAF0)($v0)
/* C67C 8000BA7C 30420008 */  andi       $v0, $v0, 8
/* C680 8000BA80 10400004 */  beqz       $v0, .L8000BA94
/* C684 8000BA84 00002821 */   addu      $a1, $zero, $zero
/* C688 8000BA88 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* C68C 8000BA8C 08002EB7 */  j          .L8000BADC
/* C690 8000BA90 8C84DAD4 */   lw        $a0, %lo(D_800CDAD4)($a0)
.L8000BA94:
/* C694 8000BA94 3C02800D */  lui        $v0, %hi(D_800CDB02)
/* C698 8000BA98 8442DB02 */  lh         $v0, %lo(D_800CDB02)($v0)
/* C69C 8000BA9C 3C03800D */  lui        $v1, %hi(D_800CDB00)
/* C6A0 8000BAA0 8463DB00 */  lh         $v1, %lo(D_800CDB00)($v1)
/* C6A4 8000BAA4 00430018 */  mult       $v0, $v1
/* C6A8 8000BAA8 00001012 */  mflo       $v0
/* C6AC 8000BAAC 3C038001 */  lui        $v1, 0x8001
/* C6B0 8000BAB0 34630003 */  ori        $v1, $v1, 3
/* C6B4 8000BAB4 00430018 */  mult       $v0, $v1
/* C6B8 8000BAB8 00003810 */  mfhi       $a3
/* C6BC 8000BABC 00E22821 */  addu       $a1, $a3, $v0
/* C6C0 8000BAC0 00052B83 */  sra        $a1, $a1, 0xe
/* C6C4 8000BAC4 000217C3 */  sra        $v0, $v0, 0x1f
/* C6C8 8000BAC8 00A22823 */  subu       $a1, $a1, $v0
/* C6CC 8000BACC 00052C00 */  sll        $a1, $a1, 0x10
/* C6D0 8000BAD0 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* C6D4 8000BAD4 8C84DAD4 */  lw         $a0, %lo(D_800CDAD4)($a0)
/* C6D8 8000BAD8 00052C03 */  sra        $a1, $a1, 0x10
.L8000BADC:
/* C6DC 8000BADC 0C0229DC */  jal        func_8008A770
/* C6E0 8000BAE0 00000000 */   nop
/* C6E4 8000BAE4 3C03800D */  lui        $v1, %hi(D_800CDAF0)
/* C6E8 8000BAE8 8C63DAF0 */  lw         $v1, %lo(D_800CDAF0)($v1)
/* C6EC 8000BAEC 30620002 */  andi       $v0, $v1, 2
/* C6F0 8000BAF0 10400003 */  beqz       $v0, .L8000BB00
/* C6F4 8000BAF4 2402FFFE */   addiu     $v0, $zero, -2
/* C6F8 8000BAF8 08002EC4 */  j          .L8000BB10
/* C6FC 8000BAFC 00621024 */   and       $v0, $v1, $v0
.L8000BB00:
/* C700 8000BB00 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* C704 8000BB04 0C022990 */  jal        func_8008A640
/* C708 8000BB08 8C84DAD4 */   lw        $a0, %lo(D_800CDAD4)($a0)
/* C70C 8000BB0C 34028000 */  ori        $v0, $zero, 0x8000
.L8000BB10:
/* C710 8000BB10 3C01800D */  lui        $at, %hi(D_800CDAF0)
/* C714 8000BB14 AC22DAF0 */  sw         $v0, %lo(D_800CDAF0)($at)
.L8000BB18:
/* C718 8000BB18 8FBF001C */  lw         $ra, 0x1c($sp)
/* C71C 8000BB1C 8FB20018 */  lw         $s2, 0x18($sp)
/* C720 8000BB20 8FB10014 */  lw         $s1, 0x14($sp)
/* C724 8000BB24 8FB00010 */  lw         $s0, 0x10($sp)
/* C728 8000BB28 03E00008 */  jr         $ra
/* C72C 8000BB2C 27BD0020 */   addiu     $sp, $sp, 0x20
