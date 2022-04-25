	.set noat
	.set noreorder

glabel func_8005CC3C
/* 5D83C 8005CC3C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5D840 8005CC40 AFBF0010 */  sw         $ra, 0x10($sp)
/* 5D844 8005CC44 0C014AA3 */  jal        func_80052A8C
/* 5D848 8005CC48 00002021 */   addu      $a0, $zero, $zero
/* 5D84C 8005CC4C 9444000E */  lhu        $a0, 0xe($v0)
/* 5D850 8005CC50 0C013081 */  jal        func_8004C204
/* 5D854 8005CC54 94450010 */   lhu       $a1, 0x10($v0)
/* 5D858 8005CC58 00021400 */  sll        $v0, $v0, 0x10
/* 5D85C 8005CC5C 00002021 */  addu       $a0, $zero, $zero
/* 5D860 8005CC60 0C013323 */  jal        func_8004CC8C
/* 5D864 8005CC64 00022C03 */   sra       $a1, $v0, 0x10
/* 5D868 8005CC68 0C012944 */  jal        func_8004A510
/* 5D86C 8005CC6C 00000000 */   nop
/* 5D870 8005CC70 3C013F80 */  lui        $at, 0x3f80
/* 5D874 8005CC74 44816000 */  mtc1       $at, $f12
/* 5D878 8005CC78 0C012D71 */  jal        func_8004B5C4
/* 5D87C 8005CC7C 00000000 */   nop
/* 5D880 8005CC80 3C01BF80 */  lui        $at, 0xbf80
/* 5D884 8005CC84 44816000 */  mtc1       $at, $f12
/* 5D888 8005CC88 0C012E0E */  jal        func_8004B838
/* 5D88C 8005CC8C 00000000 */   nop
/* 5D890 8005CC90 0C0095E3 */  jal        func_8002578C
/* 5D894 8005CC94 24040001 */   addiu     $a0, $zero, 1
/* 5D898 8005CC98 240400FF */  addiu      $a0, $zero, 0xff
/* 5D89C 8005CC9C 0C01C991 */  jal        func_80072644
/* 5D8A0 8005CCA0 24050010 */   addiu     $a1, $zero, 0x10
/* 5D8A4 8005CCA4 3C03800F */  lui        $v1, %hi(D_800ED5DC)
/* 5D8A8 8005CCA8 8463D5DC */  lh         $v1, %lo(D_800ED5DC)($v1)
/* 5D8AC 8005CCAC 00031040 */  sll        $v0, $v1, 1
/* 5D8B0 8005CCB0 00431021 */  addu       $v0, $v0, $v1
/* 5D8B4 8005CCB4 00021100 */  sll        $v0, $v0, 4
/* 5D8B8 8005CCB8 3C04800F */  lui        $a0, %hi(D_800F32D0)
/* 5D8BC 8005CCBC 00822021 */  addu       $a0, $a0, $v0
/* 5D8C0 8005CCC0 8C8432D0 */  lw         $a0, %lo(D_800F32D0)($a0)
/* 5D8C4 8005CCC4 0C012D77 */  jal        func_8004B5DC
/* 5D8C8 8005CCC8 2484000C */   addiu     $a0, $a0, 0xc
/* 5D8CC 8005CCCC 3C048006 */  lui        $a0, %hi(func_8005C834)
/* 5D8D0 8005CCD0 2484C834 */  addiu      $a0, $a0, %lo(func_8005C834)
/* 5D8D4 8005CCD4 3405EFFF */  ori        $a1, $zero, 0xefff
/* 5D8D8 8005CCD8 00003021 */  addu       $a2, $zero, $zero
/* 5D8DC 8005CCDC 0C01770A */  jal        func_8005DC28
/* 5D8E0 8005CCE0 00003821 */   addu      $a3, $zero, $zero
/* 5D8E4 8005CCE4 3C048006 */  lui        $a0, %hi(func_8005C6F8)
/* 5D8E8 8005CCE8 2484C6F8 */  addiu      $a0, $a0, %lo(func_8005C6F8)
/* 5D8EC 8005CCEC 24051005 */  addiu      $a1, $zero, 0x1005
/* 5D8F0 8005CCF0 00003021 */  addu       $a2, $zero, $zero
/* 5D8F4 8005CCF4 0C01770A */  jal        func_8005DC28
/* 5D8F8 8005CCF8 00003821 */   addu      $a3, $zero, $zero
/* 5D8FC 8005CCFC 3C048006 */  lui        $a0, %hi(func_8005C624)
/* 5D900 8005CD00 2484C624 */  addiu      $a0, $a0, %lo(func_8005C624)
/* 5D904 8005CD04 24051005 */  addiu      $a1, $zero, 0x1005
/* 5D908 8005CD08 00003021 */  addu       $a2, $zero, $zero
/* 5D90C 8005CD0C 0C01770A */  jal        func_8005DC28
/* 5D910 8005CD10 00003821 */   addu      $a3, $zero, $zero
/* 5D914 8005CD14 0C01717A */  jal        func_8005C5E8
/* 5D918 8005CD18 24040001 */   addiu     $a0, $zero, 1
/* 5D91C 8005CD1C 0C003128 */  jal        func_8000C4A0
/* 5D920 8005CD20 00000000 */   nop
/* 5D924 8005CD24 00021600 */  sll        $v0, $v0, 0x18
/* 5D928 8005CD28 00021603 */  sra        $v0, $v0, 0x18
/* 5D92C 8005CD2C 2842007F */  slti       $v0, $v0, 0x7f
/* 5D930 8005CD30 10400003 */  beqz       $v0, .L8005CD40
/* 5D934 8005CD34 00000000 */   nop
/* 5D938 8005CD38 0C010883 */  jal        func_8004220C
/* 5D93C 8005CD3C 00000000 */   nop
.L8005CD40:
/* 5D940 8005CD40 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5D944 8005CD44 03E00008 */  jr         $ra
/* 5D948 8005CD48 27BD0018 */   addiu     $sp, $sp, 0x18
