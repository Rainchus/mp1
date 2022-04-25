	.set noat
	.set noreorder

glabel func_8005A2B8
/* 5AEB8 8005A2B8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 5AEBC 8005A2BC AFBF0034 */  sw         $ra, 0x34($sp)
/* 5AEC0 8005A2C0 AFB60030 */  sw         $s6, 0x30($sp)
/* 5AEC4 8005A2C4 AFB5002C */  sw         $s5, 0x2c($sp)
/* 5AEC8 8005A2C8 AFB40028 */  sw         $s4, 0x28($sp)
/* 5AECC 8005A2CC AFB30024 */  sw         $s3, 0x24($sp)
/* 5AED0 8005A2D0 AFB20020 */  sw         $s2, 0x20($sp)
/* 5AED4 8005A2D4 AFB1001C */  sw         $s1, 0x1c($sp)
/* 5AED8 8005A2D8 AFB00018 */  sw         $s0, 0x18($sp)
/* 5AEDC 8005A2DC 00A09821 */  addu       $s3, $a1, $zero
/* 5AEE0 8005A2E0 00808021 */  addu       $s0, $a0, $zero
/* 5AEE4 8005A2E4 00042400 */  sll        $a0, $a0, 0x10
/* 5AEE8 8005A2E8 0C01B758 */  jal        func_8006DD60
/* 5AEEC 8005A2EC 00042403 */   sra       $a0, $a0, 0x10
/* 5AEF0 8005A2F0 A0400004 */  sb         $zero, 4($v0)
/* 5AEF4 8005A2F4 A0400003 */  sb         $zero, 3($v0)
/* 5AEF8 8005A2F8 24030001 */  addiu      $v1, $zero, 1
/* 5AEFC 8005A2FC A0430009 */  sb         $v1, 9($v0)
/* 5AF00 8005A300 24030004 */  addiu      $v1, $zero, 4
/* 5AF04 8005A304 A043000A */  sb         $v1, 0xa($v0)
/* 5AF08 8005A308 84440044 */  lh         $a0, 0x44($v0)
/* 5AF0C 8005A30C 00002821 */  addu       $a1, $zero, $zero
/* 5AF10 8005A310 0C019D4B */  jal        func_8006752C
/* 5AF14 8005A314 240600C8 */   addiu     $a2, $zero, 0xc8
/* 5AF18 8005A318 24020001 */  addiu      $v0, $zero, 1
/* 5AF1C 8005A31C 1040005E */  beqz       $v0, .L8005A498
/* 5AF20 8005A320 02608821 */   addu      $s1, $s3, $zero
/* 5AF24 8005A324 3C15800E */  lui        $s5, %hi(D_800D87D8)
/* 5AF28 8005A328 26B587D8 */  addiu      $s5, $s5, %lo(D_800D87D8)
/* 5AF2C 8005A32C 0010A400 */  sll        $s4, $s0, 0x10
/* 5AF30 8005A330 00131840 */  sll        $v1, $s3, 1
/* 5AF34 8005A334 00731821 */  addu       $v1, $v1, $s3
/* 5AF38 8005A338 24020027 */  addiu      $v0, $zero, 0x27
/* 5AF3C 8005A33C 00431023 */  subu       $v0, $v0, $v1
/* 5AF40 8005A340 0002B400 */  sll        $s6, $v0, 0x10
/* 5AF44 8005A344 00111040 */  sll        $v0, $s1, 1
.L8005A348:
/* 5AF48 8005A348 00511021 */  addu       $v0, $v0, $s1
/* 5AF4C 8005A34C 00029080 */  sll        $s2, $v0, 2
/* 5AF50 8005A350 3C04800C */  lui        $a0, %hi(D_800C5750)
/* 5AF54 8005A354 00922021 */  addu       $a0, $a0, $s2
/* 5AF58 8005A358 0C0166D2 */  jal        func_80059B48
/* 5AF5C 8005A35C 8C845750 */   lw        $a0, %lo(D_800C5750)($a0)
/* 5AF60 8005A360 1040003A */  beqz       $v0, .L8005A44C
/* 5AF64 8005A364 001110C0 */   sll       $v0, $s1, 3
/* 5AF68 8005A368 3C04800C */  lui        $a0, %hi(D_800C5754)
/* 5AF6C 8005A36C 00922021 */  addu       $a0, $a0, $s2
/* 5AF70 8005A370 0C016DFA */  jal        func_8005B7E8
/* 5AF74 8005A374 8C845754 */   lw        $a0, %lo(D_800C5754)($a0)
/* 5AF78 8005A378 00408021 */  addu       $s0, $v0, $zero
/* 5AF7C 8005A37C 001120C0 */  sll        $a0, $s1, 3
/* 5AF80 8005A380 00912021 */  addu       $a0, $a0, $s1
/* 5AF84 8005A384 00042040 */  sll        $a0, $a0, 1
/* 5AF88 8005A388 00952021 */  addu       $a0, $a0, $s5
/* 5AF8C 8005A38C 3C05800D */  lui        $a1, %hi(D_800CB3C8)
/* 5AF90 8005A390 24A5B3C8 */  addiu      $a1, $a1, %lo(D_800CB3C8)
/* 5AF94 8005A394 0C023124 */  jal        func_8008C490
/* 5AF98 8005A398 02003021 */   addu      $a2, $s0, $zero
/* 5AF9C 8005A39C 0C016E0E */  jal        func_8005B838
/* 5AFA0 8005A3A0 02002021 */   addu      $a0, $s0, $zero
/* 5AFA4 8005A3A4 3C04800C */  lui        $a0, %hi(D_800C5758)
/* 5AFA8 8005A3A8 00922021 */  addu       $a0, $a0, $s2
/* 5AFAC 8005A3AC 0C0166C4 */  jal        func_80059B10
/* 5AFB0 8005A3B0 8C845758 */   lw        $a0, %lo(D_800C5758)($a0)
/* 5AFB4 8005A3B4 14400007 */  bnez       $v0, .L8005A3D4
/* 5AFB8 8005A3B8 001110C0 */   sll       $v0, $s1, 3
/* 5AFBC 8005A3BC 3C03800C */  lui        $v1, %hi(D_800C5758)
/* 5AFC0 8005A3C0 00721821 */  addu       $v1, $v1, $s2
/* 5AFC4 8005A3C4 8C635758 */  lw         $v1, %lo(D_800C5758)($v1)
/* 5AFC8 8005A3C8 2402FFFC */  addiu      $v0, $zero, -4
/* 5AFCC 8005A3CC 14620005 */  bne        $v1, $v0, .L8005A3E4
/* 5AFD0 8005A3D0 001110C0 */   sll       $v0, $s1, 3
.L8005A3D4:
/* 5AFD4 8005A3D4 00511021 */  addu       $v0, $v0, $s1
/* 5AFD8 8005A3D8 00021040 */  sll        $v0, $v0, 1
/* 5AFDC 8005A3DC 080168FC */  j          .L8005A3F0
/* 5AFE0 8005A3E0 24030008 */   addiu     $v1, $zero, 8
.L8005A3E4:
/* 5AFE4 8005A3E4 00511021 */  addu       $v0, $v0, $s1
/* 5AFE8 8005A3E8 00021040 */  sll        $v0, $v0, 1
/* 5AFEC 8005A3EC 24030002 */  addiu      $v1, $zero, 2
.L8005A3F0:
/* 5AFF0 8005A3F0 3C01800E */  lui        $at, %hi(D_800D87D8)
/* 5AFF4 8005A3F4 00220821 */  addu       $at, $at, $v0
/* 5AFF8 8005A3F8 A02387D8 */  sb         $v1, %lo(D_800D87D8)($at)
/* 5AFFC 8005A3FC 00111040 */  sll        $v0, $s1, 1
/* 5B000 8005A400 00511021 */  addu       $v0, $v0, $s1
/* 5B004 8005A404 00021080 */  sll        $v0, $v0, 2
/* 5B008 8005A408 3C04800C */  lui        $a0, %hi(D_800C5758)
/* 5B00C 8005A40C 00822021 */  addu       $a0, $a0, $v0
/* 5B010 8005A410 0C0166C4 */  jal        func_80059B10
/* 5B014 8005A414 8C845758 */   lw        $a0, %lo(D_800C5758)($a0)
/* 5B018 8005A418 10400011 */  beqz       $v0, .L8005A460
/* 5B01C 8005A41C 02333823 */   subu      $a3, $s1, $s3
/* 5B020 8005A420 00073900 */  sll        $a3, $a3, 4
/* 5B024 8005A424 24E70040 */  addiu      $a3, $a3, 0x40
/* 5B028 8005A428 00073C00 */  sll        $a3, $a3, 0x10
/* 5B02C 8005A42C AFA00010 */  sw         $zero, 0x10($sp)
/* 5B030 8005A430 00142403 */  sra        $a0, $s4, 0x10
/* 5B034 8005A434 24050085 */  addiu      $a1, $zero, 0x85
/* 5B038 8005A438 00163403 */  sra        $a2, $s6, 0x10
/* 5B03C 8005A43C 0C01B6CF */  jal        func_8006DB3C
/* 5B040 8005A440 00073C03 */   sra       $a3, $a3, 0x10
/* 5B044 8005A444 08016919 */  j          .L8005A464
/* 5B048 8005A448 001128C0 */   sll       $a1, $s1, 3
.L8005A44C:
/* 5B04C 8005A44C 00511021 */  addu       $v0, $v0, $s1
/* 5B050 8005A450 00021040 */  sll        $v0, $v0, 1
/* 5B054 8005A454 3C01800E */  lui        $at, %hi(D_800D87D8)
/* 5B058 8005A458 00220821 */  addu       $at, $at, $v0
/* 5B05C 8005A45C A02087D8 */  sb         $zero, %lo(D_800D87D8)($at)
.L8005A460:
/* 5B060 8005A460 001128C0 */  sll        $a1, $s1, 3
.L8005A464:
/* 5B064 8005A464 00B12821 */  addu       $a1, $a1, $s1
/* 5B068 8005A468 00052840 */  sll        $a1, $a1, 1
/* 5B06C 8005A46C 02333023 */  subu       $a2, $s1, $s3
/* 5B070 8005A470 00063600 */  sll        $a2, $a2, 0x18
/* 5B074 8005A474 00142403 */  sra        $a0, $s4, 0x10
/* 5B078 8005A478 00B52821 */  addu       $a1, $a1, $s5
/* 5B07C 8005A47C 0C01B697 */  jal        func_8006DA5C
/* 5B080 8005A480 00063603 */   sra       $a2, $a2, 0x18
/* 5B084 8005A484 26310001 */  addiu      $s1, $s1, 1
/* 5B088 8005A488 26620008 */  addiu      $v0, $s3, 8
/* 5B08C 8005A48C 0222102A */  slt        $v0, $s1, $v0
/* 5B090 8005A490 1440FFAD */  bnez       $v0, .L8005A348
/* 5B094 8005A494 00111040 */   sll       $v0, $s1, 1
.L8005A498:
/* 5B098 8005A498 8FBF0034 */  lw         $ra, 0x34($sp)
/* 5B09C 8005A49C 8FB60030 */  lw         $s6, 0x30($sp)
/* 5B0A0 8005A4A0 8FB5002C */  lw         $s5, 0x2c($sp)
/* 5B0A4 8005A4A4 8FB40028 */  lw         $s4, 0x28($sp)
/* 5B0A8 8005A4A8 8FB30024 */  lw         $s3, 0x24($sp)
/* 5B0AC 8005A4AC 8FB20020 */  lw         $s2, 0x20($sp)
/* 5B0B0 8005A4B0 8FB1001C */  lw         $s1, 0x1c($sp)
/* 5B0B4 8005A4B4 8FB00018 */  lw         $s0, 0x18($sp)
/* 5B0B8 8005A4B8 03E00008 */  jr         $ra
/* 5B0BC 8005A4BC 27BD0038 */   addiu     $sp, $sp, 0x38
