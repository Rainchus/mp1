	.set noat
	.set noreorder

glabel func_8005AC50
/* 5B850 8005AC50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5B854 8005AC54 AFBF0010 */  sw         $ra, 0x10($sp)
/* 5B858 8005AC58 3C02800C */  lui        $v0, %hi(D_800C5810)
/* 5B85C 8005AC5C 8C425810 */  lw         $v0, %lo(D_800C5810)($v0)
/* 5B860 8005AC60 1040000E */  beqz       $v0, .L8005AC9C
/* 5B864 8005AC64 00000000 */   nop
/* 5B868 8005AC68 3C02800C */  lui        $v0, %hi(D_800C5814)
/* 5B86C 8005AC6C 8C425814 */  lw         $v0, %lo(D_800C5814)($v0)
/* 5B870 8005AC70 2442000F */  addiu      $v0, $v0, 0xf
/* 5B874 8005AC74 3C01800C */  lui        $at, %hi(D_800C5814)
/* 5B878 8005AC78 AC225814 */  sw         $v0, %lo(D_800C5814)($at)
/* 5B87C 8005AC7C 28420164 */  slti       $v0, $v0, 0x164
/* 5B880 8005AC80 14400013 */  bnez       $v0, .L8005ACD0
/* 5B884 8005AC84 24020163 */   addiu     $v0, $zero, 0x163
/* 5B888 8005AC88 3C01800C */  lui        $at, %hi(D_800C5814)
/* 5B88C 8005AC8C AC225814 */  sw         $v0, %lo(D_800C5814)($at)
/* 5B890 8005AC90 3C01800C */  lui        $at, %hi(D_800C5810)
/* 5B894 8005AC94 08016B34 */  j          .L8005ACD0
/* 5B898 8005AC98 AC205810 */   sw        $zero, %lo(D_800C5810)($at)
.L8005AC9C:
/* 5B89C 8005AC9C 3C02800C */  lui        $v0, %hi(D_800C5814)
/* 5B8A0 8005ACA0 8C425814 */  lw         $v0, %lo(D_800C5814)($v0)
/* 5B8A4 8005ACA4 2442FFF1 */  addiu      $v0, $v0, -0xf
/* 5B8A8 8005ACA8 3C01800C */  lui        $at, %hi(D_800C5814)
/* 5B8AC 8005ACAC AC225814 */  sw         $v0, %lo(D_800C5814)($at)
/* 5B8B0 8005ACB0 28420064 */  slti       $v0, $v0, 0x64
/* 5B8B4 8005ACB4 10400006 */  beqz       $v0, .L8005ACD0
/* 5B8B8 8005ACB8 24020064 */   addiu     $v0, $zero, 0x64
/* 5B8BC 8005ACBC 3C01800C */  lui        $at, %hi(D_800C5814)
/* 5B8C0 8005ACC0 AC225814 */  sw         $v0, %lo(D_800C5814)($at)
/* 5B8C4 8005ACC4 24020001 */  addiu      $v0, $zero, 1
/* 5B8C8 8005ACC8 3C01800C */  lui        $at, %hi(D_800C5810)
/* 5B8CC 8005ACCC AC225810 */  sw         $v0, %lo(D_800C5810)($at)
.L8005ACD0:
/* 5B8D0 8005ACD0 3C02800C */  lui        $v0, %hi(D_800C5814)
/* 5B8D4 8005ACD4 8C425814 */  lw         $v0, %lo(D_800C5814)($v0)
/* 5B8D8 8005ACD8 28420100 */  slti       $v0, $v0, 0x100
/* 5B8DC 8005ACDC 14400005 */  bnez       $v0, .L8005ACF4
/* 5B8E0 8005ACE0 00002821 */   addu      $a1, $zero, $zero
/* 5B8E4 8005ACE4 3C04800E */  lui        $a0, %hi(D_800D8904)
/* 5B8E8 8005ACE8 84848904 */  lh         $a0, %lo(D_800D8904)($a0)
/* 5B8EC 8005ACEC 08016B41 */  j          .L8005AD04
/* 5B8F0 8005ACF0 240600FF */   addiu     $a2, $zero, 0xff
.L8005ACF4:
/* 5B8F4 8005ACF4 3C04800E */  lui        $a0, %hi(D_800D8904)
/* 5B8F8 8005ACF8 84848904 */  lh         $a0, %lo(D_800D8904)($a0)
/* 5B8FC 8005ACFC 3C06800C */  lui        $a2, %hi(D_800C5816)
/* 5B900 8005AD00 94C65816 */  lhu        $a2, %lo(D_800C5816)($a2)
.L8005AD04:
/* 5B904 8005AD04 0C019D4B */  jal        func_8006752C
/* 5B908 8005AD08 00000000 */   nop
/* 5B90C 8005AD0C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5B910 8005AD10 03E00008 */  jr         $ra
/* 5B914 8005AD14 27BD0018 */   addiu     $sp, $sp, 0x18
