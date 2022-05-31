lbl_8037E2CC:
/* 8037E2CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8037E2D0  7C 08 02 A6 */	mflr r0
/* 8037E2D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8037E2D8  39 61 00 30 */	addi r11, r1, 0x30
/* 8037E2DC  4B D1 CB F1 */	bl func_8009AECC
/* 8037E2E0  7C 9C 23 78 */	mr r28, r4
/* 8037E2E4  7C 7B 1B 78 */	mr r27, r3
/* 8037E2E8  7C BD 2B 78 */	mr r29, r5
/* 8037E2EC  7C DE 33 78 */	mr r30, r6
/* 8037E2F0  7C FF 3B 78 */	mr r31, r7
/* 8037E2F4  38 81 00 08 */	addi r4, r1, 8
/* 8037E2F8  4B FF FF A9 */	bl Camera2_GetLongBorderScale
/* 8037E2FC  C0 21 00 08 */	lfs f1, 8(r1)
/* 8037E300  7F 63 DB 78 */	mr r3, r27
/* 8037E304  7F 84 E3 78 */	mr r4, r28
/* 8037E308  7F A5 EB 78 */	mr r5, r29
/* 8037E30C  7F C6 F3 78 */	mr r6, r30
/* 8037E310  7F E7 FB 78 */	mr r7, r31
/* 8037E314  4B FF FE 0D */	bl Camera2_GetBorderScale
/* 8037E318  39 61 00 30 */	addi r11, r1, 0x30
/* 8037E31C  4B D1 CB FD */	bl func_8009AF18
/* 8037E320  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8037E324  7C 08 03 A6 */	mtlr r0
/* 8037E328  38 21 00 30 */	addi r1, r1, 0x30
/* 8037E32C  4E 80 00 20 */	blr 
