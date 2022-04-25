	.set noat
	.set noreorder

glabel func_8001758C
/* 1818C 8001758C 3C02800C */  lui        $v0, %hi(D_800C2FF4)
/* 18190 80017590 8C422FF4 */  lw         $v0, %lo(D_800C2FF4)($v0)
/* 18194 80017594 3C0341C6 */  lui        $v1, 0x41c6
/* 18198 80017598 34634E6D */  ori        $v1, $v1, 0x4e6d
/* 1819C 8001759C 00430018 */  mult       $v0, $v1
/* 181A0 800175A0 00001012 */  mflo       $v0
/* 181A4 800175A4 24433039 */  addiu      $v1, $v0, 0x3039
/* 181A8 800175A8 3C01800C */  lui        $at, %hi(D_800C2FF4)
/* 181AC 800175AC AC232FF4 */  sw         $v1, %lo(D_800C2FF4)($at)
/* 181B0 800175B0 2442303A */  addiu      $v0, $v0, 0x303a
/* 181B4 800175B4 00021402 */  srl        $v0, $v0, 0x10
/* 181B8 800175B8 03E00008 */  jr         $ra
/* 181BC 800175BC 304200FF */   andi      $v0, $v0, 0xff
