lbl_8063782C:
/* 8063782C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80637830  7C 08 02 A6 */	mflr r0
/* 80637834  90 01 00 24 */	stw r0, 0x24(r1)
/* 80637838  39 61 00 20 */	addi r11, r1, 0x20
/* 8063783C  4B A6 36 95 */	bl func_8009AED0
/* 80637840  7C BD 2B 78 */	mr r29, r5
/* 80637844  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 80637848  80 A5 00 00 */	lwz r5, 0(r5)
/* 8063784C  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 80637850  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 80637854  7C 7C 1B 78 */	mr r28, r3
/* 80637858  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 8063785C  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 80637860  38 7F 00 08 */	addi r3, r31, 8
/* 80637864  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 80637868  1C 64 03 00 */	mulli r3, r4, 0x300
/* 8063786C  90 1F 00 00 */	stw r0, 0(r31)
/* 80637870  3B C3 02 10 */	addi r30, r3, 0x210
/* 80637874  80 7D 00 00 */	lwz r3, 0(r29)
/* 80637878  7F DC F2 14 */	add r30, r28, r30
/* 8063787C  4B DD 5B 59 */	bl _Matrix_to_Mtx_new
/* 80637880  90 7F 00 04 */	stw r3, 4(r31)
/* 80637884  7F A3 EB 78 */	mr r3, r29
/* 80637888  7F C5 F3 78 */	mr r5, r30
/* 8063788C  38 9C 01 34 */	addi r4, r28, 0x134
/* 80637890  38 C0 00 00 */	li r6, 0
/* 80637894  38 E0 00 00 */	li r7, 0
/* 80637898  39 00 00 00 */	li r8, 0
/* 8063789C  4B D3 9E 9D */	bl cKF_Si3_draw_R_SV
/* 806378A0  39 61 00 20 */	addi r11, r1, 0x20
/* 806378A4  4B A6 36 79 */	bl func_8009AF1C
/* 806378A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806378AC  7C 08 03 A6 */	mtlr r0
/* 806378B0  38 21 00 20 */	addi r1, r1, 0x20
/* 806378B4  4E 80 00 20 */	blr 
