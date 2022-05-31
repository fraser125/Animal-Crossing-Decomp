lbl_8063AC1C:
/* 8063AC1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063AC20  7C 08 02 A6 */	mflr r0
/* 8063AC24  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063AC28  39 61 00 20 */	addi r11, r1, 0x20
/* 8063AC2C  4B A6 02 9D */	bl func_8009AEC8
/* 8063AC30  7C BE 2B 78 */	mr r30, r5
/* 8063AC34  7C 7D 1B 78 */	mr r29, r3
/* 8063AC38  83 E5 00 00 */	lwz r31, 0(r5)
/* 8063AC3C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063AC40  80 A5 00 A0 */	lwz r5, 0xa0(r5)
/* 8063AC44  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063AC48  83 9F 02 D0 */	lwz r28, 0x2d0(r31)
/* 8063AC4C  A8 9D 08 10 */	lha r4, 0x810(r29)
/* 8063AC50  54 A5 07 FE */	clrlwi r5, r5, 0x1f
/* 8063AC54  38 7C 00 08 */	addi r3, r28, 8
/* 8063AC58  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063AC5C  1C 65 03 00 */	mulli r3, r5, 0x300
/* 8063AC60  7C 9A 0E 70 */	srawi r26, r4, 1
/* 8063AC64  90 1C 00 00 */	stw r0, 0(r28)
/* 8063AC68  3B 63 02 10 */	addi r27, r3, 0x210
/* 8063AC6C  80 7E 00 00 */	lwz r3, 0(r30)
/* 8063AC70  7F 7D DA 14 */	add r27, r29, r27
/* 8063AC74  4B DD 27 61 */	bl _Matrix_to_Mtx_new
/* 8063AC78  90 7C 00 04 */	stw r3, 4(r28)
/* 8063AC7C  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 8063AC80  3C 80 80 6E */	lis r4, aSumSlot_aime_idx@ha /* 0x806DCB20@ha */
/* 8063AC84  3C 60 80 6E */	lis r3, aSumSlot_anim@ha /* 0x806DCB18@ha */
/* 8063AC88  81 7F 02 D0 */	lwz r11, 0x2d0(r31)
/* 8063AC8C  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 8063AC90  39 44 CB 20 */	addi r10, r4, aSumSlot_aime_idx@l /* 0x806DCB20@l */
/* 8063AC94  39 23 CB 18 */	addi r9, r3, aSumSlot_anim@l /* 0x806DCB18@l */
/* 8063AC98  38 8B 00 08 */	addi r4, r11, 8
/* 8063AC9C  7F C3 F3 78 */	mr r3, r30
/* 8063ACA0  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 8063ACA4  7F 65 DB 78 */	mr r5, r27
/* 8063ACA8  38 9D 01 34 */	addi r4, r29, 0x134
/* 8063ACAC  38 C0 00 00 */	li r6, 0
/* 8063ACB0  90 0B 00 00 */	stw r0, 0(r11)
/* 8063ACB4  38 E0 00 00 */	li r7, 0
/* 8063ACB8  39 00 00 00 */	li r8, 0
/* 8063ACBC  7C 0A D0 AE */	lbzx r0, r10, r26
/* 8063ACC0  54 00 10 3A */	slwi r0, r0, 2
/* 8063ACC4  7C 09 00 2E */	lwzx r0, r9, r0
/* 8063ACC8  90 0B 00 04 */	stw r0, 4(r11)
/* 8063ACCC  4B D3 6A 6D */	bl cKF_Si3_draw_R_SV
/* 8063ACD0  39 61 00 20 */	addi r11, r1, 0x20
/* 8063ACD4  4B A6 02 41 */	bl func_8009AF14
/* 8063ACD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063ACDC  7C 08 03 A6 */	mtlr r0
/* 8063ACE0  38 21 00 20 */	addi r1, r1, 0x20
/* 8063ACE4  4E 80 00 20 */	blr 
