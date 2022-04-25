	.set noat
	.set noreorder

glabel func_8000A534
/* B134 8000A534 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B138 8000A538 AFBF0020 */  sw         $ra, 0x20($sp)
/* B13C 8000A53C AFB3001C */  sw         $s3, 0x1c($sp)
/* B140 8000A540 AFB20018 */  sw         $s2, 0x18($sp)
/* B144 8000A544 AFB10014 */  sw         $s1, 0x14($sp)
/* B148 8000A548 AFB00010 */  sw         $s0, 0x10($sp)
/* B14C 8000A54C F7B40028 */  sdc1       $f20, 0x28($sp)
/* B150 8000A550 00809821 */  addu       $s3, $a0, $zero
/* B154 8000A554 4485A000 */  mtc1       $a1, $f20
/* B158 8000A558 8E720050 */  lw         $s2, 0x50($s3)
/* B15C 8000A55C 96430050 */  lhu        $v1, 0x50($s2)
/* B160 8000A560 30620020 */  andi       $v0, $v1, 0x20
/* B164 8000A564 1040002B */  beqz       $v0, .L8000A614
/* B168 8000A568 3062FEDF */   andi      $v0, $v1, 0xfedf
/* B16C 8000A56C 8E5100B8 */  lw         $s1, 0xb8($s2)
/* B170 8000A570 8E300050 */  lw         $s0, 0x50($s1)
/* B174 8000A574 A6420050 */  sh         $v0, 0x50($s2)
/* B178 8000A578 96020050 */  lhu        $v0, 0x50($s0)
/* B17C 8000A57C 3042FFDF */  andi       $v0, $v0, 0xffdf
/* B180 8000A580 A6020050 */  sh         $v0, 0x50($s0)
/* B184 8000A584 8E220040 */  lw         $v0, 0x40($s1)
/* B188 8000A588 84440000 */  lh         $a0, ($v0)
/* B18C 8000A58C 24054000 */  addiu      $a1, $zero, 0x4000
/* B190 8000A590 0C00963B */  jal        func_800258EC
/* B194 8000A594 00003021 */   addu      $a2, $zero, $zero
/* B198 8000A598 8E620040 */  lw         $v0, 0x40($s3)
/* B19C 8000A59C 0C00A139 */  jal        func_800284E4
/* B1A0 8000A5A0 84440000 */   lh        $a0, ($v0)
/* B1A4 8000A5A4 3C01800C */  lui        $at, %hi(D_800B8964)
/* B1A8 8000A5A8 C4208964 */  lwc1       $f0, %lo(D_800B8964)($at)
/* B1AC 8000A5AC 46000007 */  neg.s      $f0, $f0
/* B1B0 8000A5B0 3C013F4C */  lui        $at, 0x3f4c
/* B1B4 8000A5B4 3421CCCD */  ori        $at, $at, 0xcccd
/* B1B8 8000A5B8 44811000 */  mtc1       $at, $f2
/* B1BC 8000A5BC 00000000 */  nop
/* B1C0 8000A5C0 46020002 */  mul.s      $f0, $f0, $f2
/* B1C4 8000A5C4 E6000038 */  swc1       $f0, 0x38($s0)
/* B1C8 8000A5C8 C640003C */  lwc1       $f0, 0x3c($s2)
/* B1CC 8000A5CC E600003C */  swc1       $f0, 0x3c($s0)
/* B1D0 8000A5D0 E6140040 */  swc1       $f20, 0x40($s0)
/* B1D4 8000A5D4 AE000064 */  sw         $zero, 0x64($s0)
/* B1D8 8000A5D8 C6600018 */  lwc1       $f0, 0x18($s3)
/* B1DC 8000A5DC E6200018 */  swc1       $f0, 0x18($s1)
/* B1E0 8000A5E0 C6400034 */  lwc1       $f0, 0x34($s2)
/* B1E4 8000A5E4 C6020048 */  lwc1       $f2, 0x48($s0)
/* B1E8 8000A5E8 46020000 */  add.s      $f0, $f0, $f2
/* B1EC 8000A5EC C662001C */  lwc1       $f2, 0x1c($s3)
/* B1F0 8000A5F0 46020000 */  add.s      $f0, $f0, $f2
/* B1F4 8000A5F4 E620001C */  swc1       $f0, 0x1c($s1)
/* B1F8 8000A5F8 C6600020 */  lwc1       $f0, 0x20($s3)
/* B1FC 8000A5FC E6200020 */  swc1       $f0, 0x20($s1)
/* B200 8000A600 AE4000B8 */  sw         $zero, 0xb8($s2)
/* B204 8000A604 3C013F80 */  lui        $at, 0x3f80
/* B208 8000A608 44810000 */  mtc1       $at, $f0
/* B20C 8000A60C 00000000 */  nop
/* B210 8000A610 E64000A4 */  swc1       $f0, 0xa4($s2)
.L8000A614:
/* B214 8000A614 8FBF0020 */  lw         $ra, 0x20($sp)
/* B218 8000A618 8FB3001C */  lw         $s3, 0x1c($sp)
/* B21C 8000A61C 8FB20018 */  lw         $s2, 0x18($sp)
/* B220 8000A620 8FB10014 */  lw         $s1, 0x14($sp)
/* B224 8000A624 8FB00010 */  lw         $s0, 0x10($sp)
/* B228 8000A628 D7B40028 */  ldc1       $f20, 0x28($sp)
/* B22C 8000A62C 03E00008 */  jr         $ra
/* B230 8000A630 27BD0030 */   addiu     $sp, $sp, 0x30
