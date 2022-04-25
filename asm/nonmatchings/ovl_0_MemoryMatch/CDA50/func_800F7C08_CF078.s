	.set noat
	.set noreorder

glabel func_800F7C08_CF078
/* CF078 800F7C08 3C02800F */  lui        $v0, %hi(D_800F33EC)
/* CF07C 800F7C0C 244233EC */  addiu      $v0, $v0, %lo(D_800F33EC)
/* CF080 800F7C10 3C01C225 */  lui        $at, 0xc225
/* CF084 800F7C14 34218F5C */  ori        $at, $at, 0x8f5c
/* CF088 800F7C18 44810000 */  mtc1       $at, $f0
/* CF08C 800F7C1C 00000000 */  nop
/* CF090 800F7C20 E4400000 */  swc1       $f0, ($v0)
/* CF094 800F7C24 AC400004 */  sw         $zero, 4($v0)
/* CF098 800F7C28 AC400008 */  sw         $zero, 8($v0)
/* CF09C 800F7C2C 3C02800F */  lui        $v0, %hi(D_800F6524)
/* CF0A0 800F7C30 24426524 */  addiu      $v0, $v0, %lo(D_800F6524)
/* CF0A4 800F7C34 3C01C0A0 */  lui        $at, 0xc0a0
/* CF0A8 800F7C38 44810000 */  mtc1       $at, $f0
/* CF0AC 800F7C3C 00000000 */  nop
/* CF0B0 800F7C40 E4400000 */  swc1       $f0, ($v0)
/* CF0B4 800F7C44 3C01C1F0 */  lui        $at, 0xc1f0
/* CF0B8 800F7C48 44810000 */  mtc1       $at, $f0
/* CF0BC 800F7C4C 00000000 */  nop
/* CF0C0 800F7C50 E4400004 */  swc1       $f0, 4($v0)
/* CF0C4 800F7C54 AC400008 */  sw         $zero, 8($v0)
/* CF0C8 800F7C58 3C0144C2 */  lui        $at, 0x44c2
/* CF0CC 800F7C5C 34218000 */  ori        $at, $at, 0x8000
/* CF0D0 800F7C60 44810000 */  mtc1       $at, $f0
/* CF0D4 800F7C64 3C01800F */  lui        $at, %hi(D_800EE98C)
/* CF0D8 800F7C68 03E00008 */  jr         $ra
/* CF0DC 800F7C6C E420E98C */   swc1      $f0, %lo(D_800EE98C)($at)
