	.set noat
	.set noreorder

glabel func_8000C748
/* D348 8000C748 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D34C 8000C74C AFBF0018 */  sw         $ra, 0x18($sp)
/* D350 8000C750 AFB10014 */  sw         $s1, 0x14($sp)
/* D354 8000C754 AFB00010 */  sw         $s0, 0x10($sp)
/* D358 8000C758 3C03800D */  lui        $v1, %hi(D_800CDAF0)
/* D35C 8000C75C 8C63DAF0 */  lw         $v1, %lo(D_800CDAF0)($v1)
/* D360 8000C760 30628000 */  andi       $v0, $v1, 0x8000
/* D364 8000C764 10400023 */  beqz       $v0, .L8000C7F4
/* D368 8000C768 00A08821 */   addu      $s1, $a1, $zero
/* D36C 8000C76C 34650010 */  ori        $a1, $v1, 0x10
/* D370 8000C770 3C01800D */  lui        $at, %hi(D_800CDAF0)
/* D374 8000C774 AC25DAF0 */  sw         $a1, %lo(D_800CDAF0)($at)
/* D378 8000C778 3C03800D */  lui        $v1, %hi(D_800CDAEC)
/* D37C 8000C77C 8C63DAEC */  lw         $v1, %lo(D_800CDAEC)($v1)
/* D380 8000C780 24020001 */  addiu      $v0, $zero, 1
/* D384 8000C784 1462001B */  bne        $v1, $v0, .L8000C7F4
/* D388 8000C788 309000FF */   andi      $s0, $a0, 0xff
/* D38C 8000C78C 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* D390 8000C790 8C84DAD4 */  lw         $a0, %lo(D_800CDAD4)($a0)
/* D394 8000C794 0C022960 */  jal        func_8008A580
/* D398 8000C798 02002821 */   addu      $a1, $s0, $zero
/* D39C 8000C79C AE220000 */  sw         $v0, ($s1)
/* D3A0 8000C7A0 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* D3A4 8000C7A4 8C84DAD4 */  lw         $a0, %lo(D_800CDAD4)($a0)
/* D3A8 8000C7A8 0C022958 */  jal        func_8008A560
/* D3AC 8000C7AC 02002821 */   addu      $a1, $s0, $zero
/* D3B0 8000C7B0 A2220004 */  sb         $v0, 4($s1)
/* D3B4 8000C7B4 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* D3B8 8000C7B8 8C84DAD4 */  lw         $a0, %lo(D_800CDAD4)($a0)
/* D3BC 8000C7BC 0C022950 */  jal        func_8008A540
/* D3C0 8000C7C0 02002821 */   addu      $a1, $s0, $zero
/* D3C4 8000C7C4 A2220005 */  sb         $v0, 5($s1)
/* D3C8 8000C7C8 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* D3CC 8000C7CC 8C84DAD4 */  lw         $a0, %lo(D_800CDAD4)($a0)
/* D3D0 8000C7D0 0C022948 */  jal        func_8008A520
/* D3D4 8000C7D4 02002821 */   addu      $a1, $s0, $zero
/* D3D8 8000C7D8 A2220006 */  sb         $v0, 6($s1)
/* D3DC 8000C7DC 3C02800D */  lui        $v0, %hi(D_800CDAF0)
/* D3E0 8000C7E0 8C42DAF0 */  lw         $v0, %lo(D_800CDAF0)($v0)
/* D3E4 8000C7E4 2403FFEF */  addiu      $v1, $zero, -0x11
/* D3E8 8000C7E8 00431024 */  and        $v0, $v0, $v1
/* D3EC 8000C7EC 3C01800D */  lui        $at, %hi(D_800CDAF0)
/* D3F0 8000C7F0 AC22DAF0 */  sw         $v0, %lo(D_800CDAF0)($at)
.L8000C7F4:
/* D3F4 8000C7F4 8FBF0018 */  lw         $ra, 0x18($sp)
/* D3F8 8000C7F8 8FB10014 */  lw         $s1, 0x14($sp)
/* D3FC 8000C7FC 8FB00010 */  lw         $s0, 0x10($sp)
/* D400 8000C800 03E00008 */  jr         $ra
/* D404 8000C804 27BD0020 */   addiu     $sp, $sp, 0x20
