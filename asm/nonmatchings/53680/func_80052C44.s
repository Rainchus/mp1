	.set noat
	.set noreorder

glabel func_80052C44
/* 53844 80052C44 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 53848 80052C48 AFBF002C */  sw         $ra, 0x2c($sp)
/* 5384C 80052C4C AFB40028 */  sw         $s4, 0x28($sp)
/* 53850 80052C50 AFB30024 */  sw         $s3, 0x24($sp)
/* 53854 80052C54 AFB20020 */  sw         $s2, 0x20($sp)
/* 53858 80052C58 AFB1001C */  sw         $s1, 0x1c($sp)
/* 5385C 80052C5C AFB00018 */  sw         $s0, 0x18($sp)
/* 53860 80052C60 00A08821 */  addu       $s1, $a1, $zero
/* 53864 80052C64 00C09021 */  addu       $s2, $a2, $zero
/* 53868 80052C68 97B40042 */  lhu        $s4, 0x42($sp)
/* 5386C 80052C6C 0C014AA3 */  jal        func_80052A8C
/* 53870 80052C70 00E09821 */   addu      $s3, $a3, $zero
/* 53874 80052C74 00408021 */  addu       $s0, $v0, $zero
/* 53878 80052C78 0C014AA3 */  jal        func_80052A8C
/* 5387C 80052C7C 2404FFFF */   addiu     $a0, $zero, -1
/* 53880 80052C80 1602000A */  bne        $s0, $v0, .L80052CAC
/* 53884 80052C84 00112C00 */   sll       $a1, $s1, 0x10
/* 53888 80052C88 00123400 */  sll        $a2, $s2, 0x10
/* 5388C 80052C8C 00133C00 */  sll        $a3, $s3, 0x10
/* 53890 80052C90 3282FFFF */  andi       $v0, $s4, 0xffff
/* 53894 80052C94 AFA20010 */  sw         $v0, 0x10($sp)
/* 53898 80052C98 8E040020 */  lw         $a0, 0x20($s0)
/* 5389C 80052C9C 00052C03 */  sra        $a1, $a1, 0x10
/* 538A0 80052CA0 00063403 */  sra        $a2, $a2, 0x10
/* 538A4 80052CA4 0C00FA2E */  jal        func_8003E8B8
/* 538A8 80052CA8 00073C03 */   sra       $a3, $a3, 0x10
.L80052CAC:
/* 538AC 80052CAC 8FBF002C */  lw         $ra, 0x2c($sp)
/* 538B0 80052CB0 8FB40028 */  lw         $s4, 0x28($sp)
/* 538B4 80052CB4 8FB30024 */  lw         $s3, 0x24($sp)
/* 538B8 80052CB8 8FB20020 */  lw         $s2, 0x20($sp)
/* 538BC 80052CBC 8FB1001C */  lw         $s1, 0x1c($sp)
/* 538C0 80052CC0 8FB00018 */  lw         $s0, 0x18($sp)
/* 538C4 80052CC4 03E00008 */  jr         $ra
/* 538C8 80052CC8 27BD0030 */   addiu     $sp, $sp, 0x30
