lbl_8063D988:
/* 8063D988  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063D98C  7C 08 02 A6 */	mflr r0
/* 8063D990  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063D994  39 61 00 20 */	addi r11, r1, 0x20
/* 8063D998  4B A5 D5 39 */	bl func_8009AED0
/* 8063D99C  7C BD 2B 78 */	mr r29, r5
/* 8063D9A0  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 8063D9A4  80 A5 00 00 */	lwz r5, 0(r5)
/* 8063D9A8  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 8063D9AC  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 8063D9B0  7C 7C 1B 78 */	mr r28, r3
/* 8063D9B4  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 8063D9B8  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 8063D9BC  38 7F 00 08 */	addi r3, r31, 8
/* 8063D9C0  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 8063D9C4  1C 64 03 00 */	mulli r3, r4, 0x300
/* 8063D9C8  90 1F 00 00 */	stw r0, 0(r31)
/* 8063D9CC  3B C3 02 10 */	addi r30, r3, 0x210
/* 8063D9D0  80 7D 00 00 */	lwz r3, 0(r29)
/* 8063D9D4  7F DC F2 14 */	add r30, r28, r30
/* 8063D9D8  4B DC F9 FD */	bl _Matrix_to_Mtx_new
/* 8063D9DC  3C A0 80 64 */	lis r5, fTTD_DrawBefore@ha /* 0x8063D858@ha */
/* 8063D9E0  3C 80 80 64 */	lis r4, fTTD_DrawAfter@ha /* 0x8063D878@ha */
/* 8063D9E4  90 7F 00 04 */	stw r3, 4(r31)
/* 8063D9E8  38 C5 D8 58 */	addi r6, r5, fTTD_DrawBefore@l /* 0x8063D858@l */
/* 8063D9EC  38 E4 D8 78 */	addi r7, r4, fTTD_DrawAfter@l /* 0x8063D878@l */
/* 8063D9F0  7F A3 EB 78 */	mr r3, r29
/* 8063D9F4  7F C5 F3 78 */	mr r5, r30
/* 8063D9F8  7F 88 E3 78 */	mr r8, r28
/* 8063D9FC  38 9C 01 34 */	addi r4, r28, 0x134
/* 8063DA00  4B D3 3D 39 */	bl cKF_Si3_draw_R_SV
/* 8063DA04  39 61 00 20 */	addi r11, r1, 0x20
/* 8063DA08  4B A5 D5 15 */	bl func_8009AF1C
/* 8063DA0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063DA10  7C 08 03 A6 */	mtlr r0
/* 8063DA14  38 21 00 20 */	addi r1, r1, 0x20
/* 8063DA18  4E 80 00 20 */	blr 
