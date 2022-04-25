	.set noat
	.set noreorder

glabel func_80039BAC
/* 3A7AC 80039BAC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3A7B0 80039BB0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 3A7B4 80039BB4 00002021 */  addu       $a0, $zero, $zero
/* 3A7B8 80039BB8 3C05800F */  lui        $a1, %hi(D_800F37AC)
/* 3A7BC 80039BBC 8CA537AC */  lw         $a1, %lo(D_800F37AC)($a1)
.L80039BC0:
/* 3A7C0 80039BC0 00041400 */  sll        $v0, $a0, 0x10
/* 3A7C4 80039BC4 00021403 */  sra        $v0, $v0, 0x10
/* 3A7C8 80039BC8 00021840 */  sll        $v1, $v0, 1
/* 3A7CC 80039BCC 00621821 */  addu       $v1, $v1, $v0
/* 3A7D0 80039BD0 00031900 */  sll        $v1, $v1, 4
/* 3A7D4 80039BD4 00651821 */  addu       $v1, $v1, $a1
/* 3A7D8 80039BD8 24820001 */  addiu      $v0, $a0, 1
/* 3A7DC 80039BDC 00402021 */  addu       $a0, $v0, $zero
/* 3A7E0 80039BE0 00021400 */  sll        $v0, $v0, 0x10
/* 3A7E4 80039BE4 00021403 */  sra        $v0, $v0, 0x10
/* 3A7E8 80039BE8 28420080 */  slti       $v0, $v0, 0x80
/* 3A7EC 80039BEC 1440FFF4 */  bnez       $v0, .L80039BC0
/* 3A7F0 80039BF0 A4600020 */   sh        $zero, 0x20($v1)
/* 3A7F4 80039BF4 00002021 */  addu       $a0, $zero, $zero
/* 3A7F8 80039BF8 3C05800F */  lui        $a1, %hi(D_800ED730)
/* 3A7FC 80039BFC 8CA5D730 */  lw         $a1, %lo(D_800ED730)($a1)
.L80039C00:
/* 3A800 80039C00 00041400 */  sll        $v0, $a0, 0x10
/* 3A804 80039C04 00021403 */  sra        $v0, $v0, 0x10
/* 3A808 80039C08 00021880 */  sll        $v1, $v0, 2
/* 3A80C 80039C0C 00621821 */  addu       $v1, $v1, $v0
/* 3A810 80039C10 000318C0 */  sll        $v1, $v1, 3
/* 3A814 80039C14 00651821 */  addu       $v1, $v1, $a1
/* 3A818 80039C18 24820001 */  addiu      $v0, $a0, 1
/* 3A81C 80039C1C 00402021 */  addu       $a0, $v0, $zero
/* 3A820 80039C20 00021400 */  sll        $v0, $v0, 0x10
/* 3A824 80039C24 00021403 */  sra        $v0, $v0, 0x10
/* 3A828 80039C28 28420080 */  slti       $v0, $v0, 0x80
/* 3A82C 80039C2C 1440FFF4 */  bnez       $v0, .L80039C00
/* 3A830 80039C30 A460001C */   sh        $zero, 0x1c($v1)
/* 3A834 80039C34 0C008E3C */  jal        func_800238F0
/* 3A838 80039C38 24043A98 */   addiu     $a0, $zero, 0x3a98
/* 3A83C 80039C3C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3A840 80039C40 03E00008 */  jr         $ra
/* 3A844 80039C44 27BD0018 */   addiu     $sp, $sp, 0x18
