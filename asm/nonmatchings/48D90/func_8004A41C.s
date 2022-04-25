	.set noat
	.set noreorder

glabel func_8004A41C
/* 4B01C 8004A41C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4B020 8004A420 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4B024 8004A424 3C04800D */  lui        $a0, %hi(D_800D6AF0)
/* 4B028 8004A428 24846AF0 */  addiu      $a0, $a0, %lo(D_800D6AF0)
/* 4B02C 8004A42C 3C05800D */  lui        $a1, %hi(D_800D6B08)
/* 4B030 8004A430 24A56B08 */  addiu      $a1, $a1, %lo(D_800D6B08)
/* 4B034 8004A434 0C022188 */  jal        func_80088620
/* 4B038 8004A438 24060028 */   addiu     $a2, $zero, 0x28
/* 4B03C 8004A43C 3C04800D */  lui        $a0, %hi(D_800D7F20)
/* 4B040 8004A440 24847F20 */  addiu      $a0, $a0, %lo(D_800D7F20)
/* 4B044 8004A444 3C05800D */  lui        $a1, %hi(D_800D7F38)
/* 4B048 8004A448 24A57F38 */  addiu      $a1, $a1, %lo(D_800D7F38)
/* 4B04C 8004A44C 0C022188 */  jal        func_80088620
/* 4B050 8004A450 24060028 */   addiu     $a2, $zero, 0x28
/* 4B054 8004A454 3C04800D */  lui        $a0, %hi(D_800D7FD8)
/* 4B058 8004A458 24847FD8 */  addiu      $a0, $a0, %lo(D_800D7FD8)
/* 4B05C 8004A45C 3C05800D */  lui        $a1, %hi(D_800D7FF0)
/* 4B060 8004A460 24A57FF0 */  addiu      $a1, $a1, %lo(D_800D7FF0)
/* 4B064 8004A464 0C022188 */  jal        func_80088620
/* 4B068 8004A468 24060028 */   addiu     $a2, $zero, 0x28
/* 4B06C 8004A46C 3C04800E */  lui        $a0, %hi(D_800D8090)
/* 4B070 8004A470 24848090 */  addiu      $a0, $a0, %lo(D_800D8090)
/* 4B074 8004A474 3C05800E */  lui        $a1, %hi(D_800D80A8)
/* 4B078 8004A478 24A580A8 */  addiu      $a1, $a1, %lo(D_800D80A8)
/* 4B07C 8004A47C 0C022188 */  jal        func_80088620
/* 4B080 8004A480 24060002 */   addiu     $a2, $zero, 2
/* 4B084 8004A484 24030001 */  addiu      $v1, $zero, 1
/* 4B088 8004A488 3C01800D */  lui        $at, %hi(D_800D7710)
/* 4B08C 8004A48C AC237710 */  sw         $v1, %lo(D_800D7710)($at)
/* 4B090 8004A490 3C02800D */  lui        $v0, %hi(D_800D7F20)
/* 4B094 8004A494 24427F20 */  addiu      $v0, $v0, %lo(D_800D7F20)
/* 4B098 8004A498 AFA20010 */  sw         $v0, 0x10($sp)
/* 4B09C 8004A49C AFA30014 */  sw         $v1, 0x14($sp)
/* 4B0A0 8004A4A0 3C04800D */  lui        $a0, %hi(D_800D7560)
/* 4B0A4 8004A4A4 24847560 */  addiu      $a0, $a0, %lo(D_800D7560)
/* 4B0A8 8004A4A8 24050064 */  addiu      $a1, $zero, 0x64
/* 4B0AC 8004A4AC 3C068005 */  lui        $a2, %hi(func_8004A394)
/* 4B0B0 8004A4B0 24C6A394 */  addiu      $a2, $a2, %lo(func_8004A394)
/* 4B0B4 8004A4B4 0C022194 */  jal        func_80088650
/* 4B0B8 8004A4B8 00003821 */   addu      $a3, $zero, $zero
/* 4B0BC 8004A4BC 3C04800D */  lui        $a0, %hi(D_800D7560)
/* 4B0C0 8004A4C0 0C022344 */  jal        func_80088D10
/* 4B0C4 8004A4C4 24847560 */   addiu     $a0, $a0, %lo(D_800D7560)
/* 4B0C8 8004A4C8 3C02800D */  lui        $v0, %hi(D_800D7560)
/* 4B0CC 8004A4CC 24427560 */  addiu      $v0, $v0, %lo(D_800D7560)
/* 4B0D0 8004A4D0 AFA20010 */  sw         $v0, 0x10($sp)
/* 4B0D4 8004A4D4 24020004 */  addiu      $v0, $zero, 4
/* 4B0D8 8004A4D8 AFA20014 */  sw         $v0, 0x14($sp)
/* 4B0DC 8004A4DC 3C04800D */  lui        $a0, %hi(D_800D6BA8)
/* 4B0E0 8004A4E0 24846BA8 */  addiu      $a0, $a0, %lo(D_800D6BA8)
/* 4B0E4 8004A4E4 24050065 */  addiu      $a1, $zero, 0x65
/* 4B0E8 8004A4E8 3C068005 */  lui        $a2, %hi(func_8004A31C)
/* 4B0EC 8004A4EC 24C6A31C */  addiu      $a2, $a2, %lo(func_8004A31C)
/* 4B0F0 8004A4F0 0C022194 */  jal        func_80088650
/* 4B0F4 8004A4F4 00003821 */   addu      $a3, $zero, $zero
/* 4B0F8 8004A4F8 3C04800D */  lui        $a0, %hi(D_800D6BA8)
/* 4B0FC 8004A4FC 0C022344 */  jal        func_80088D10
/* 4B100 8004A500 24846BA8 */   addiu     $a0, $a0, %lo(D_800D6BA8)
/* 4B104 8004A504 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4B108 8004A508 03E00008 */  jr         $ra
/* 4B10C 8004A50C 27BD0020 */   addiu     $sp, $sp, 0x20
