lbl_80632A24:
/* 80632A24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80632A28  7C 08 02 A6 */	mflr r0
/* 80632A2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80632A30  39 61 00 20 */	addi r11, r1, 0x20
/* 80632A34  4B A6 84 9D */	bl func_8009AED0
/* 80632A38  7C BD 2B 78 */	mr r29, r5
/* 80632A3C  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 80632A40  80 A5 00 00 */	lwz r5, 0(r5)
/* 80632A44  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 80632A48  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 80632A4C  7C 7C 1B 78 */	mr r28, r3
/* 80632A50  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 80632A54  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 80632A58  38 7F 00 08 */	addi r3, r31, 8
/* 80632A5C  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 80632A60  1C 64 03 00 */	mulli r3, r4, 0x300
/* 80632A64  90 1F 00 00 */	stw r0, 0(r31)
/* 80632A68  3B C3 02 10 */	addi r30, r3, 0x210
/* 80632A6C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80632A70  7F DC F2 14 */	add r30, r28, r30
/* 80632A74  4B DD A9 61 */	bl _Matrix_to_Mtx_new
/* 80632A78  3C A0 80 63 */	lis r5, fNBC_DrawBalloonBefore@ha /* 0x80632A14@ha */
/* 80632A7C  3C 80 80 63 */	lis r4, fNBC_DrawBalloonAfter@ha /* 0x80632A1C@ha */
/* 80632A80  90 7F 00 04 */	stw r3, 4(r31)
/* 80632A84  38 C5 2A 14 */	addi r6, r5, fNBC_DrawBalloonBefore@l /* 0x80632A14@l */
/* 80632A88  38 E4 2A 1C */	addi r7, r4, fNBC_DrawBalloonAfter@l /* 0x80632A1C@l */
/* 80632A8C  7F A3 EB 78 */	mr r3, r29
/* 80632A90  7F C5 F3 78 */	mr r5, r30
/* 80632A94  7F 88 E3 78 */	mr r8, r28
/* 80632A98  38 9C 01 34 */	addi r4, r28, 0x134
/* 80632A9C  4B D3 EC 9D */	bl cKF_Si3_draw_R_SV
/* 80632AA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80632AA4  4B A6 84 79 */	bl func_8009AF1C
/* 80632AA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80632AAC  7C 08 03 A6 */	mtlr r0
/* 80632AB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80632AB4  4E 80 00 20 */	blr 
