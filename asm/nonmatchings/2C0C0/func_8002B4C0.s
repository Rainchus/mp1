	.set noat
	.set noreorder

glabel func_8002B4C0
/* 2C0C0 8002B4C0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 2C0C4 8002B4C4 AFBF0034 */  sw         $ra, 0x34($sp)
/* 2C0C8 8002B4C8 AFBE0030 */  sw         $fp, 0x30($sp)
/* 2C0CC 8002B4CC AFB7002C */  sw         $s7, 0x2c($sp)
/* 2C0D0 8002B4D0 AFB60028 */  sw         $s6, 0x28($sp)
/* 2C0D4 8002B4D4 AFB50024 */  sw         $s5, 0x24($sp)
/* 2C0D8 8002B4D8 AFB40020 */  sw         $s4, 0x20($sp)
/* 2C0DC 8002B4DC AFB3001C */  sw         $s3, 0x1c($sp)
/* 2C0E0 8002B4E0 AFB20018 */  sw         $s2, 0x18($sp)
/* 2C0E4 8002B4E4 AFB10014 */  sw         $s1, 0x14($sp)
/* 2C0E8 8002B4E8 AFB00010 */  sw         $s0, 0x10($sp)
/* 2C0EC 8002B4EC 00C09021 */  addu       $s2, $a2, $zero
/* 2C0F0 8002B4F0 97B3004A */  lhu        $s3, 0x4a($sp)
/* 2C0F4 8002B4F4 93B0004F */  lbu        $s0, 0x4f($sp)
/* 2C0F8 8002B4F8 3C01800F */  lui        $at, %hi(D_800F37DA)
/* 2C0FC 8002B4FC A03037DA */  sb         $s0, %lo(D_800F37DA)($at)
/* 2C100 8002B500 3C01800F */  lui        $at, %hi(D_800F37F0)
/* 2C104 8002B504 A02037F0 */  sb         $zero, %lo(D_800F37F0)($at)
/* 2C108 8002B508 0C008D7C */  jal        func_800235F0
/* 2C10C 8002B50C 00E0A021 */   addu      $s4, $a3, $zero
/* 2C110 8002B510 3C01800F */  lui        $at, %hi(D_800F37D8)
/* 2C114 8002B514 A43237D8 */  sh         $s2, %lo(D_800F37D8)($at)
/* 2C118 8002B518 3C01800F */  lui        $at, %hi(D_800EC6F2)
/* 2C11C 8002B51C A433C6F2 */  sh         $s3, %lo(D_800EC6F2)($at)
/* 2C120 8002B520 3C01800F */  lui        $at, %hi(D_800F50BA)
/* 2C124 8002B524 A43450BA */  sh         $s4, %lo(D_800F50BA)($at)
/* 2C128 8002B528 12000020 */  beqz       $s0, .L8002B5AC
/* 2C12C 8002B52C 00008821 */   addu      $s1, $zero, $zero
/* 2C130 8002B530 3256FFFF */  andi       $s6, $s2, 0xffff
/* 2C134 8002B534 3C1E800F */  lui        $fp, %hi(D_800F6500)
/* 2C138 8002B538 27DE6500 */  addiu      $fp, $fp, %lo(D_800F6500)
/* 2C13C 8002B53C 3275FFFF */  andi       $s5, $s3, 0xffff
/* 2C140 8002B540 3C17800F */  lui        $s7, %hi(D_800ED5E8)
/* 2C144 8002B544 26F7D5E8 */  addiu      $s7, $s7, %lo(D_800ED5E8)
/* 2C148 8002B548 3293FFFF */  andi       $s3, $s4, 0xffff
/* 2C14C 8002B54C 3C14800F */  lui        $s4, %hi(D_800F3720)
/* 2C150 8002B550 26943720 */  addiu      $s4, $s4, %lo(D_800F3720)
/* 2C154 8002B554 321200FF */  andi       $s2, $s0, 0xff
.L8002B558:
/* 2C158 8002B558 0C008D9A */  jal        func_80023668
/* 2C15C 8002B55C 00162100 */   sll       $a0, $s6, 4
/* 2C160 8002B560 00118400 */  sll        $s0, $s1, 0x10
/* 2C164 8002B564 00108383 */  sra        $s0, $s0, 0xe
/* 2C168 8002B568 021E1821 */  addu       $v1, $s0, $fp
/* 2C16C 8002B56C AC620000 */  sw         $v0, ($v1)
/* 2C170 8002B570 0C008D9A */  jal        func_80023668
/* 2C174 8002B574 00152180 */   sll       $a0, $s5, 6
/* 2C178 8002B578 02171821 */  addu       $v1, $s0, $s7
/* 2C17C 8002B57C AC620000 */  sw         $v0, ($v1)
/* 2C180 8002B580 0C008D9A */  jal        func_80023668
/* 2C184 8002B584 001320C0 */   sll       $a0, $s3, 3
/* 2C188 8002B588 02148021 */  addu       $s0, $s0, $s4
/* 2C18C 8002B58C AE020000 */  sw         $v0, ($s0)
/* 2C190 8002B590 26220001 */  addiu      $v0, $s1, 1
/* 2C194 8002B594 00408821 */  addu       $s1, $v0, $zero
/* 2C198 8002B598 00021400 */  sll        $v0, $v0, 0x10
/* 2C19C 8002B59C 00021403 */  sra        $v0, $v0, 0x10
/* 2C1A0 8002B5A0 0052102A */  slt        $v0, $v0, $s2
/* 2C1A4 8002B5A4 1440FFEC */  bnez       $v0, .L8002B558
/* 2C1A8 8002B5A8 00000000 */   nop
.L8002B5AC:
/* 2C1AC 8002B5AC 00008821 */  addu       $s1, $zero, $zero
/* 2C1B0 8002B5B0 3C12800F */  lui        $s2, %hi(D_800ED0D8)
/* 2C1B4 8002B5B4 2652D0D8 */  addiu      $s2, $s2, %lo(D_800ED0D8)
/* 2C1B8 8002B5B8 00118400 */  sll        $s0, $s1, 0x10
.L8002B5BC:
/* 2C1BC 8002B5BC 00108403 */  sra        $s0, $s0, 0x10
/* 2C1C0 8002B5C0 3C02800C */  lui        $v0, %hi(D_800C3500)
/* 2C1C4 8002B5C4 00501021 */  addu       $v0, $v0, $s0
/* 2C1C8 8002B5C8 90423500 */  lbu        $v0, %lo(D_800C3500)($v0)
/* 2C1CC 8002B5CC 00022040 */  sll        $a0, $v0, 1
/* 2C1D0 8002B5D0 00822021 */  addu       $a0, $a0, $v0
/* 2C1D4 8002B5D4 000420C0 */  sll        $a0, $a0, 3
/* 2C1D8 8002B5D8 00822023 */  subu       $a0, $a0, $v0
/* 2C1DC 8002B5DC 0C008D9A */  jal        func_80023668
/* 2C1E0 8002B5E0 00042080 */   sll       $a0, $a0, 2
/* 2C1E4 8002B5E4 00108080 */  sll        $s0, $s0, 2
/* 2C1E8 8002B5E8 02128021 */  addu       $s0, $s0, $s2
/* 2C1EC 8002B5EC AE020000 */  sw         $v0, ($s0)
/* 2C1F0 8002B5F0 26220001 */  addiu      $v0, $s1, 1
/* 2C1F4 8002B5F4 00408821 */  addu       $s1, $v0, $zero
/* 2C1F8 8002B5F8 00021400 */  sll        $v0, $v0, 0x10
/* 2C1FC 8002B5FC 00021403 */  sra        $v0, $v0, 0x10
/* 2C200 8002B600 28420008 */  slti       $v0, $v0, 8
/* 2C204 8002B604 5440FFED */  bnel       $v0, $zero, .L8002B5BC
/* 2C208 8002B608 00118400 */   sll       $s0, $s1, 0x10
/* 2C20C 8002B60C 0C008C10 */  jal        func_80023040
/* 2C210 8002B610 00000000 */   nop
/* 2C214 8002B614 0C00DF38 */  jal        func_80037CE0
/* 2C218 8002B618 00000000 */   nop
/* 2C21C 8002B61C 24030001 */  addiu      $v1, $zero, 1
/* 2C220 8002B620 3C01800F */  lui        $at, %hi(D_800ECB30)
/* 2C224 8002B624 A023CB30 */  sb         $v1, %lo(D_800ECB30)($at)
/* 2C228 8002B628 24020002 */  addiu      $v0, $zero, 2
/* 2C22C 8002B62C 3C01800F */  lui        $at, %hi(D_800EC6E8)
/* 2C230 8002B630 A022C6E8 */  sb         $v0, %lo(D_800EC6E8)($at)
/* 2C234 8002B634 3C01800F */  lui        $at, %hi(D_800F329C)
/* 2C238 8002B638 A022329C */  sb         $v0, %lo(D_800F329C)($at)
/* 2C23C 8002B63C 3C013F80 */  lui        $at, 0x3f80
/* 2C240 8002B640 44810000 */  mtc1       $at, $f0
/* 2C244 8002B644 3C01800F */  lui        $at, %hi(D_800F524C)
/* 2C248 8002B648 E420524C */  swc1       $f0, %lo(D_800F524C)($at)
/* 2C24C 8002B64C 3C01800F */  lui        $at, %hi(D_800F5028)
/* 2C250 8002B650 E4205028 */  swc1       $f0, %lo(D_800F5028)($at)
/* 2C254 8002B654 3C01800F */  lui        $at, %hi(D_800EE988)
/* 2C258 8002B658 A020E988 */  sb         $zero, %lo(D_800EE988)($at)
/* 2C25C 8002B65C 240200FF */  addiu      $v0, $zero, 0xff
/* 2C260 8002B660 3C01800F */  lui        $at, %hi(D_800EDEBC)
/* 2C264 8002B664 A022DEBC */  sb         $v0, %lo(D_800EDEBC)($at)
/* 2C268 8002B668 3C01800F */  lui        $at, %hi(D_800F3FF4)
/* 2C26C 8002B66C A0223FF4 */  sb         $v0, %lo(D_800F3FF4)($at)
/* 2C270 8002B670 3C01800F */  lui        $at, %hi(D_800F2CF9)
/* 2C274 8002B674 A0222CF9 */  sb         $v0, %lo(D_800F2CF9)($at)
/* 2C278 8002B678 240203B6 */  addiu      $v0, $zero, 0x3b6
/* 2C27C 8002B67C 3C01800F */  lui        $at, %hi(D_800F65DA)
/* 2C280 8002B680 A42265DA */  sh         $v0, %lo(D_800F65DA)($at)
/* 2C284 8002B684 240203E8 */  addiu      $v0, $zero, 0x3e8
/* 2C288 8002B688 3C01800F */  lui        $at, %hi(D_800ED0D0)
/* 2C28C 8002B68C A422D0D0 */  sh         $v0, %lo(D_800ED0D0)($at)
/* 2C290 8002B690 3C01800F */  lui        $at, %hi(D_800ED0C8)
/* 2C294 8002B694 A023D0C8 */  sb         $v1, %lo(D_800ED0C8)($at)
/* 2C298 8002B698 8FBF0034 */  lw         $ra, 0x34($sp)
/* 2C29C 8002B69C 8FBE0030 */  lw         $fp, 0x30($sp)
/* 2C2A0 8002B6A0 8FB7002C */  lw         $s7, 0x2c($sp)
/* 2C2A4 8002B6A4 8FB60028 */  lw         $s6, 0x28($sp)
/* 2C2A8 8002B6A8 8FB50024 */  lw         $s5, 0x24($sp)
/* 2C2AC 8002B6AC 8FB40020 */  lw         $s4, 0x20($sp)
/* 2C2B0 8002B6B0 8FB3001C */  lw         $s3, 0x1c($sp)
/* 2C2B4 8002B6B4 8FB20018 */  lw         $s2, 0x18($sp)
/* 2C2B8 8002B6B8 8FB10014 */  lw         $s1, 0x14($sp)
/* 2C2BC 8002B6BC 8FB00010 */  lw         $s0, 0x10($sp)
/* 2C2C0 8002B6C0 03E00008 */  jr         $ra
/* 2C2C4 8002B6C4 27BD0038 */   addiu     $sp, $sp, 0x38
