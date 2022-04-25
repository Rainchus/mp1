	.set noat
	.set noreorder

glabel func_800F8130_CF5A0
/* CF5A0 800F8130 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CF5A4 800F8134 AFBF0014 */  sw         $ra, 0x14($sp)
/* CF5A8 800F8138 AFB00010 */  sw         $s0, 0x10($sp)
/* CF5AC 800F813C 3C038010 */  lui        $v1, %hi(D_800FD87A)
/* CF5B0 800F8140 9463D87A */  lhu        $v1, %lo(D_800FD87A)($v1)
/* CF5B4 800F8144 24020001 */  addiu      $v0, $zero, 1
/* CF5B8 800F8148 14620032 */  bne        $v1, $v0, .L800F8214
/* CF5BC 800F814C 00808021 */   addu      $s0, $a0, $zero
/* CF5C0 800F8150 3C040012 */  lui        $a0, 0x12
/* CF5C4 800F8154 0C03E37D */  jal        func_800F8DF4_D0264
/* CF5C8 800F8158 34840011 */   ori       $a0, $a0, 0x11
/* CF5CC 800F815C 3C108010 */  lui        $s0, %hi(D_800FDE3E)
/* CF5D0 800F8160 2610DE3E */  addiu      $s0, $s0, %lo(D_800FDE3E)
/* CF5D4 800F8164 A6020000 */  sh         $v0, ($s0)
/* CF5D8 800F8168 24040001 */  addiu      $a0, $zero, 1
/* CF5DC 800F816C 0C0193BD */  jal        func_80064EF4
/* CF5E0 800F8170 00002821 */   addu      $a1, $zero, $zero
/* CF5E4 800F8174 3C018010 */  lui        $at, %hi(D_800FDDD8)
/* CF5E8 800F8178 A422DDD8 */  sh         $v0, %lo(D_800FDDD8)($at)
/* CF5EC 800F817C 00021400 */  sll        $v0, $v0, 0x10
/* CF5F0 800F8180 00022403 */  sra        $a0, $v0, 0x10
/* CF5F4 800F8184 00002821 */  addu       $a1, $zero, $zero
/* CF5F8 800F8188 0C019D20 */  jal        func_80067480
/* CF5FC 800F818C 2406FFFF */   addiu     $a2, $zero, -1
/* CF600 800F8190 3C048010 */  lui        $a0, %hi(D_800FDDD8)
/* CF604 800F8194 8484DDD8 */  lh         $a0, %lo(D_800FDDD8)($a0)
/* CF608 800F8198 3C064320 */  lui        $a2, 0x4320
/* CF60C 800F819C 3C0742F0 */  lui        $a3, 0x42f0
/* CF610 800F81A0 0C019CD5 */  jal        func_80067354
/* CF614 800F81A4 00002821 */   addu      $a1, $zero, $zero
/* CF618 800F81A8 3C048010 */  lui        $a0, %hi(D_800FDDD8)
/* CF61C 800F81AC 8484DDD8 */  lh         $a0, %lo(D_800FDDD8)($a0)
/* CF620 800F81B0 00002821 */  addu       $a1, $zero, $zero
/* CF624 800F81B4 86060000 */  lh         $a2, ($s0)
/* CF628 800F81B8 0C019C82 */  jal        func_80067208
/* CF62C 800F81BC 00003821 */   addu      $a3, $zero, $zero
/* CF630 800F81C0 3C048010 */  lui        $a0, %hi(D_800FDDD8)
/* CF634 800F81C4 8484DDD8 */  lh         $a0, %lo(D_800FDDD8)($a0)
/* CF638 800F81C8 00002821 */  addu       $a1, $zero, $zero
/* CF63C 800F81CC 0C019D2F */  jal        func_800674BC
/* CF640 800F81D0 2406140C */   addiu     $a2, $zero, 0x140c
/* CF644 800F81D4 3C048010 */  lui        $a0, %hi(D_800FDDD8)
/* CF648 800F81D8 8484DDD8 */  lh         $a0, %lo(D_800FDDD8)($a0)
/* CF64C 800F81DC 00002821 */  addu       $a1, $zero, $zero
/* CF650 800F81E0 240600A0 */  addiu      $a2, $zero, 0xa0
/* CF654 800F81E4 0C019B71 */  jal        func_80066DC4
/* CF658 800F81E8 24070078 */   addiu     $a3, $zero, 0x78
/* CF65C 800F81EC 3C048010 */  lui        $a0, %hi(D_800FDDD8)
/* CF660 800F81F0 8484DDD8 */  lh         $a0, %lo(D_800FDDD8)($a0)
/* CF664 800F81F4 00002821 */  addu       $a1, $zero, $zero
/* CF668 800F81F8 0C019D4B */  jal        func_8006752C
/* CF66C 800F81FC 240600B4 */   addiu     $a2, $zero, 0xb4
/* CF670 800F8200 3C018010 */  lui        $at, %hi(D_800FD87A)
/* CF674 800F8204 A420D87A */  sh         $zero, %lo(D_800FD87A)($at)
/* CF678 800F8208 3C018010 */  lui        $at, %hi(D_800FD87C)
/* CF67C 800F820C 0803E0BF */  j          .L800F82FC
/* CF680 800F8210 A420D87C */   sh        $zero, %lo(D_800FD87C)($at)
.L800F8214:
/* CF684 800F8214 3C038010 */  lui        $v1, %hi(D_800FD87C)
/* CF688 800F8218 9463D87C */  lhu        $v1, %lo(D_800FD87C)($v1)
/* CF68C 800F821C 2C62002D */  sltiu      $v0, $v1, 0x2d
/* CF690 800F8220 5040002A */  beql       $v0, $zero, .L800F82CC
/* CF694 800F8224 2402002D */   addiu     $v0, $zero, 0x2d
/* CF698 800F8228 44830000 */  mtc1       $v1, $f0
/* CF69C 800F822C 00000000 */  nop
/* CF6A0 800F8230 46800020 */  cvt.s.w    $f0, $f0
/* CF6A4 800F8234 46000021 */  cvt.d.s    $f0, $f0
/* CF6A8 800F8238 3C018010 */  lui        $at, %hi(D_800FDA88)
/* CF6AC 800F823C D422DA88 */  ldc1       $f2, %lo(D_800FDA88)($at)
/* CF6B0 800F8240 46220003 */  div.d      $f0, $f0, $f2
/* CF6B4 800F8244 46200020 */  cvt.s.d    $f0, $f0
/* CF6B8 800F8248 460000A1 */  cvt.d.s    $f2, $f0
/* CF6BC 800F824C 3C018010 */  lui        $at, %hi(D_800FDA90)
/* CF6C0 800F8250 D420DA90 */  ldc1       $f0, %lo(D_800FDA90)($at)
/* CF6C4 800F8254 46220001 */  sub.d      $f0, $f0, $f2
/* CF6C8 800F8258 46200020 */  cvt.s.d    $f0, $f0
/* CF6CC 800F825C 3C048010 */  lui        $a0, %hi(D_800FDDD8)
/* CF6D0 800F8260 8484DDD8 */  lh         $a0, %lo(D_800FDDD8)($a0)
/* CF6D4 800F8264 460000A1 */  cvt.d.s    $f2, $f0
/* CF6D8 800F8268 3C018010 */  lui        $at, %hi(D_800FDA98)
/* CF6DC 800F826C D420DA98 */  ldc1       $f0, %lo(D_800FDA98)($at)
/* CF6E0 800F8270 46201082 */  mul.d      $f2, $f2, $f0
/* CF6E4 800F8274 3C018010 */  lui        $at, %hi(D_800FDAA0)
/* CF6E8 800F8278 D420DAA0 */  ldc1       $f0, %lo(D_800FDAA0)($at)
/* CF6EC 800F827C 4622003E */  c.le.d     $f0, $f2
/* CF6F0 800F8280 00000000 */  nop
/* CF6F4 800F8284 00000000 */  nop
/* CF6F8 800F8288 45030006 */  bc1tl      .L800F82A4
/* CF6FC 800F828C 46201001 */   sub.d     $f0, $f2, $f0
/* CF700 800F8290 4620100D */  trunc.w.d  $f0, $f2
/* CF704 800F8294 44060000 */  mfc1       $a2, $f0
/* CF708 800F8298 00000000 */  nop
/* CF70C 800F829C 0803E0AF */  j          .L800F82BC
/* CF710 800F82A0 00002821 */   addu      $a1, $zero, $zero
.L800F82A4:
/* CF714 800F82A4 3C028000 */  lui        $v0, 0x8000
/* CF718 800F82A8 4620008D */  trunc.w.d  $f2, $f0
/* CF71C 800F82AC 44061000 */  mfc1       $a2, $f2
/* CF720 800F82B0 00000000 */  nop
/* CF724 800F82B4 00C23025 */  or         $a2, $a2, $v0
/* CF728 800F82B8 00002821 */  addu       $a1, $zero, $zero
.L800F82BC:
/* CF72C 800F82BC 0C019D4B */  jal        func_8006752C
/* CF730 800F82C0 30C6FFFF */   andi      $a2, $a2, 0xffff
/* CF734 800F82C4 0803E0BA */  j          .L800F82E8
/* CF738 800F82C8 00000000 */   nop
.L800F82CC:
/* CF73C 800F82CC 1462000B */  bne        $v1, $v0, .L800F82FC
/* CF740 800F82D0 00002821 */   addu      $a1, $zero, $zero
/* CF744 800F82D4 3C048010 */  lui        $a0, %hi(D_800FDDD8)
/* CF748 800F82D8 8484DDD8 */  lh         $a0, %lo(D_800FDDD8)($a0)
/* CF74C 800F82DC 0C019D2F */  jal        func_800674BC
/* CF750 800F82E0 34068000 */   ori       $a2, $zero, 0x8000
/* CF754 800F82E4 AE000014 */  sw         $zero, 0x14($s0)
.L800F82E8:
/* CF758 800F82E8 3C028010 */  lui        $v0, %hi(D_800FD87C)
/* CF75C 800F82EC 9442D87C */  lhu        $v0, %lo(D_800FD87C)($v0)
/* CF760 800F82F0 24420001 */  addiu      $v0, $v0, 1
/* CF764 800F82F4 3C018010 */  lui        $at, %hi(D_800FD87C)
/* CF768 800F82F8 A422D87C */  sh         $v0, %lo(D_800FD87C)($at)
.L800F82FC:
/* CF76C 800F82FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* CF770 800F8300 8FB00010 */  lw         $s0, 0x10($sp)
/* CF774 800F8304 03E00008 */  jr         $ra
/* CF778 800F8308 27BD0018 */   addiu     $sp, $sp, 0x18
