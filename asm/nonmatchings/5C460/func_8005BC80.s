	.set noat
	.set noreorder

glabel func_8005BC80
/* 5C880 8005BC80 3C01800F */  lui        $at, %hi(D_800F524A)
/* 5C884 8005BC84 A020524A */  sb         $zero, %lo(D_800F524A)($at)
/* 5C888 8005BC88 00001821 */  addu       $v1, $zero, $zero
/* 5C88C 8005BC8C 2404FFFF */  addiu      $a0, $zero, -1
/* 5C890 8005BC90 00031080 */  sll        $v0, $v1, 2
.L8005BC94:
/* 5C894 8005BC94 3C01800F */  lui        $at, %hi(D_800F33D8)
/* 5C898 8005BC98 00220821 */  addu       $at, $at, $v0
/* 5C89C 8005BC9C A42433D8 */  sh         $a0, %lo(D_800F33D8)($at)
/* 5C8A0 8005BCA0 24630001 */  addiu      $v1, $v1, 1
/* 5C8A4 8005BCA4 28620004 */  slti       $v0, $v1, 4
/* 5C8A8 8005BCA8 1440FFFA */  bnez       $v0, .L8005BC94
/* 5C8AC 8005BCAC 00031080 */   sll       $v0, $v1, 2
/* 5C8B0 8005BCB0 24020001 */  addiu      $v0, $zero, 1
/* 5C8B4 8005BCB4 3C01800F */  lui        $at, %hi(D_800F3752)
/* 5C8B8 8005BCB8 A0223752 */  sb         $v0, %lo(D_800F3752)($at)
/* 5C8BC 8005BCBC 3C01800F */  lui        $at, %hi(D_800F0A22)
/* 5C8C0 8005BCC0 03E00008 */  jr         $ra
/* 5C8C4 8005BCC4 A0220A22 */   sb        $v0, %lo(D_800F0A22)($at)
