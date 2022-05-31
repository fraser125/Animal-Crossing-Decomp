lbl_8063D508:
/* 8063D508  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063D50C  7C 08 02 A6 */	mflr r0
/* 8063D510  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063D514  39 61 00 20 */	addi r11, r1, 0x20
/* 8063D518  4B A5 D9 B9 */	bl func_8009AED0
/* 8063D51C  7C BD 2B 78 */	mr r29, r5
/* 8063D520  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 8063D524  80 A5 00 00 */	lwz r5, 0(r5)
/* 8063D528  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 8063D52C  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 8063D530  7C 7C 1B 78 */	mr r28, r3
/* 8063D534  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 8063D538  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 8063D53C  38 7F 00 08 */	addi r3, r31, 8
/* 8063D540  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 8063D544  1C 64 03 00 */	mulli r3, r4, 0x300
/* 8063D548  90 1F 00 00 */	stw r0, 0(r31)
/* 8063D54C  3B C3 02 10 */	addi r30, r3, 0x210
/* 8063D550  80 7D 00 00 */	lwz r3, 0(r29)
/* 8063D554  7F DC F2 14 */	add r30, r28, r30
/* 8063D558  4B DC FE 7D */	bl _Matrix_to_Mtx_new
/* 8063D55C  3C A0 80 64 */	lis r5, fTMN_DrawBefore@ha /* 0x8063D4CC@ha */
/* 8063D560  3C 80 80 64 */	lis r4, fTMN_DrawAfter@ha /* 0x8063D500@ha */
/* 8063D564  90 7F 00 04 */	stw r3, 4(r31)
/* 8063D568  38 C5 D4 CC */	addi r6, r5, fTMN_DrawBefore@l /* 0x8063D4CC@l */
/* 8063D56C  38 E4 D5 00 */	addi r7, r4, fTMN_DrawAfter@l /* 0x8063D500@l */
/* 8063D570  7F A3 EB 78 */	mr r3, r29
/* 8063D574  7F C5 F3 78 */	mr r5, r30
/* 8063D578  7F 88 E3 78 */	mr r8, r28
/* 8063D57C  38 9C 01 34 */	addi r4, r28, 0x134
/* 8063D580  4B D3 41 B9 */	bl cKF_Si3_draw_R_SV
/* 8063D584  39 61 00 20 */	addi r11, r1, 0x20
/* 8063D588  4B A5 D9 95 */	bl func_8009AF1C
/* 8063D58C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063D590  7C 08 03 A6 */	mtlr r0
/* 8063D594  38 21 00 20 */	addi r1, r1, 0x20
/* 8063D598  4E 80 00 20 */	blr 
