	.set noat
	.set noreorder

glabel func_800FCD58_D41C8
/* D41C8 800FCD58 27BDFF80 */  addiu      $sp, $sp, -0x80
/* D41CC 800FCD5C AFBF0058 */  sw         $ra, 0x58($sp)
/* D41D0 800FCD60 AFB70054 */  sw         $s7, 0x54($sp)
/* D41D4 800FCD64 AFB60050 */  sw         $s6, 0x50($sp)
/* D41D8 800FCD68 AFB5004C */  sw         $s5, 0x4c($sp)
/* D41DC 800FCD6C AFB40048 */  sw         $s4, 0x48($sp)
/* D41E0 800FCD70 AFB30044 */  sw         $s3, 0x44($sp)
/* D41E4 800FCD74 AFB20040 */  sw         $s2, 0x40($sp)
/* D41E8 800FCD78 AFB1003C */  sw         $s1, 0x3c($sp)
/* D41EC 800FCD7C AFB00038 */  sw         $s0, 0x38($sp)
/* D41F0 800FCD80 F7BA0078 */  sdc1       $f26, 0x78($sp)
/* D41F4 800FCD84 F7B80070 */  sdc1       $f24, 0x70($sp)
/* D41F8 800FCD88 F7B60068 */  sdc1       $f22, 0x68($sp)
/* D41FC 800FCD8C F7B40060 */  sdc1       $f20, 0x60($sp)
/* D4200 800FCD90 00809021 */  addu       $s2, $a0, $zero
/* D4204 800FCD94 4480B000 */  mtc1       $zero, $f22
/* D4208 800FCD98 8E530050 */  lw         $s3, 0x50($s2)
/* D420C 800FCD9C 9254004F */  lbu        $s4, 0x4f($s2)
/* D4210 800FCDA0 9243004C */  lbu        $v1, 0x4c($s2)
/* D4214 800FCDA4 240200FF */  addiu      $v0, $zero, 0xff
/* D4218 800FCDA8 1062022E */  beq        $v1, $v0, .L800FD664
/* D421C 800FCDAC 4600B506 */   mov.s     $f20, $f22
/* D4220 800FCDB0 9243004C */  lbu        $v1, 0x4c($s2)
/* D4224 800FCDB4 30620080 */  andi       $v0, $v1, 0x80
/* D4228 800FCDB8 1440004A */  bnez       $v0, .L800FCEE4
/* D422C 800FCDBC 24620001 */   addiu     $v0, $v1, 1
/* D4230 800FCDC0 34420080 */  ori        $v0, $v0, 0x80
/* D4234 800FCDC4 A242004C */  sb         $v0, 0x4c($s2)
/* D4238 800FCDC8 24020010 */  addiu      $v0, $zero, 0x10
/* D423C 800FCDCC A242004D */  sb         $v0, 0x4d($s2)
/* D4240 800FCDD0 3C014080 */  lui        $at, 0x4080
/* D4244 800FCDD4 44810000 */  mtc1       $at, $f0
/* D4248 800FCDD8 00000000 */  nop
/* D424C 800FCDDC E6600038 */  swc1       $f0, 0x38($s3)
/* D4250 800FCDE0 8E420040 */  lw         $v0, 0x40($s2)
/* D4254 800FCDE4 84430000 */  lh         $v1, ($v0)
/* D4258 800FCDE8 3C05800F */  lui        $a1, %hi(D_800F2B7C)
/* D425C 800FCDEC 8CA52B7C */  lw         $a1, %lo(D_800F2B7C)($a1)
/* D4260 800FCDF0 00031040 */  sll        $v0, $v1, 1
/* D4264 800FCDF4 00431021 */  addu       $v0, $v0, $v1
/* D4268 800FCDF8 00021180 */  sll        $v0, $v0, 6
/* D426C 800FCDFC 00451021 */  addu       $v0, $v0, $a1
/* D4270 800FCE00 8C430020 */  lw         $v1, 0x20($v0)
/* D4274 800FCE04 2404FFFB */  addiu      $a0, $zero, -5
/* D4278 800FCE08 00641824 */  and        $v1, $v1, $a0
/* D427C 800FCE0C AC430020 */  sw         $v1, 0x20($v0)
/* D4280 800FCE10 8E420040 */  lw         $v0, 0x40($s2)
/* D4284 800FCE14 84430006 */  lh         $v1, 6($v0)
/* D4288 800FCE18 00031040 */  sll        $v0, $v1, 1
/* D428C 800FCE1C 00431021 */  addu       $v0, $v0, $v1
/* D4290 800FCE20 00021180 */  sll        $v0, $v0, 6
/* D4294 800FCE24 00451021 */  addu       $v0, $v0, $a1
/* D4298 800FCE28 8C430020 */  lw         $v1, 0x20($v0)
/* D429C 800FCE2C 00641824 */  and        $v1, $v1, $a0
/* D42A0 800FCE30 AC430020 */  sw         $v1, 0x20($v0)
/* D42A4 800FCE34 8E420040 */  lw         $v0, 0x40($s2)
/* D42A8 800FCE38 84430002 */  lh         $v1, 2($v0)
/* D42AC 800FCE3C 00031040 */  sll        $v0, $v1, 1
/* D42B0 800FCE40 00431021 */  addu       $v0, $v0, $v1
/* D42B4 800FCE44 00021180 */  sll        $v0, $v0, 6
/* D42B8 800FCE48 00451021 */  addu       $v0, $v0, $a1
/* D42BC 800FCE4C 8C430020 */  lw         $v1, 0x20($v0)
/* D42C0 800FCE50 00641824 */  and        $v1, $v1, $a0
/* D42C4 800FCE54 AC430020 */  sw         $v1, 0x20($v0)
/* D42C8 800FCE58 8E420040 */  lw         $v0, 0x40($s2)
/* D42CC 800FCE5C 84430008 */  lh         $v1, 8($v0)
/* D42D0 800FCE60 00031040 */  sll        $v0, $v1, 1
/* D42D4 800FCE64 00431021 */  addu       $v0, $v0, $v1
/* D42D8 800FCE68 00021180 */  sll        $v0, $v0, 6
/* D42DC 800FCE6C 00451021 */  addu       $v0, $v0, $a1
/* D42E0 800FCE70 8C430020 */  lw         $v1, 0x20($v0)
/* D42E4 800FCE74 00641824 */  and        $v1, $v1, $a0
/* D42E8 800FCE78 AC430020 */  sw         $v1, 0x20($v0)
/* D42EC 800FCE7C 8E420040 */  lw         $v0, 0x40($s2)
/* D42F0 800FCE80 84430004 */  lh         $v1, 4($v0)
/* D42F4 800FCE84 00031040 */  sll        $v0, $v1, 1
/* D42F8 800FCE88 00431021 */  addu       $v0, $v0, $v1
/* D42FC 800FCE8C 00021180 */  sll        $v0, $v0, 6
/* D4300 800FCE90 00451021 */  addu       $v0, $v0, $a1
/* D4304 800FCE94 8C430020 */  lw         $v1, 0x20($v0)
/* D4308 800FCE98 00641824 */  and        $v1, $v1, $a0
/* D430C 800FCE9C AC430020 */  sw         $v1, 0x20($v0)
/* D4310 800FCEA0 8E420040 */  lw         $v0, 0x40($s2)
/* D4314 800FCEA4 8443000A */  lh         $v1, 0xa($v0)
/* D4318 800FCEA8 00031040 */  sll        $v0, $v1, 1
/* D431C 800FCEAC 00431021 */  addu       $v0, $v0, $v1
/* D4320 800FCEB0 00021180 */  sll        $v0, $v0, 6
/* D4324 800FCEB4 00451021 */  addu       $v0, $v0, $a1
/* D4328 800FCEB8 8C430020 */  lw         $v1, 0x20($v0)
/* D432C 800FCEBC 00641824 */  and        $v1, $v1, $a0
/* D4330 800FCEC0 AC430020 */  sw         $v1, 0x20($v0)
/* D4334 800FCEC4 92630027 */  lbu        $v1, 0x27($s3)
/* D4338 800FCEC8 3C04800F */  lui        $a0, %hi(D_800ECDE0)
/* D433C 800FCECC 8C84CDE0 */  lw         $a0, %lo(D_800ECDE0)($a0)
/* D4340 800FCED0 000310C0 */  sll        $v0, $v1, 3
/* D4344 800FCED4 00431021 */  addu       $v0, $v0, $v1
/* D4348 800FCED8 00021080 */  sll        $v0, $v0, 2
/* D434C 800FCEDC 00441021 */  addu       $v0, $v0, $a0
/* D4350 800FCEE0 A4400004 */  sh         $zero, 4($v0)
.L800FCEE4:
/* D4354 800FCEE4 9242004C */  lbu        $v0, 0x4c($s2)
/* D4358 800FCEE8 3043007F */  andi       $v1, $v0, 0x7f
/* D435C 800FCEEC 24020002 */  addiu      $v0, $zero, 2
/* D4360 800FCEF0 1062003A */  beq        $v1, $v0, .L800FCFDC
/* D4364 800FCEF4 28620003 */   slti      $v0, $v1, 3
/* D4368 800FCEF8 10400005 */  beqz       $v0, .L800FCF10
/* D436C 800FCEFC 24020001 */   addiu     $v0, $zero, 1
/* D4370 800FCF00 10620008 */  beq        $v1, $v0, .L800FCF24
/* D4374 800FCF04 001410C0 */   sll       $v0, $s4, 3
/* D4378 800FCF08 0803F40E */  j          .L800FD038
/* D437C 800FCF0C 00000000 */   nop
.L800FCF10:
/* D4380 800FCF10 24020003 */  addiu      $v0, $zero, 3
/* D4384 800FCF14 10620043 */  beq        $v1, $v0, .L800FD024
/* D4388 800FCF18 001410C0 */   sll       $v0, $s4, 3
/* D438C 800FCF1C 0803F40E */  j          .L800FD038
/* D4390 800FCF20 00000000 */   nop
.L800FCF24:
/* D4394 800FCF24 9242004D */  lbu        $v0, 0x4d($s2)
/* D4398 800FCF28 44821000 */  mtc1       $v0, $f2
/* D439C 800FCF2C 00000000 */  nop
/* D43A0 800FCF30 468010A0 */  cvt.s.w    $f2, $f2
/* D43A4 800FCF34 460010A1 */  cvt.d.s    $f2, $f2
/* D43A8 800FCF38 3C018010 */  lui        $at, %hi(D_800FDD28)
/* D43AC 800FCF3C D420DD28 */  ldc1       $f0, %lo(D_800FDD28)($at)
/* D43B0 800FCF40 46220001 */  sub.d      $f0, $f0, $f2
/* D43B4 800FCF44 3C018010 */  lui        $at, %hi(D_800FDD30)
/* D43B8 800FCF48 D422DD30 */  ldc1       $f2, %lo(D_800FDD30)($at)
/* D43BC 800FCF4C 46220003 */  div.d      $f0, $f0, $f2
/* D43C0 800FCF50 46200520 */  cvt.s.d    $f20, $f0
/* D43C4 800FCF54 001410C0 */  sll        $v0, $s4, 3
/* D43C8 800FCF58 3C018010 */  lui        $at, %hi(D_800FE270)
/* D43CC 800FCF5C 00220821 */  addu       $at, $at, $v0
/* D43D0 800FCF60 C420E270 */  lwc1       $f0, %lo(D_800FE270)($at)
/* D43D4 800FCF64 3C018010 */  lui        $at, %hi(D_800FE250)
/* D43D8 800FCF68 00220821 */  addu       $at, $at, $v0
/* D43DC 800FCF6C C422E250 */  lwc1       $f2, %lo(D_800FE250)($at)
/* D43E0 800FCF70 46020001 */  sub.s      $f0, $f0, $f2
/* D43E4 800FCF74 4600A002 */  mul.s      $f0, $f20, $f0
/* D43E8 800FCF78 46020000 */  add.s      $f0, $f0, $f2
/* D43EC 800FCF7C E6400018 */  swc1       $f0, 0x18($s2)
/* D43F0 800FCF80 3C018010 */  lui        $at, %hi(D_800FE274)
/* D43F4 800FCF84 00220821 */  addu       $at, $at, $v0
/* D43F8 800FCF88 C420E274 */  lwc1       $f0, %lo(D_800FE274)($at)
/* D43FC 800FCF8C 3C018010 */  lui        $at, %hi(D_800FE254)
/* D4400 800FCF90 00220821 */  addu       $at, $at, $v0
/* D4404 800FCF94 C422E254 */  lwc1       $f2, %lo(D_800FE254)($at)
/* D4408 800FCF98 46020001 */  sub.s      $f0, $f0, $f2
/* D440C 800FCF9C 4600A002 */  mul.s      $f0, $f20, $f0
/* D4410 800FCFA0 46020000 */  add.s      $f0, $f0, $f2
/* D4414 800FCFA4 E6400020 */  swc1       $f0, 0x20($s2)
/* D4418 800FCFA8 4600A321 */  cvt.d.s    $f12, $f20
/* D441C 800FCFAC 3C018010 */  lui        $at, %hi(D_800FDD38)
/* D4420 800FCFB0 D420DD38 */  ldc1       $f0, %lo(D_800FDD38)($at)
/* D4424 800FCFB4 46206302 */  mul.d      $f12, $f12, $f0
/* D4428 800FCFB8 0C02BAB0 */  jal        func_800AEAC0
/* D442C 800FCFBC 46206320 */   cvt.s.d   $f12, $f12
/* D4430 800FCFC0 46000021 */  cvt.d.s    $f0, $f0
/* D4434 800FCFC4 3C018010 */  lui        $at, %hi(D_800FDD40)
/* D4438 800FCFC8 D422DD40 */  ldc1       $f2, %lo(D_800FDD40)($at)
/* D443C 800FCFCC 46220002 */  mul.d      $f0, $f0, $f2
/* D4440 800FCFD0 462005A0 */  cvt.s.d    $f22, $f0
/* D4444 800FCFD4 0803F40D */  j          .L800FD034
/* D4448 800FCFD8 E656001C */   swc1      $f22, 0x1c($s2)
.L800FCFDC:
/* D444C 800FCFDC 0C017F57 */  jal        func_8005FD5C
/* D4450 800FCFE0 00000000 */   nop
/* D4454 800FCFE4 3042FFFF */  andi       $v0, $v0, 0xffff
/* D4458 800FCFE8 3C03800F */  lui        $v1, %hi(D_800F64F8)
/* D445C 800FCFEC 906364F8 */  lbu        $v1, %lo(D_800F64F8)($v1)
/* D4460 800FCFF0 00431021 */  addu       $v0, $v0, $v1
/* D4464 800FCFF4 1440000B */  bnez       $v0, .L800FD024
/* D4468 800FCFF8 00000000 */   nop
/* D446C 800FCFFC C6600038 */  lwc1       $f0, 0x38($s3)
/* D4470 800FD000 46000021 */  cvt.d.s    $f0, $f0
/* D4474 800FD004 3C018010 */  lui        $at, %hi(D_800FDD48)
/* D4478 800FD008 D422DD48 */  ldc1       $f2, %lo(D_800FDD48)($at)
/* D447C 800FD00C 46220000 */  add.d      $f0, $f0, $f2
/* D4480 800FD010 46200020 */  cvt.s.d    $f0, $f0
/* D4484 800FD014 E6600038 */  swc1       $f0, 0x38($s3)
/* D4488 800FD018 C642001C */  lwc1       $f2, 0x1c($s2)
/* D448C 800FD01C 46001080 */  add.s      $f2, $f2, $f0
/* D4490 800FD020 E642001C */  swc1       $f2, 0x1c($s2)
.L800FD024:
/* D4494 800FD024 3C0142F0 */  lui        $at, 0x42f0
/* D4498 800FD028 4481B000 */  mtc1       $at, $f22
/* D449C 800FD02C 3C013F00 */  lui        $at, 0x3f00
/* D44A0 800FD030 4481A000 */  mtc1       $at, $f20
.L800FD034:
/* D44A4 800FD034 001410C0 */  sll        $v0, $s4, 3
.L800FD038:
/* D44A8 800FD038 C6400018 */  lwc1       $f0, 0x18($s2)
/* D44AC 800FD03C 3C018010 */  lui        $at, %hi(D_800FE290)
/* D44B0 800FD040 00220821 */  addu       $at, $at, $v0
/* D44B4 800FD044 C422E290 */  lwc1       $f2, %lo(D_800FE290)($at)
/* D44B8 800FD048 46020000 */  add.s      $f0, $f0, $f2
/* D44BC 800FD04C E7A00018 */  swc1       $f0, 0x18($sp)
/* D44C0 800FD050 C6400020 */  lwc1       $f0, 0x20($s2)
/* D44C4 800FD054 3C018010 */  lui        $at, %hi(D_800FE294)
/* D44C8 800FD058 00220821 */  addu       $at, $at, $v0
/* D44CC 800FD05C C422E294 */  lwc1       $f2, %lo(D_800FE294)($at)
/* D44D0 800FD060 46020000 */  add.s      $f0, $f0, $f2
/* D44D4 800FD064 E7A00020 */  swc1       $f0, 0x20($sp)
/* D44D8 800FD068 E7B6001C */  swc1       $f22, 0x1c($sp)
/* D44DC 800FD06C C6400018 */  lwc1       $f0, 0x18($s2)
/* D44E0 800FD070 3C018010 */  lui        $at, %hi(D_800FE290)
/* D44E4 800FD074 00220821 */  addu       $at, $at, $v0
/* D44E8 800FD078 C422E290 */  lwc1       $f2, %lo(D_800FE290)($at)
/* D44EC 800FD07C 46020001 */  sub.s      $f0, $f0, $f2
/* D44F0 800FD080 E7A00028 */  swc1       $f0, 0x28($sp)
/* D44F4 800FD084 C6400020 */  lwc1       $f0, 0x20($s2)
/* D44F8 800FD088 3C018010 */  lui        $at, %hi(D_800FE294)
/* D44FC 800FD08C 00220821 */  addu       $at, $at, $v0
/* D4500 800FD090 C422E294 */  lwc1       $f2, %lo(D_800FE294)($at)
/* D4504 800FD094 46020001 */  sub.s      $f0, $f0, $f2
/* D4508 800FD098 E7A00030 */  swc1       $f0, 0x30($sp)
/* D450C 800FD09C 4600A0A1 */  cvt.d.s    $f2, $f20
/* D4510 800FD0A0 44800000 */  mtc1       $zero, $f0
/* D4514 800FD0A4 44800800 */  mtc1       $zero, $f1
/* D4518 800FD0A8 00000000 */  nop
/* D451C 800FD0AC 46201032 */  c.eq.d     $f2, $f0
/* D4520 800FD0B0 00000000 */  nop
/* D4524 800FD0B4 00000000 */  nop
/* D4528 800FD0B8 45000006 */  bc1f       .L800FD0D4
/* D452C 800FD0BC E7B6002C */   swc1      $f22, 0x2c($sp)
/* D4530 800FD0C0 8E420040 */  lw         $v0, 0x40($s2)
/* D4534 800FD0C4 84440004 */  lh         $a0, 4($v0)
/* D4538 800FD0C8 27A50018 */  addiu      $a1, $sp, 0x18
/* D453C 800FD0CC 0C03F228 */  jal        func_800FC8A0_D3D10
/* D4540 800FD0D0 27A60028 */   addiu     $a2, $sp, 0x28
.L800FD0D4:
/* D4544 800FD0D4 8E420040 */  lw         $v0, 0x40($s2)
/* D4548 800FD0D8 27B10028 */  addiu      $s1, $sp, 0x28
/* D454C 800FD0DC 84440004 */  lh         $a0, 4($v0)
/* D4550 800FD0E0 27A50018 */  addiu      $a1, $sp, 0x18
/* D4554 800FD0E4 0C03F279 */  jal        func_800FC9E4_D3E54
/* D4558 800FD0E8 02203021 */   addu      $a2, $s1, $zero
/* D455C 800FD0EC 001480C0 */  sll        $s0, $s4, 3
/* D4560 800FD0F0 3C018010 */  lui        $at, %hi(D_800FE250)
/* D4564 800FD0F4 00300821 */  addu       $at, $at, $s0
/* D4568 800FD0F8 C420E250 */  lwc1       $f0, %lo(D_800FE250)($at)
/* D456C 800FD0FC 3C018010 */  lui        $at, %hi(D_800FE270)
/* D4570 800FD100 00300821 */  addu       $at, $at, $s0
/* D4574 800FD104 C422E270 */  lwc1       $f2, %lo(D_800FE270)($at)
/* D4578 800FD108 46020001 */  sub.s      $f0, $f0, $f2
/* D457C 800FD10C 4600A002 */  mul.s      $f0, $f20, $f0
/* D4580 800FD110 46020680 */  add.s      $f26, $f0, $f2
/* D4584 800FD114 3C018010 */  lui        $at, %hi(D_800FE254)
/* D4588 800FD118 00300821 */  addu       $at, $at, $s0
/* D458C 800FD11C C420E254 */  lwc1       $f0, %lo(D_800FE254)($at)
/* D4590 800FD120 3C018010 */  lui        $at, %hi(D_800FE274)
/* D4594 800FD124 00300821 */  addu       $at, $at, $s0
/* D4598 800FD128 C422E274 */  lwc1       $f2, %lo(D_800FE274)($at)
/* D459C 800FD12C 46020001 */  sub.s      $f0, $f0, $f2
/* D45A0 800FD130 4600A002 */  mul.s      $f0, $f20, $f0
/* D45A4 800FD134 46020600 */  add.s      $f24, $f0, $f2
/* D45A8 800FD138 8E420040 */  lw         $v0, 0x40($s2)
/* D45AC 800FD13C 84440006 */  lh         $a0, 6($v0)
/* D45B0 800FD140 4405D000 */  mfc1       $a1, $f26
/* D45B4 800FD144 4406B000 */  mfc1       $a2, $f22
/* D45B8 800FD148 4407C000 */  mfc1       $a3, $f24
/* D45BC 800FD14C 0C0095E6 */  jal        func_80025798
/* D45C0 800FD150 00000000 */   nop
/* D45C4 800FD154 3C018010 */  lui        $at, %hi(D_800FE290)
/* D45C8 800FD158 00300821 */  addu       $at, $at, $s0
/* D45CC 800FD15C C420E290 */  lwc1       $f0, %lo(D_800FE290)($at)
/* D45D0 800FD160 4600D000 */  add.s      $f0, $f26, $f0
/* D45D4 800FD164 E7A00018 */  swc1       $f0, 0x18($sp)
/* D45D8 800FD168 3C018010 */  lui        $at, %hi(D_800FE294)
/* D45DC 800FD16C 00300821 */  addu       $at, $at, $s0
/* D45E0 800FD170 C420E294 */  lwc1       $f0, %lo(D_800FE294)($at)
/* D45E4 800FD174 4600C000 */  add.s      $f0, $f24, $f0
/* D45E8 800FD178 E7A00020 */  swc1       $f0, 0x20($sp)
/* D45EC 800FD17C E7B6001C */  swc1       $f22, 0x1c($sp)
/* D45F0 800FD180 3C018010 */  lui        $at, %hi(D_800FE290)
/* D45F4 800FD184 00300821 */  addu       $at, $at, $s0
/* D45F8 800FD188 C420E290 */  lwc1       $f0, %lo(D_800FE290)($at)
/* D45FC 800FD18C 4600D001 */  sub.s      $f0, $f26, $f0
/* D4600 800FD190 E7A00028 */  swc1       $f0, 0x28($sp)
/* D4604 800FD194 3C018010 */  lui        $at, %hi(D_800FE294)
/* D4608 800FD198 00300821 */  addu       $at, $at, $s0
/* D460C 800FD19C C420E294 */  lwc1       $f0, %lo(D_800FE294)($at)
/* D4610 800FD1A0 4600C001 */  sub.s      $f0, $f24, $f0
/* D4614 800FD1A4 E7A00030 */  swc1       $f0, 0x30($sp)
/* D4618 800FD1A8 4600A0A1 */  cvt.d.s    $f2, $f20
/* D461C 800FD1AC 44800000 */  mtc1       $zero, $f0
/* D4620 800FD1B0 44800800 */  mtc1       $zero, $f1
/* D4624 800FD1B4 00000000 */  nop
/* D4628 800FD1B8 46201032 */  c.eq.d     $f2, $f0
/* D462C 800FD1BC 00000000 */  nop
/* D4630 800FD1C0 00000000 */  nop
/* D4634 800FD1C4 45000006 */  bc1f       .L800FD1E0
/* D4638 800FD1C8 E7B6002C */   swc1      $f22, 0x2c($sp)
/* D463C 800FD1CC 8E420040 */  lw         $v0, 0x40($s2)
/* D4640 800FD1D0 8444000A */  lh         $a0, 0xa($v0)
/* D4644 800FD1D4 27A50018 */  addiu      $a1, $sp, 0x18
/* D4648 800FD1D8 0C03F228 */  jal        func_800FC8A0_D3D10
/* D464C 800FD1DC 02203021 */   addu      $a2, $s1, $zero
.L800FD1E0:
/* D4650 800FD1E0 8E420040 */  lw         $v0, 0x40($s2)
/* D4654 800FD1E4 8444000A */  lh         $a0, 0xa($v0)
/* D4658 800FD1E8 27A50018 */  addiu      $a1, $sp, 0x18
/* D465C 800FD1EC 0C03F279 */  jal        func_800FC9E4_D3E54
/* D4660 800FD1F0 27A60028 */   addiu     $a2, $sp, 0x28
/* D4664 800FD1F4 9242004D */  lbu        $v0, 0x4d($s2)
/* D4668 800FD1F8 1440007C */  bnez       $v0, .L800FD3EC
/* D466C 800FD1FC 00000000 */   nop
/* D4670 800FD200 9242004C */  lbu        $v0, 0x4c($s2)
/* D4674 800FD204 3043007F */  andi       $v1, $v0, 0x7f
/* D4678 800FD208 24020002 */  addiu      $v0, $zero, 2
/* D467C 800FD20C 1062001D */  beq        $v1, $v0, .L800FD284
/* D4680 800FD210 28620003 */   slti      $v0, $v1, 3
/* D4684 800FD214 10400005 */  beqz       $v0, .L800FD22C
/* D4688 800FD218 24020001 */   addiu     $v0, $zero, 1
/* D468C 800FD21C 10620008 */  beq        $v1, $v0, .L800FD240
/* D4690 800FD220 00000000 */   nop
/* D4694 800FD224 0803F506 */  j          .L800FD418
/* D4698 800FD228 00000000 */   nop
.L800FD22C:
/* D469C 800FD22C 24020003 */  addiu      $v0, $zero, 3
/* D46A0 800FD230 10620057 */  beq        $v1, $v0, .L800FD390
/* D46A4 800FD234 240200FF */   addiu     $v0, $zero, 0xff
/* D46A8 800FD238 0803F506 */  j          .L800FD418
/* D46AC 800FD23C 00000000 */   nop
.L800FD240:
/* D46B0 800FD240 9242004C */  lbu        $v0, 0x4c($s2)
/* D46B4 800FD244 24420001 */  addiu      $v0, $v0, 1
/* D46B8 800FD248 A242004C */  sb         $v0, 0x4c($s2)
/* D46BC 800FD24C 24020010 */  addiu      $v0, $zero, 0x10
/* D46C0 800FD250 A242004D */  sb         $v0, 0x4d($s2)
/* D46C4 800FD254 8E420040 */  lw         $v0, 0x40($s2)
/* D46C8 800FD258 84430006 */  lh         $v1, 6($v0)
/* D46CC 800FD25C 3C04800F */  lui        $a0, %hi(D_800F2B7C)
/* D46D0 800FD260 8C842B7C */  lw         $a0, %lo(D_800F2B7C)($a0)
/* D46D4 800FD264 00031040 */  sll        $v0, $v1, 1
/* D46D8 800FD268 00431021 */  addu       $v0, $v0, $v1
/* D46DC 800FD26C 00021180 */  sll        $v0, $v0, 6
/* D46E0 800FD270 00441021 */  addu       $v0, $v0, $a0
/* D46E4 800FD274 8C430020 */  lw         $v1, 0x20($v0)
/* D46E8 800FD278 34630004 */  ori        $v1, $v1, 4
/* D46EC 800FD27C 0803F506 */  j          .L800FD418
/* D46F0 800FD280 AC430020 */   sw        $v1, 0x20($v0)
.L800FD284:
/* D46F4 800FD284 9242004C */  lbu        $v0, 0x4c($s2)
/* D46F8 800FD288 24420001 */  addiu      $v0, $v0, 1
/* D46FC 800FD28C A242004C */  sb         $v0, 0x4c($s2)
/* D4700 800FD290 24020010 */  addiu      $v0, $zero, 0x10
/* D4704 800FD294 A242004D */  sb         $v0, 0x4d($s2)
/* D4708 800FD298 8E420040 */  lw         $v0, 0x40($s2)
/* D470C 800FD29C 84430000 */  lh         $v1, ($v0)
/* D4710 800FD2A0 3C04800F */  lui        $a0, %hi(D_800F2B7C)
/* D4714 800FD2A4 8C842B7C */  lw         $a0, %lo(D_800F2B7C)($a0)
/* D4718 800FD2A8 00031040 */  sll        $v0, $v1, 1
/* D471C 800FD2AC 00431021 */  addu       $v0, $v0, $v1
/* D4720 800FD2B0 00021180 */  sll        $v0, $v0, 6
/* D4724 800FD2B4 00441021 */  addu       $v0, $v0, $a0
/* D4728 800FD2B8 8C430020 */  lw         $v1, 0x20($v0)
/* D472C 800FD2BC 34630004 */  ori        $v1, $v1, 4
/* D4730 800FD2C0 AC430020 */  sw         $v1, 0x20($v0)
/* D4734 800FD2C4 8E420040 */  lw         $v0, 0x40($s2)
/* D4738 800FD2C8 84430002 */  lh         $v1, 2($v0)
/* D473C 800FD2CC 00031040 */  sll        $v0, $v1, 1
/* D4740 800FD2D0 00431021 */  addu       $v0, $v0, $v1
/* D4744 800FD2D4 00021180 */  sll        $v0, $v0, 6
/* D4748 800FD2D8 00441021 */  addu       $v0, $v0, $a0
/* D474C 800FD2DC 8C430020 */  lw         $v1, 0x20($v0)
/* D4750 800FD2E0 34630004 */  ori        $v1, $v1, 4
/* D4754 800FD2E4 AC430020 */  sw         $v1, 0x20($v0)
/* D4758 800FD2E8 8E420040 */  lw         $v0, 0x40($s2)
/* D475C 800FD2EC 84430008 */  lh         $v1, 8($v0)
/* D4760 800FD2F0 00031040 */  sll        $v0, $v1, 1
/* D4764 800FD2F4 00431021 */  addu       $v0, $v0, $v1
/* D4768 800FD2F8 00021180 */  sll        $v0, $v0, 6
/* D476C 800FD2FC 00441021 */  addu       $v0, $v0, $a0
/* D4770 800FD300 8C430020 */  lw         $v1, 0x20($v0)
/* D4774 800FD304 34630004 */  ori        $v1, $v1, 4
/* D4778 800FD308 AC430020 */  sw         $v1, 0x20($v0)
/* D477C 800FD30C 8E420040 */  lw         $v0, 0x40($s2)
/* D4780 800FD310 8443000C */  lh         $v1, 0xc($v0)
/* D4784 800FD314 00031040 */  sll        $v0, $v1, 1
/* D4788 800FD318 00431021 */  addu       $v0, $v0, $v1
/* D478C 800FD31C 00021180 */  sll        $v0, $v0, 6
/* D4790 800FD320 00441021 */  addu       $v0, $v0, $a0
/* D4794 800FD324 8C430020 */  lw         $v1, 0x20($v0)
/* D4798 800FD328 2404FFFB */  addiu      $a0, $zero, -5
/* D479C 800FD32C 00641824 */  and        $v1, $v1, $a0
/* D47A0 800FD330 AC430020 */  sw         $v1, 0x20($v0)
/* D47A4 800FD334 8E420040 */  lw         $v0, 0x40($s2)
/* D47A8 800FD338 8444000C */  lh         $a0, 0xc($v0)
/* D47AC 800FD33C 8E450018 */  lw         $a1, 0x18($s2)
/* D47B0 800FD340 8E46001C */  lw         $a2, 0x1c($s2)
/* D47B4 800FD344 0C0095E6 */  jal        func_80025798
/* D47B8 800FD348 8E470020 */   lw        $a3, 0x20($s2)
/* D47BC 800FD34C 8E420040 */  lw         $v0, 0x40($s2)
/* D47C0 800FD350 8444000C */  lh         $a0, 0xc($v0)
/* D47C4 800FD354 3C054140 */  lui        $a1, 0x4140
/* D47C8 800FD358 00A03021 */  addu       $a2, $a1, $zero
/* D47CC 800FD35C 0C00960C */  jal        func_80025830
/* D47D0 800FD360 00A03821 */   addu      $a3, $a1, $zero
/* D47D4 800FD364 9242004F */  lbu        $v0, 0x4f($s2)
/* D47D8 800FD368 14400005 */  bnez       $v0, .L800FD380
/* D47DC 800FD36C 00000000 */   nop
/* D47E0 800FD370 0C0180AB */  jal        func_800602AC
/* D47E4 800FD374 240400FC */   addiu     $a0, $zero, 0xfc
/* D47E8 800FD378 0803F506 */  j          .L800FD418
/* D47EC 800FD37C 00000000 */   nop
.L800FD380:
/* D47F0 800FD380 0C0180AB */  jal        func_800602AC
/* D47F4 800FD384 240400FD */   addiu     $a0, $zero, 0xfd
/* D47F8 800FD388 0803F506 */  j          .L800FD418
/* D47FC 800FD38C 00000000 */   nop
.L800FD390:
/* D4800 800FD390 A242004C */  sb         $v0, 0x4c($s2)
/* D4804 800FD394 8E420040 */  lw         $v0, 0x40($s2)
/* D4808 800FD398 84430004 */  lh         $v1, 4($v0)
/* D480C 800FD39C 3C04800F */  lui        $a0, %hi(D_800F2B7C)
/* D4810 800FD3A0 8C842B7C */  lw         $a0, %lo(D_800F2B7C)($a0)
/* D4814 800FD3A4 00031040 */  sll        $v0, $v1, 1
/* D4818 800FD3A8 00431021 */  addu       $v0, $v0, $v1
/* D481C 800FD3AC 00021180 */  sll        $v0, $v0, 6
/* D4820 800FD3B0 00441021 */  addu       $v0, $v0, $a0
/* D4824 800FD3B4 8C430020 */  lw         $v1, 0x20($v0)
/* D4828 800FD3B8 34630004 */  ori        $v1, $v1, 4
/* D482C 800FD3BC AC430020 */  sw         $v1, 0x20($v0)
/* D4830 800FD3C0 8E420040 */  lw         $v0, 0x40($s2)
/* D4834 800FD3C4 8443000A */  lh         $v1, 0xa($v0)
/* D4838 800FD3C8 00031040 */  sll        $v0, $v1, 1
/* D483C 800FD3CC 00431021 */  addu       $v0, $v0, $v1
/* D4840 800FD3D0 00021180 */  sll        $v0, $v0, 6
/* D4844 800FD3D4 00441021 */  addu       $v0, $v0, $a0
/* D4848 800FD3D8 8C430020 */  lw         $v1, 0x20($v0)
/* D484C 800FD3DC 34630004 */  ori        $v1, $v1, 4
/* D4850 800FD3E0 AC430020 */  sw         $v1, 0x20($v0)
/* D4854 800FD3E4 0803F506 */  j          .L800FD418
/* D4858 800FD3E8 A2600054 */   sb        $zero, 0x54($s3)
.L800FD3EC:
/* D485C 800FD3EC 0C017F57 */  jal        func_8005FD5C
/* D4860 800FD3F0 00000000 */   nop
/* D4864 800FD3F4 3042FFFF */  andi       $v0, $v0, 0xffff
/* D4868 800FD3F8 3C03800F */  lui        $v1, %hi(D_800F64F8)
/* D486C 800FD3FC 906364F8 */  lbu        $v1, %lo(D_800F64F8)($v1)
/* D4870 800FD400 00431021 */  addu       $v0, $v0, $v1
/* D4874 800FD404 14400004 */  bnez       $v0, .L800FD418
/* D4878 800FD408 00000000 */   nop
/* D487C 800FD40C 9242004D */  lbu        $v0, 0x4d($s2)
/* D4880 800FD410 2442FFFF */  addiu      $v0, $v0, -1
/* D4884 800FD414 A242004D */  sb         $v0, 0x4d($s2)
.L800FD418:
/* D4888 800FD418 0C017F57 */  jal        func_8005FD5C
/* D488C 800FD41C 00000000 */   nop
/* D4890 800FD420 3042FFFF */  andi       $v0, $v0, 0xffff
/* D4894 800FD424 3C03800F */  lui        $v1, %hi(D_800F64F8)
/* D4898 800FD428 906364F8 */  lbu        $v1, %lo(D_800F64F8)($v1)
/* D489C 800FD42C 00431021 */  addu       $v0, $v0, $v1
/* D48A0 800FD430 14400056 */  bnez       $v0, .L800FD58C
/* D48A4 800FD434 00141040 */   sll       $v0, $s4, 1
/* D48A8 800FD438 3C038010 */  lui        $v1, %hi(D_800FE2B0)
/* D48AC 800FD43C 2463E2B0 */  addiu      $v1, $v1, %lo(D_800FE2B0)
/* D48B0 800FD440 00431021 */  addu       $v0, $v0, $v1
/* D48B4 800FD444 94430000 */  lhu        $v1, ($v0)
/* D48B8 800FD448 24630001 */  addiu      $v1, $v1, 1
/* D48BC 800FD44C A4430000 */  sh         $v1, ($v0)
/* D48C0 800FD450 30620003 */  andi       $v0, $v1, 3
/* D48C4 800FD454 1440004D */  bnez       $v0, .L800FD58C
/* D48C8 800FD458 00031082 */   srl       $v0, $v1, 2
/* D48CC 800FD45C 30540003 */  andi       $s4, $v0, 3
/* D48D0 800FD460 9242004C */  lbu        $v0, 0x4c($s2)
/* D48D4 800FD464 3042007F */  andi       $v0, $v0, 0x7f
/* D48D8 800FD468 24030001 */  addiu      $v1, $zero, 1
/* D48DC 800FD46C 14430040 */  bne        $v0, $v1, .L800FD570
/* D48E0 800FD470 02802821 */   addu      $a1, $s4, $zero
/* D48E4 800FD474 00009821 */  addu       $s3, $zero, $zero
/* D48E8 800FD478 0014AC00 */  sll        $s5, $s4, 0x10
/* D48EC 800FD47C 3C17800F */  lui        $s7, %hi(D_800EE330)
/* D48F0 800FD480 26F7E330 */  addiu      $s7, $s7, %lo(D_800EE330)
/* D48F4 800FD484 0015B382 */  srl        $s6, $s5, 0xe
/* D48F8 800FD488 00131400 */  sll        $v0, $s3, 0x10
.L800FD48C:
/* D48FC 800FD48C 5440000A */  bnel       $v0, $zero, .L800FD4B8
/* D4900 800FD490 00132C00 */   sll       $a1, $s3, 0x10
/* D4904 800FD494 9244004E */  lbu        $a0, 0x4e($s2)
/* D4908 800FD498 C640001C */  lwc1       $f0, 0x1c($s2)
/* D490C 800FD49C E7A00010 */  swc1       $f0, 0x10($sp)
/* D4910 800FD4A0 C6400020 */  lwc1       $f0, 0x20($s2)
/* D4914 800FD4A4 E7A00014 */  swc1       $f0, 0x14($sp)
/* D4918 800FD4A8 00152C03 */  sra        $a1, $s5, 0x10
/* D491C 800FD4AC 8E470018 */  lw         $a3, 0x18($s2)
/* D4920 800FD4B0 0803F538 */  j          .L800FD4E0
/* D4924 800FD4B4 00003021 */   addu      $a2, $zero, $zero
.L800FD4B8:
/* D4928 800FD4B8 9244004E */  lbu        $a0, 0x4e($s2)
/* D492C 800FD4BC 00052B83 */  sra        $a1, $a1, 0xe
/* D4930 800FD4C0 02852821 */  addu       $a1, $s4, $a1
/* D4934 800FD4C4 00052C00 */  sll        $a1, $a1, 0x10
/* D4938 800FD4C8 E7B60010 */  swc1       $f22, 0x10($sp)
/* D493C 800FD4CC E7B80014 */  swc1       $f24, 0x14($sp)
/* D4940 800FD4D0 00052C03 */  sra        $a1, $a1, 0x10
/* D4944 800FD4D4 00003021 */  addu       $a2, $zero, $zero
/* D4948 800FD4D8 4407D000 */  mfc1       $a3, $f26
/* D494C 800FD4DC 00000000 */  nop
.L800FD4E0:
/* D4950 800FD4E0 0C019B7D */  jal        func_80066DF4
/* D4954 800FD4E4 00138C00 */   sll       $s1, $s3, 0x10
/* D4958 800FD4E8 00118C03 */  sra        $s1, $s1, 0x10
/* D495C 800FD4EC 00118080 */  sll        $s0, $s1, 2
/* D4960 800FD4F0 02908021 */  addu       $s0, $s4, $s0
/* D4964 800FD4F4 00108400 */  sll        $s0, $s0, 0x10
/* D4968 800FD4F8 00108403 */  sra        $s0, $s0, 0x10
/* D496C 800FD4FC 9244004E */  lbu        $a0, 0x4e($s2)
/* D4970 800FD500 02002821 */  addu       $a1, $s0, $zero
/* D4974 800FD504 0C019D20 */  jal        func_80067480
/* D4978 800FD508 34068000 */   ori       $a2, $zero, 0x8000
/* D497C 800FD50C 9244004E */  lbu        $a0, 0x4e($s2)
/* D4980 800FD510 3C063F80 */  lui        $a2, 0x3f80
/* D4984 800FD514 0C019CA1 */  jal        func_80067284
/* D4988 800FD518 02002821 */   addu      $a1, $s0, $zero
/* D498C 800FD51C 9242004E */  lbu        $v0, 0x4e($s2)
/* D4990 800FD520 00021080 */  sll        $v0, $v0, 2
/* D4994 800FD524 00571021 */  addu       $v0, $v0, $s7
/* D4998 800FD528 8C420000 */  lw         $v0, ($v0)
/* D499C 800FD52C 00118900 */  sll        $s1, $s1, 4
/* D49A0 800FD530 02228821 */  addu       $s1, $s1, $v0
/* D49A4 800FD534 02D18821 */  addu       $s1, $s6, $s1
/* D49A8 800FD538 8E23000C */  lw         $v1, 0xc($s1)
/* D49AC 800FD53C AC600058 */  sw         $zero, 0x58($v1)
/* D49B0 800FD540 A4600050 */  sh         $zero, 0x50($v1)
/* D49B4 800FD544 24020001 */  addiu      $v0, $zero, 1
/* D49B8 800FD548 A462000A */  sh         $v0, 0xa($v1)
/* D49BC 800FD54C 26620001 */  addiu      $v0, $s3, 1
/* D49C0 800FD550 00409821 */  addu       $s3, $v0, $zero
/* D49C4 800FD554 00021400 */  sll        $v0, $v0, 0x10
/* D49C8 800FD558 00021403 */  sra        $v0, $v0, 0x10
/* D49CC 800FD55C 28420002 */  slti       $v0, $v0, 2
/* D49D0 800FD560 1440FFCA */  bnez       $v0, .L800FD48C
/* D49D4 800FD564 00131400 */   sll       $v0, $s3, 0x10
/* D49D8 800FD568 0803F563 */  j          .L800FD58C
/* D49DC 800FD56C 00000000 */   nop
.L800FD570:
/* D49E0 800FD570 9244004E */  lbu        $a0, 0x4e($s2)
/* D49E4 800FD574 0C019D2F */  jal        func_800674BC
/* D49E8 800FD578 34068000 */   ori       $a2, $zero, 0x8000
/* D49EC 800FD57C 9244004E */  lbu        $a0, 0x4e($s2)
/* D49F0 800FD580 26850004 */  addiu      $a1, $s4, 4
/* D49F4 800FD584 0C019D2F */  jal        func_800674BC
/* D49F8 800FD588 34068000 */   ori       $a2, $zero, 0x8000
.L800FD58C:
/* D49FC 800FD58C C64C0018 */  lwc1       $f12, 0x18($s2)
/* D4A00 800FD590 0C03E5AA */  jal        func_800F96A8_D0B18
/* D4A04 800FD594 C64E0020 */   lwc1      $f14, 0x20($s2)
/* D4A08 800FD598 8E420040 */  lw         $v0, 0x40($s2)
/* D4A0C 800FD59C 84440002 */  lh         $a0, 2($v0)
/* D4A10 800FD5A0 8E450018 */  lw         $a1, 0x18($s2)
/* D4A14 800FD5A4 44060000 */  mfc1       $a2, $f0
/* D4A18 800FD5A8 0C0095E6 */  jal        func_80025798
/* D4A1C 800FD5AC 8E470020 */   lw        $a3, 0x20($s2)
/* D4A20 800FD5B0 4600D306 */  mov.s      $f12, $f26
/* D4A24 800FD5B4 0C03E5AA */  jal        func_800F96A8_D0B18
/* D4A28 800FD5B8 4600C386 */   mov.s     $f14, $f24
/* D4A2C 800FD5BC 8E420040 */  lw         $v0, 0x40($s2)
/* D4A30 800FD5C0 84440008 */  lh         $a0, 8($v0)
/* D4A34 800FD5C4 4405D000 */  mfc1       $a1, $f26
/* D4A38 800FD5C8 44060000 */  mfc1       $a2, $f0
/* D4A3C 800FD5CC 4407C000 */  mfc1       $a3, $f24
/* D4A40 800FD5D0 0C0095E6 */  jal        func_80025798
/* D4A44 800FD5D4 00000000 */   nop
/* D4A48 800FD5D8 C640001C */  lwc1       $f0, 0x1c($s2)
/* D4A4C 800FD5DC 460000A1 */  cvt.d.s    $f2, $f0
/* D4A50 800FD5E0 44800000 */  mtc1       $zero, $f0
/* D4A54 800FD5E4 44800800 */  mtc1       $zero, $f1
/* D4A58 800FD5E8 00000000 */  nop
/* D4A5C 800FD5EC 4622003C */  c.lt.d     $f0, $f2
/* D4A60 800FD5F0 00000000 */  nop
/* D4A64 800FD5F4 4500000C */  bc1f       .L800FD628
/* D4A68 800FD5F8 00000000 */   nop
/* D4A6C 800FD5FC 3C018010 */  lui        $at, %hi(D_800FDD50)
/* D4A70 800FD600 D420DD50 */  ldc1       $f0, %lo(D_800FDD50)($at)
/* D4A74 800FD604 46220003 */  div.d      $f0, $f0, $f2
/* D4A78 800FD608 3C018010 */  lui        $at, %hi(D_800FDD58)
/* D4A7C 800FD60C D422DD58 */  ldc1       $f2, %lo(D_800FDD58)($at)
/* D4A80 800FD610 46220002 */  mul.d      $f0, $f0, $f2
/* D4A84 800FD614 3C018010 */  lui        $at, %hi(D_800FDD60)
/* D4A88 800FD618 D422DD60 */  ldc1       $f2, %lo(D_800FDD60)($at)
/* D4A8C 800FD61C 46220000 */  add.d      $f0, $f0, $f2
/* D4A90 800FD620 0803F58B */  j          .L800FD62C
/* D4A94 800FD624 46200520 */   cvt.s.d   $f20, $f0
.L800FD628:
/* D4A98 800FD628 4480A000 */  mtc1       $zero, $f20
.L800FD62C:
/* D4A9C 800FD62C 8E420040 */  lw         $v0, 0x40($s2)
/* D4AA0 800FD630 84440002 */  lh         $a0, 2($v0)
/* D4AA4 800FD634 4405A000 */  mfc1       $a1, $f20
/* D4AA8 800FD638 3C063F80 */  lui        $a2, 0x3f80
/* D4AAC 800FD63C 4407A000 */  mfc1       $a3, $f20
/* D4AB0 800FD640 0C00960C */  jal        func_80025830
/* D4AB4 800FD644 00000000 */   nop
/* D4AB8 800FD648 8E420040 */  lw         $v0, 0x40($s2)
/* D4ABC 800FD64C 84440008 */  lh         $a0, 8($v0)
/* D4AC0 800FD650 4405A000 */  mfc1       $a1, $f20
/* D4AC4 800FD654 3C063F80 */  lui        $a2, 0x3f80
/* D4AC8 800FD658 4407A000 */  mfc1       $a3, $f20
/* D4ACC 800FD65C 0C00960C */  jal        func_80025830
/* D4AD0 800FD660 00000000 */   nop
.L800FD664:
/* D4AD4 800FD664 8FBF0058 */  lw         $ra, 0x58($sp)
/* D4AD8 800FD668 8FB70054 */  lw         $s7, 0x54($sp)
/* D4ADC 800FD66C 8FB60050 */  lw         $s6, 0x50($sp)
/* D4AE0 800FD670 8FB5004C */  lw         $s5, 0x4c($sp)
/* D4AE4 800FD674 8FB40048 */  lw         $s4, 0x48($sp)
/* D4AE8 800FD678 8FB30044 */  lw         $s3, 0x44($sp)
/* D4AEC 800FD67C 8FB20040 */  lw         $s2, 0x40($sp)
/* D4AF0 800FD680 8FB1003C */  lw         $s1, 0x3c($sp)
/* D4AF4 800FD684 8FB00038 */  lw         $s0, 0x38($sp)
/* D4AF8 800FD688 D7BA0078 */  ldc1       $f26, 0x78($sp)
/* D4AFC 800FD68C D7B80070 */  ldc1       $f24, 0x70($sp)
/* D4B00 800FD690 D7B60068 */  ldc1       $f22, 0x68($sp)
/* D4B04 800FD694 D7B40060 */  ldc1       $f20, 0x60($sp)
/* D4B08 800FD698 03E00008 */  jr         $ra
/* D4B0C 800FD69C 27BD0080 */   addiu     $sp, $sp, 0x80
