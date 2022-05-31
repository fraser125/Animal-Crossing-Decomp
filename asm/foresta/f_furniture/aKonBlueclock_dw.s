lbl_8063145C:
/* 8063145C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80631460  7C 08 02 A6 */	mflr r0
/* 80631464  90 01 00 24 */	stw r0, 0x24(r1)
/* 80631468  39 61 00 20 */	addi r11, r1, 0x20
/* 8063146C  4B A6 9A 69 */	bl func_8009AED4
/* 80631470  7C BE 2B 78 */	mr r30, r5
/* 80631474  7C 7D 1B 78 */	mr r29, r3
/* 80631478  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 8063147C  80 65 00 00 */	lwz r3, 0(r5)
/* 80631480  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80631484  1C 80 03 00 */	mulli r4, r0, 0x300
/* 80631488  3B E4 02 10 */	addi r31, r4, 0x210
/* 8063148C  7F FD FA 14 */	add r31, r29, r31
/* 80631490  4B DB 3C 79 */	bl _texture_z_light_fog_prim
/* 80631494  80 7E 00 00 */	lwz r3, 0(r30)
/* 80631498  4B DB 3C C1 */	bl _texture_z_light_fog_prim_xlu
/* 8063149C  3C 60 80 63 */	lis r3, aKonBlueclock_DwBefore@ha /* 0x80631408@ha */
/* 806314A0  3C 80 80 63 */	lis r4, func_80631400@ha /* 0x80631400@ha */
/* 806314A4  38 C3 14 08 */	addi r6, r3, aKonBlueclock_DwBefore@l /* 0x80631408@l */
/* 806314A8  7F E5 FB 78 */	mr r5, r31
/* 806314AC  38 E4 14 00 */	addi r7, r4, func_80631400@l /* 0x80631400@l */
/* 806314B0  7F C3 F3 78 */	mr r3, r30
/* 806314B4  7F A8 EB 78 */	mr r8, r29
/* 806314B8  38 9D 01 34 */	addi r4, r29, 0x134
/* 806314BC  4B D4 02 7D */	bl cKF_Si3_draw_R_SV
/* 806314C0  39 61 00 20 */	addi r11, r1, 0x20
/* 806314C4  4B A6 9A 5D */	bl func_8009AF20
/* 806314C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806314CC  7C 08 03 A6 */	mtlr r0
/* 806314D0  38 21 00 20 */	addi r1, r1, 0x20
/* 806314D4  4E 80 00 20 */	blr 
