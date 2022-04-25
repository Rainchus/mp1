	.set noat
	.set noreorder

glabel func_8004A814
/* 4B414 8004A814 3C03800C */  lui        $v1, %hi(D_800C4F78)
/* 4B418 8004A818 8C634F78 */  lw         $v1, %lo(D_800C4F78)($v1)
/* 4B41C 8004A81C 8C62000C */  lw         $v0, 0xc($v1)
/* 4B420 8004A820 00451023 */  subu       $v0, $v0, $a1
/* 4B424 8004A824 2442FFFF */  addiu      $v0, $v0, -1
/* 4B428 8004A828 8C630008 */  lw         $v1, 8($v1)
/* 4B42C 8004A82C 00430018 */  mult       $v0, $v1
/* 4B430 8004A830 00001012 */  mflo       $v0
/* 4B434 8004A834 00441021 */  addu       $v0, $v0, $a0
/* 4B438 8004A838 24420001 */  addiu      $v0, $v0, 1
/* 4B43C 8004A83C 03E00008 */  jr         $ra
/* 4B440 8004A840 3042FFFF */   andi      $v0, $v0, 0xffff
