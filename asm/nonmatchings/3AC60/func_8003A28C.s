	.set noat
	.set noreorder

glabel func_8003A28C
/* 3AE8C 8003A28C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3AE90 8003A290 AFB7001C */  sw         $s7, 0x1c($sp)
/* 3AE94 8003A294 AFB60018 */  sw         $s6, 0x18($sp)
/* 3AE98 8003A298 AFB50014 */  sw         $s5, 0x14($sp)
/* 3AE9C 8003A29C AFB40010 */  sw         $s4, 0x10($sp)
/* 3AEA0 8003A2A0 AFB3000C */  sw         $s3, 0xc($sp)
/* 3AEA4 8003A2A4 AFB20008 */  sw         $s2, 8($sp)
/* 3AEA8 8003A2A8 AFB10004 */  sw         $s1, 4($sp)
/* 3AEAC 8003A2AC AFB00000 */  sw         $s0, ($sp)
/* 3AEB0 8003A2B0 8FAA0030 */  lw         $t2, 0x30($sp)
/* 3AEB4 8003A2B4 8FAB0038 */  lw         $t3, 0x38($sp)
/* 3AEB8 8003A2B8 8FAF003C */  lw         $t7, 0x3c($sp)
/* 3AEBC 8003A2BC 8FAD0040 */  lw         $t5, 0x40($sp)
/* 3AEC0 8003A2C0 8FB50044 */  lw         $s5, 0x44($sp)
/* 3AEC4 8003A2C4 8FA90048 */  lw         $t1, 0x48($sp)
/* 3AEC8 8003A2C8 8FB4004C */  lw         $s4, 0x4c($sp)
/* 3AECC 8003A2CC 8FB20050 */  lw         $s2, 0x50($sp)
/* 3AED0 8003A2D0 8FB30054 */  lw         $s3, 0x54($sp)
/* 3AED4 8003A2D4 8FB10058 */  lw         $s1, 0x58($sp)
/* 3AED8 8003A2D8 8FB7005C */  lw         $s7, 0x5c($sp)
/* 3AEDC 8003A2DC 8FB00060 */  lw         $s0, 0x60($sp)
/* 3AEE0 8003A2E0 8FAC0064 */  lw         $t4, 0x64($sp)
/* 3AEE4 8003A2E4 8FB60068 */  lw         $s6, 0x68($sp)
/* 3AEE8 8003A2E8 8C880000 */  lw         $t0, ($a0)
/* 3AEEC 8003A2EC 01007021 */  addu       $t6, $t0, $zero
/* 3AEF0 8003A2F0 25080008 */  addiu      $t0, $t0, 8
/* 3AEF4 8003A2F4 30C60007 */  andi       $a2, $a2, 7
/* 3AEF8 8003A2F8 00063540 */  sll        $a2, $a2, 0x15
/* 3AEFC 8003A2FC 30E30003 */  andi       $v1, $a3, 3
/* 3AF00 8003A300 00031CC0 */  sll        $v1, $v1, 0x13
/* 3AF04 8003A304 3C02FD00 */  lui        $v0, 0xfd00
/* 3AF08 8003A308 00621025 */  or         $v0, $v1, $v0
/* 3AF0C 8003A30C 00C21025 */  or         $v0, $a2, $v0
/* 3AF10 8003A310 254AFFFF */  addiu      $t2, $t2, -1
/* 3AF14 8003A314 314A0FFF */  andi       $t2, $t2, 0xfff
/* 3AF18 8003A318 004A1025 */  or         $v0, $v0, $t2
/* 3AF1C 8003A31C ADC20000 */  sw         $v0, ($t6)
/* 3AF20 8003A320 ADC50004 */  sw         $a1, 4($t6)
/* 3AF24 8003A324 01007021 */  addu       $t6, $t0, $zero
/* 3AF28 8003A328 25080008 */  addiu      $t0, $t0, 8
/* 3AF2C 8003A32C 3C02F500 */  lui        $v0, 0xf500
/* 3AF30 8003A330 00621825 */  or         $v1, $v1, $v0
/* 3AF34 8003A334 00C33025 */  or         $a2, $a2, $v1
/* 3AF38 8003A338 01AB2823 */  subu       $a1, $t5, $t3
/* 3AF3C 8003A33C 24A50001 */  addiu      $a1, $a1, 1
/* 3AF40 8003A340 3C02800C */  lui        $v0, %hi(D_800C4210)
/* 3AF44 8003A344 24424210 */  addiu      $v0, $v0, %lo(D_800C4210)
/* 3AF48 8003A348 00073880 */  sll        $a3, $a3, 2
/* 3AF4C 8003A34C 00E23821 */  addu       $a3, $a3, $v0
/* 3AF50 8003A350 8CE20000 */  lw         $v0, ($a3)
/* 3AF54 8003A354 00A20018 */  mult       $a1, $v0
/* 3AF58 8003A358 00001012 */  mflo       $v0
/* 3AF5C 8003A35C 24420007 */  addiu      $v0, $v0, 7
/* 3AF60 8003A360 000210C2 */  srl        $v0, $v0, 3
/* 3AF64 8003A364 304201FF */  andi       $v0, $v0, 0x1ff
/* 3AF68 8003A368 00021240 */  sll        $v0, $v0, 9
/* 3AF6C 8003A36C 00C21025 */  or         $v0, $a2, $v0
/* 3AF70 8003A370 32D601FF */  andi       $s6, $s6, 0x1ff
/* 3AF74 8003A374 00561025 */  or         $v0, $v0, $s6
/* 3AF78 8003A378 ADC20000 */  sw         $v0, ($t6)
/* 3AF7C 8003A37C 32520003 */  andi       $s2, $s2, 3
/* 3AF80 8003A380 00129480 */  sll        $s2, $s2, 0x12
/* 3AF84 8003A384 3231000F */  andi       $s1, $s1, 0xf
/* 3AF88 8003A388 00118B80 */  sll        $s1, $s1, 0xe
/* 3AF8C 8003A38C 3C0A0700 */  lui        $t2, 0x700
/* 3AF90 8003A390 022A1025 */  or         $v0, $s1, $t2
/* 3AF94 8003A394 02421025 */  or         $v0, $s2, $v0
/* 3AF98 8003A398 3210000F */  andi       $s0, $s0, 0xf
/* 3AF9C 8003A39C 00108280 */  sll        $s0, $s0, 0xa
/* 3AFA0 8003A3A0 00501025 */  or         $v0, $v0, $s0
/* 3AFA4 8003A3A4 32940003 */  andi       $s4, $s4, 3
/* 3AFA8 8003A3A8 0014A200 */  sll        $s4, $s4, 8
/* 3AFAC 8003A3AC 00541025 */  or         $v0, $v0, $s4
/* 3AFB0 8003A3B0 3273000F */  andi       $s3, $s3, 0xf
/* 3AFB4 8003A3B4 00139900 */  sll        $s3, $s3, 4
/* 3AFB8 8003A3B8 00531025 */  or         $v0, $v0, $s3
/* 3AFBC 8003A3BC 32F7000F */  andi       $s7, $s7, 0xf
/* 3AFC0 8003A3C0 00571025 */  or         $v0, $v0, $s7
/* 3AFC4 8003A3C4 ADC20004 */  sw         $v0, 4($t6)
/* 3AFC8 8003A3C8 01001821 */  addu       $v1, $t0, $zero
/* 3AFCC 8003A3CC 25080008 */  addiu      $t0, $t0, 8
/* 3AFD0 8003A3D0 3C02E600 */  lui        $v0, 0xe600
/* 3AFD4 8003A3D4 AC620000 */  sw         $v0, ($v1)
/* 3AFD8 8003A3D8 AC600004 */  sw         $zero, 4($v1)
/* 3AFDC 8003A3DC 01001821 */  addu       $v1, $t0, $zero
/* 3AFE0 8003A3E0 25080008 */  addiu      $t0, $t0, 8
/* 3AFE4 8003A3E4 000B5880 */  sll        $t3, $t3, 2
/* 3AFE8 8003A3E8 316B0FFF */  andi       $t3, $t3, 0xfff
/* 3AFEC 8003A3EC 000B5B00 */  sll        $t3, $t3, 0xc
/* 3AFF0 8003A3F0 000F7880 */  sll        $t7, $t7, 2
/* 3AFF4 8003A3F4 31EF0FFF */  andi       $t7, $t7, 0xfff
/* 3AFF8 8003A3F8 3C02F400 */  lui        $v0, 0xf400
/* 3AFFC 8003A3FC 01E21025 */  or         $v0, $t7, $v0
/* 3B000 8003A400 01621025 */  or         $v0, $t3, $v0
/* 3B004 8003A404 AC620000 */  sw         $v0, ($v1)
/* 3B008 8003A408 000D6880 */  sll        $t5, $t5, 2
/* 3B00C 8003A40C 31AD0FFF */  andi       $t5, $t5, 0xfff
/* 3B010 8003A410 000D6B00 */  sll        $t5, $t5, 0xc
/* 3B014 8003A414 0015A880 */  sll        $s5, $s5, 2
/* 3B018 8003A418 32B50FFF */  andi       $s5, $s5, 0xfff
/* 3B01C 8003A41C 02AA5025 */  or         $t2, $s5, $t2
/* 3B020 8003A420 01AA5025 */  or         $t2, $t5, $t2
/* 3B024 8003A424 AC6A0004 */  sw         $t2, 4($v1)
/* 3B028 8003A428 01001821 */  addu       $v1, $t0, $zero
/* 3B02C 8003A42C 25080008 */  addiu      $t0, $t0, 8
/* 3B030 8003A430 3C02E700 */  lui        $v0, 0xe700
/* 3B034 8003A434 AC620000 */  sw         $v0, ($v1)
/* 3B038 8003A438 AC600004 */  sw         $zero, 4($v1)
/* 3B03C 8003A43C 01001821 */  addu       $v1, $t0, $zero
/* 3B040 8003A440 25080008 */  addiu      $t0, $t0, 8
/* 3B044 8003A444 8CE20000 */  lw         $v0, ($a3)
/* 3B048 8003A448 00A20018 */  mult       $a1, $v0
/* 3B04C 8003A44C 00002812 */  mflo       $a1
/* 3B050 8003A450 24A50007 */  addiu      $a1, $a1, 7
/* 3B054 8003A454 000528C2 */  srl        $a1, $a1, 3
/* 3B058 8003A458 30A501FF */  andi       $a1, $a1, 0x1ff
/* 3B05C 8003A45C 00052A40 */  sll        $a1, $a1, 9
/* 3B060 8003A460 00C53025 */  or         $a2, $a2, $a1
/* 3B064 8003A464 00D63025 */  or         $a2, $a2, $s6
/* 3B068 8003A468 AC660000 */  sw         $a2, ($v1)
/* 3B06C 8003A46C 318C0007 */  andi       $t4, $t4, 7
/* 3B070 8003A470 000C6600 */  sll        $t4, $t4, 0x18
/* 3B074 8003A474 3129000F */  andi       $t1, $t1, 0xf
/* 3B078 8003A478 00094D00 */  sll        $t1, $t1, 0x14
/* 3B07C 8003A47C 01894825 */  or         $t1, $t4, $t1
/* 3B080 8003A480 01324825 */  or         $t1, $t1, $s2
/* 3B084 8003A484 01314825 */  or         $t1, $t1, $s1
/* 3B088 8003A488 01304825 */  or         $t1, $t1, $s0
/* 3B08C 8003A48C 01344825 */  or         $t1, $t1, $s4
/* 3B090 8003A490 01334825 */  or         $t1, $t1, $s3
/* 3B094 8003A494 01374825 */  or         $t1, $t1, $s7
/* 3B098 8003A498 AC690004 */  sw         $t1, 4($v1)
/* 3B09C 8003A49C 01001821 */  addu       $v1, $t0, $zero
/* 3B0A0 8003A4A0 25080008 */  addiu      $t0, $t0, 8
/* 3B0A4 8003A4A4 3C02F200 */  lui        $v0, 0xf200
/* 3B0A8 8003A4A8 01E27825 */  or         $t7, $t7, $v0
/* 3B0AC 8003A4AC 016F5825 */  or         $t3, $t3, $t7
/* 3B0B0 8003A4B0 AC6B0000 */  sw         $t3, ($v1)
/* 3B0B4 8003A4B4 018D6025 */  or         $t4, $t4, $t5
/* 3B0B8 8003A4B8 01956025 */  or         $t4, $t4, $s5
/* 3B0BC 8003A4BC AC6C0004 */  sw         $t4, 4($v1)
/* 3B0C0 8003A4C0 AC880000 */  sw         $t0, ($a0)
/* 3B0C4 8003A4C4 8FB7001C */  lw         $s7, 0x1c($sp)
/* 3B0C8 8003A4C8 8FB60018 */  lw         $s6, 0x18($sp)
/* 3B0CC 8003A4CC 8FB50014 */  lw         $s5, 0x14($sp)
/* 3B0D0 8003A4D0 8FB40010 */  lw         $s4, 0x10($sp)
/* 3B0D4 8003A4D4 8FB3000C */  lw         $s3, 0xc($sp)
/* 3B0D8 8003A4D8 8FB20008 */  lw         $s2, 8($sp)
/* 3B0DC 8003A4DC 8FB10004 */  lw         $s1, 4($sp)
/* 3B0E0 8003A4E0 8FB00000 */  lw         $s0, ($sp)
/* 3B0E4 8003A4E4 03E00008 */  jr         $ra
/* 3B0E8 8003A4E8 27BD0020 */   addiu     $sp, $sp, 0x20
