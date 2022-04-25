	.set noat
	.set noreorder

glabel func_8007B4AC
/* 7C0AC 8007B4AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7C0B0 8007B4B0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 7C0B4 8007B4B4 3C04800E */  lui        $a0, %hi(D_800E434C)
/* 7C0B8 8007B4B8 0C008E22 */  jal        func_80023888
/* 7C0BC 8007B4BC 8C84434C */   lw        $a0, %lo(D_800E434C)($a0)
/* 7C0C0 8007B4C0 3C04800E */  lui        $a0, %hi(D_800E4340)
/* 7C0C4 8007B4C4 0C00EDB2 */  jal        func_8003B6C8
/* 7C0C8 8007B4C8 8C844340 */   lw        $a0, %lo(D_800E4340)($a0)
/* 7C0CC 8007B4CC 3C04800E */  lui        $a0, %hi(D_800E4352)
/* 7C0D0 8007B4D0 0C00915B */  jal        func_8002456C
/* 7C0D4 8007B4D4 84844352 */   lh        $a0, %lo(D_800E4352)($a0)
/* 7C0D8 8007B4D8 3C01800F */  lui        $at, %hi(D_800F50B8)
/* 7C0DC 8007B4DC A02050B8 */  sb         $zero, %lo(D_800F50B8)($at)
/* 7C0E0 8007B4E0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7C0E4 8007B4E4 03E00008 */  jr         $ra
/* 7C0E8 8007B4E8 27BD0018 */   addiu     $sp, $sp, 0x18
