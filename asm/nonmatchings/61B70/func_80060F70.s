	.set noat
	.set noreorder

glabel func_80060F70
/* 61B70 80060F70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 61B74 80060F74 AFBF0010 */  sw         $ra, 0x10($sp)
/* 61B78 80060F78 97A3002A */  lhu        $v1, 0x2a($sp)
/* 61B7C 80060F7C 3C02800E */  lui        $v0, %hi(D_800D8AB2)
/* 61B80 80060F80 24428AB2 */  addiu      $v0, $v0, %lo(D_800D8AB2)
/* 61B84 80060F84 A4450000 */  sh         $a1, ($v0)
/* 61B88 80060F88 A4460002 */  sh         $a2, 2($v0)
/* 61B8C 80060F8C 3C02800E */  lui        $v0, %hi(D_800D8B8A)
/* 61B90 80060F90 24428B8A */  addiu      $v0, $v0, %lo(D_800D8B8A)
/* 61B94 80060F94 A4470000 */  sh         $a3, ($v0)
/* 61B98 80060F98 A4430002 */  sh         $v1, 2($v0)
/* 61B9C 80060F9C 3C05800E */  lui        $a1, %hi(D_800D8C60)
/* 61BA0 80060FA0 24A58C60 */  addiu      $a1, $a1, %lo(D_800D8C60)
/* 61BA4 80060FA4 3C01800E */  lui        $at, %hi(D_800D8CC8)
/* 61BA8 80060FA8 AC258CC8 */  sw         $a1, %lo(D_800D8CC8)($at)
/* 61BAC 80060FAC 3C01800E */  lui        $at, %hi(D_800D8CCC)
/* 61BB0 80060FB0 AC208CCC */  sw         $zero, %lo(D_800D8CCC)($at)
/* 61BB4 80060FB4 24020001 */  addiu      $v0, $zero, 1
/* 61BB8 80060FB8 3C01800E */  lui        $at, %hi(D_800D8C88)
/* 61BBC 80060FBC AC228C88 */  sw         $v0, %lo(D_800D8C88)($at)
/* 61BC0 80060FC0 24020002 */  addiu      $v0, $zero, 2
/* 61BC4 80060FC4 3C01800E */  lui        $at, %hi(D_800D8C8C)
/* 61BC8 80060FC8 AC228C8C */  sw         $v0, %lo(D_800D8C8C)($at)
/* 61BCC 80060FCC 3C03800B */  lui        $v1, %hi(D_800B1760)
/* 61BD0 80060FD0 24631760 */  addiu      $v1, $v1, %lo(D_800B1760)
/* 61BD4 80060FD4 3C01800E */  lui        $at, %hi(D_800D8C90)
/* 61BD8 80060FD8 AC238C90 */  sw         $v1, %lo(D_800D8C90)($at)
/* 61BDC 80060FDC 3C02800B */  lui        $v0, %hi(D_800B1830)
/* 61BE0 80060FE0 24421830 */  addiu      $v0, $v0, %lo(D_800B1830)
/* 61BE4 80060FE4 00431023 */  subu       $v0, $v0, $v1
/* 61BE8 80060FE8 3C01800E */  lui        $at, %hi(D_800D8C94)
/* 61BEC 80060FEC AC228C94 */  sw         $v0, %lo(D_800D8C94)($at)
/* 61BF0 80060FF0 24021000 */  addiu      $v0, $zero, 0x1000
/* 61BF4 80060FF4 3C01800E */  lui        $at, %hi(D_800D8C9C)
/* 61BF8 80060FF8 AC228C9C */  sw         $v0, %lo(D_800D8C9C)($at)
/* 61BFC 80060FFC 24020800 */  addiu      $v0, $zero, 0x800
/* 61C00 80061000 3C01800E */  lui        $at, %hi(D_800D8CA4)
/* 61C04 80061004 AC228CA4 */  sw         $v0, %lo(D_800D8CA4)($at)
/* 61C08 80061008 24020400 */  addiu      $v0, $zero, 0x400
/* 61C0C 8006100C 3C01800E */  lui        $at, %hi(D_800D8CAC)
/* 61C10 80061010 AC228CAC */  sw         $v0, %lo(D_800D8CAC)($at)
/* 61C14 80061014 3C02800E */  lui        $v0, %hi(D_800D8CD0)
/* 61C18 80061018 24428CD0 */  addiu      $v0, $v0, %lo(D_800D8CD0)
/* 61C1C 8006101C 3C01800E */  lui        $at, %hi(D_800D8CB8)
/* 61C20 80061020 AC228CB8 */  sw         $v0, %lo(D_800D8CB8)($at)
/* 61C24 80061024 3C01800E */  lui        $at, %hi(D_800D8CBC)
/* 61C28 80061028 AC208CBC */  sw         $zero, %lo(D_800D8CBC)($at)
/* 61C2C 8006102C 24020C00 */  addiu      $v0, $zero, 0xc00
/* 61C30 80061030 3C01800E */  lui        $at, %hi(D_800D8CC4)
/* 61C34 80061034 AC228CC4 */  sw         $v0, %lo(D_800D8CC4)($at)
/* 61C38 80061038 00042400 */  sll        $a0, $a0, 0x10
/* 61C3C 8006103C 00042403 */  sra        $a0, $a0, 0x10
/* 61C40 80061040 3C03800F */  lui        $v1, %hi(D_800F317C)
/* 61C44 80061044 8C63317C */  lw         $v1, %lo(D_800F317C)($v1)
/* 61C48 80061048 000410C0 */  sll        $v0, $a0, 3
/* 61C4C 8006104C 00431021 */  addu       $v0, $v0, $v1
/* 61C50 80061050 8C420000 */  lw         $v0, ($v0)
/* 61C54 80061054 3C01800E */  lui        $at, %hi(D_800D8C98)
/* 61C58 80061058 AC228C98 */  sw         $v0, %lo(D_800D8C98)($at)
/* 61C5C 8006105C 000420C0 */  sll        $a0, $a0, 3
/* 61C60 80061060 34840004 */  ori        $a0, $a0, 4
/* 61C64 80061064 00832021 */  addu       $a0, $a0, $v1
/* 61C68 80061068 8C820000 */  lw         $v0, ($a0)
/* 61C6C 8006106C 3C01800E */  lui        $at, %hi(D_800D8CA0)
/* 61C70 80061070 AC228CA0 */  sw         $v0, %lo(D_800D8CA0)($at)
/* 61C74 80061074 00A02021 */  addu       $a0, $a1, $zero
/* 61C78 80061078 3C05800E */  lui        $a1, %hi(D_800D8C78)
/* 61C7C 8006107C 24A58C78 */  addiu      $a1, $a1, %lo(D_800D8C78)
/* 61C80 80061080 0C022188 */  jal        func_80088620
/* 61C84 80061084 24060003 */   addiu     $a2, $zero, 3
/* 61C88 80061088 8FBF0010 */  lw         $ra, 0x10($sp)
/* 61C8C 8006108C 03E00008 */  jr         $ra
/* 61C90 80061090 27BD0018 */   addiu     $sp, $sp, 0x18
