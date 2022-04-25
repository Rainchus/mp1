	.set noat
	.set noreorder

glabel func_8005CE48
/* 5DA48 8005CE48 04810002 */  bgez       $a0, .L8005CE54
/* 5DA4C 8005CE4C 00801021 */   addu      $v0, $a0, $zero
/* 5DA50 8005CE50 24820007 */  addiu      $v0, $a0, 7
.L8005CE54:
/* 5DA54 8005CE54 000210C3 */  sra        $v0, $v0, 3
/* 5DA58 8005CE58 3C05800F */  lui        $a1, %hi(D_800F37BC)
/* 5DA5C 8005CE5C 00A22821 */  addu       $a1, $a1, $v0
/* 5DA60 8005CE60 80A537BC */  lb         $a1, %lo(D_800F37BC)($a1)
/* 5DA64 8005CE64 04810002 */  bgez       $a0, .L8005CE70
/* 5DA68 8005CE68 00801821 */   addu      $v1, $a0, $zero
/* 5DA6C 8005CE6C 24830007 */  addiu      $v1, $a0, 7
.L8005CE70:
/* 5DA70 8005CE70 000318C3 */  sra        $v1, $v1, 3
/* 5DA74 8005CE74 000318C0 */  sll        $v1, $v1, 3
/* 5DA78 8005CE78 00831823 */  subu       $v1, $a0, $v1
/* 5DA7C 8005CE7C 24020001 */  addiu      $v0, $zero, 1
/* 5DA80 8005CE80 00621004 */  sllv       $v0, $v0, $v1
/* 5DA84 8005CE84 03E00008 */  jr         $ra
/* 5DA88 8005CE88 00A21024 */   and       $v0, $a1, $v0
