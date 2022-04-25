	.set noat
	.set noreorder

glabel func_8000F078
/* FC78 8000F078 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FC7C 8000F07C AFBF0010 */  sw         $ra, 0x10($sp)
/* FC80 8000F080 3C04800D */  lui        $a0, %hi(D_800CEA9C)
/* FC84 8000F084 8C84EA9C */  lw         $a0, %lo(D_800CEA9C)($a0)
/* FC88 8000F088 0C002BE8 */  jal        func_8000AFA0
/* FC8C 8000F08C 00042100 */   sll       $a0, $a0, 4
/* FC90 8000F090 3C01800D */  lui        $at, %hi(D_800CEAC4)
/* FC94 8000F094 AC22EAC4 */  sw         $v0, %lo(D_800CEAC4)($at)
/* FC98 8000F098 1040001B */  beqz       $v0, .L8000F108
/* FC9C 8000F09C 2402000A */   addiu     $v0, $zero, 0xa
/* FCA0 8000F0A0 3C014248 */  lui        $at, 0x4248
/* FCA4 8000F0A4 44810000 */  mtc1       $at, $f0
/* FCA8 8000F0A8 3C01800D */  lui        $at, %hi(D_800CEAC8)
/* FCAC 8000F0AC E420EAC8 */  swc1       $f0, %lo(D_800CEAC8)($at)
/* FCB0 8000F0B0 3C0143FA */  lui        $at, 0x43fa
/* FCB4 8000F0B4 44810000 */  mtc1       $at, $f0
/* FCB8 8000F0B8 3C01800D */  lui        $at, %hi(D_800CEACC)
/* FCBC 8000F0BC E420EACC */  swc1       $f0, %lo(D_800CEACC)($at)
/* FCC0 8000F0C0 3C01800D */  lui        $at, %hi(D_800CEAD0)
/* FCC4 8000F0C4 AC20EAD0 */  sw         $zero, %lo(D_800CEAD0)($at)
/* FCC8 8000F0C8 3C01800D */  lui        $at, %hi(D_800CEAD4)
/* FCCC 8000F0CC AC20EAD4 */  sw         $zero, %lo(D_800CEAD4)($at)
/* FCD0 8000F0D0 3C01800D */  lui        $at, %hi(D_800CEAD8)
/* FCD4 8000F0D4 A420EAD8 */  sh         $zero, %lo(D_800CEAD8)($at)
/* FCD8 8000F0D8 3C01800D */  lui        $at, %hi(D_800CEADA)
/* FCDC 8000F0DC A422EADA */  sh         $v0, %lo(D_800CEADA)($at)
/* FCE0 8000F0E0 3C014499 */  lui        $at, 0x4499
/* FCE4 8000F0E4 44810000 */  mtc1       $at, $f0
/* FCE8 8000F0E8 3C01800D */  lui        $at, %hi(D_800CEADC)
/* FCEC 8000F0EC E420EADC */  swc1       $f0, %lo(D_800CEADC)($at)
/* FCF0 8000F0F0 3C013F80 */  lui        $at, 0x3f80
/* FCF4 8000F0F4 44810000 */  mtc1       $at, $f0
/* FCF8 8000F0F8 3C01800D */  lui        $at, %hi(D_800CEAE0)
/* FCFC 8000F0FC E420EAE0 */  swc1       $f0, %lo(D_800CEAE0)($at)
/* FD00 8000F100 08003C43 */  j          .L8000F10C
/* FD04 8000F104 00001021 */   addu      $v0, $zero, $zero
.L8000F108:
/* FD08 8000F108 24020001 */  addiu      $v0, $zero, 1
.L8000F10C:
/* FD0C 8000F10C 8FBF0010 */  lw         $ra, 0x10($sp)
/* FD10 8000F110 03E00008 */  jr         $ra
/* FD14 8000F114 27BD0018 */   addiu     $sp, $sp, 0x18
