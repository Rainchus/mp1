	.set noat
	.set noreorder

glabel func_8005C2B0
/* 5CEB0 8005C2B0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5CEB4 8005C2B4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 5CEB8 8005C2B8 3C02800E */  lui        $v0, %hi(D_800D8954)
/* 5CEBC 8005C2BC 84428954 */  lh         $v0, %lo(D_800D8954)($v0)
/* 5CEC0 8005C2C0 1040000F */  beqz       $v0, .L8005C300
/* 5CEC4 8005C2C4 00401821 */   addu      $v1, $v0, $zero
/* 5CEC8 8005C2C8 2462FFFF */  addiu      $v0, $v1, -1
/* 5CECC 8005C2CC 3C01800E */  lui        $at, %hi(D_800D8954)
/* 5CED0 8005C2D0 A4228954 */  sh         $v0, %lo(D_800D8954)($at)
/* 5CED4 8005C2D4 00021400 */  sll        $v0, $v0, 0x10
/* 5CED8 8005C2D8 00021343 */  sra        $v0, $v0, 0xd
/* 5CEDC 8005C2DC 3C03800E */  lui        $v1, %hi(D_800D8958)
/* 5CEE0 8005C2E0 24638958 */  addiu      $v1, $v1, %lo(D_800D8958)
/* 5CEE4 8005C2E4 00431021 */  addu       $v0, $v0, $v1
/* 5CEE8 8005C2E8 8C440000 */  lw         $a0, ($v0)
/* 5CEEC 8005C2EC 84450004 */  lh         $a1, 4($v0)
/* 5CEF0 8005C2F0 0C0177D1 */  jal        func_8005DF44
/* 5CEF4 8005C2F4 94460006 */   lhu       $a2, 6($v0)
/* 5CEF8 8005C2F8 080170DE */  j          .L8005C378
/* 5CEFC 8005C2FC 00000000 */   nop
.L8005C300:
/* 5CF00 8005C300 3C02800E */  lui        $v0, %hi(D_800D8950)
/* 5CF04 8005C304 84428950 */  lh         $v0, %lo(D_800D8950)($v0)
/* 5CF08 8005C308 10400017 */  beqz       $v0, .L8005C368
/* 5CF0C 8005C30C 00000000 */   nop
/* 5CF10 8005C310 0C017392 */  jal        func_8005CE48
/* 5CF14 8005C314 24040005 */   addiu     $a0, $zero, 5
/* 5CF18 8005C318 10400005 */  beqz       $v0, .L8005C330
/* 5CF1C 8005C31C 00000000 */   nop
/* 5CF20 8005C320 0C0173B7 */  jal        func_8005CEDC
/* 5CF24 8005C324 24040005 */   addiu     $a0, $zero, 5
/* 5CF28 8005C328 0C0165F7 */  jal        func_800597DC
/* 5CF2C 8005C32C 2404002F */   addiu     $a0, $zero, 0x2f
.L8005C330:
/* 5CF30 8005C330 3C02800F */  lui        $v0, %hi(D_800F37BA)
/* 5CF34 8005C334 804237BA */  lb         $v0, %lo(D_800F37BA)($v0)
/* 5CF38 8005C338 00021080 */  sll        $v0, $v0, 2
/* 5CF3C 8005C33C 3C04800C */  lui        $a0, %hi(D_800C58C0)
/* 5CF40 8005C340 00822021 */  addu       $a0, $a0, $v0
/* 5CF44 8005C344 8C8458C0 */  lw         $a0, %lo(D_800C58C0)($a0)
/* 5CF48 8005C348 3C05800E */  lui        $a1, %hi(D_800D8952)
/* 5CF4C 8005C34C 84A58952 */  lh         $a1, %lo(D_800D8952)($a1)
/* 5CF50 8005C350 0C0177D1 */  jal        func_8005DF44
/* 5CF54 8005C354 24060092 */   addiu     $a2, $zero, 0x92
/* 5CF58 8005C358 24020002 */  addiu      $v0, $zero, 2
/* 5CF5C 8005C35C 3C01800E */  lui        $at, %hi(D_800D8952)
/* 5CF60 8005C360 080170DE */  j          .L8005C378
/* 5CF64 8005C364 A4228952 */   sh        $v0, %lo(D_800D8952)($at)
.L8005C368:
/* 5CF68 8005C368 0C01660B */  jal        func_8005982C
/* 5CF6C 8005C36C 2404002B */   addiu     $a0, $zero, 0x2b
/* 5CF70 8005C370 0C0177EE */  jal        func_8005DFB8
/* 5CF74 8005C374 24040001 */   addiu     $a0, $zero, 1
.L8005C378:
/* 5CF78 8005C378 8FBF0018 */  lw         $ra, 0x18($sp)
/* 5CF7C 8005C37C 03E00008 */  jr         $ra
/* 5CF80 8005C380 27BD0020 */   addiu     $sp, $sp, 0x20
