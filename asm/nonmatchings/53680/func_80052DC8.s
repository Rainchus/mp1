	.set noat
	.set noreorder

glabel func_80052DC8
/* 539C8 80052DC8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 539CC 80052DCC AFBF0020 */  sw         $ra, 0x20($sp)
/* 539D0 80052DD0 AFB3001C */  sw         $s3, 0x1c($sp)
/* 539D4 80052DD4 AFB20018 */  sw         $s2, 0x18($sp)
/* 539D8 80052DD8 AFB10014 */  sw         $s1, 0x14($sp)
/* 539DC 80052DDC AFB00010 */  sw         $s0, 0x10($sp)
/* 539E0 80052DE0 00A09821 */  addu       $s3, $a1, $zero
/* 539E4 80052DE4 00809021 */  addu       $s2, $a0, $zero
/* 539E8 80052DE8 00042400 */  sll        $a0, $a0, 0x10
/* 539EC 80052DEC 00048C03 */  sra        $s1, $a0, 0x10
/* 539F0 80052DF0 0C014AA3 */  jal        func_80052A8C
/* 539F4 80052DF4 02202021 */   addu      $a0, $s1, $zero
/* 539F8 80052DF8 00408021 */  addu       $s0, $v0, $zero
/* 539FC 80052DFC A2120018 */  sb         $s2, 0x18($s0)
/* 53A00 80052E00 3C02800E */  lui        $v0, %hi(D_800D8380)
/* 53A04 80052E04 84428380 */  lh         $v0, %lo(D_800D8380)($v0)
/* 53A08 80052E08 1040000A */  beqz       $v0, .L80052E34
/* 53A0C 80052E0C 00000000 */   nop
/* 53A10 80052E10 0C014AB3 */  jal        func_80052ACC
/* 53A14 80052E14 02202021 */   addu      $a0, $s1, $zero
/* 53A18 80052E18 00021400 */  sll        $v0, $v0, 0x10
/* 53A1C 80052E1C 14400005 */  bnez       $v0, .L80052E34
/* 53A20 80052E20 00122400 */   sll       $a0, $s2, 0x10
/* 53A24 80052E24 0C014BDB */  jal        func_80052F6C
/* 53A28 80052E28 00042403 */   sra       $a0, $a0, 0x10
/* 53A2C 80052E2C 08014B8F */  j          .L80052E3C
/* 53A30 80052E30 304400FF */   andi      $a0, $v0, 0xff
.L80052E34:
/* 53A34 80052E34 92020004 */  lbu        $v0, 4($s0)
/* 53A38 80052E38 304400FF */  andi       $a0, $v0, 0xff
.L80052E3C:
/* 53A3C 80052E3C 0C00F6F8 */  jal        func_8003DBE0
/* 53A40 80052E40 02602821 */   addu      $a1, $s3, $zero
/* 53A44 80052E44 AE020020 */  sw         $v0, 0x20($s0)
/* 53A48 80052E48 3C048005 */  lui        $a0, %hi(func_80052D34)
/* 53A4C 80052E4C 24842D34 */  addiu      $a0, $a0, %lo(func_80052D34)
/* 53A50 80052E50 24055000 */  addiu      $a1, $zero, 0x5000
/* 53A54 80052E54 00003021 */  addu       $a2, $zero, $zero
/* 53A58 80052E58 0C01770A */  jal        func_8005DC28
/* 53A5C 80052E5C 00003821 */   addu      $a3, $zero, $zero
/* 53A60 80052E60 AE02001C */  sw         $v0, 0x1c($s0)
/* 53A64 80052E64 AC50008C */  sw         $s0, 0x8c($v0)
/* 53A68 80052E68 8FBF0020 */  lw         $ra, 0x20($sp)
/* 53A6C 80052E6C 8FB3001C */  lw         $s3, 0x1c($sp)
/* 53A70 80052E70 8FB20018 */  lw         $s2, 0x18($sp)
/* 53A74 80052E74 8FB10014 */  lw         $s1, 0x14($sp)
/* 53A78 80052E78 8FB00010 */  lw         $s0, 0x10($sp)
/* 53A7C 80052E7C 03E00008 */  jr         $ra
/* 53A80 80052E80 27BD0028 */   addiu     $sp, $sp, 0x28
