lbl_80632330:
/* 80632330  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80632334  7C 08 02 A6 */	mflr r0
/* 80632338  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063233C  39 61 00 20 */	addi r11, r1, 0x20
/* 80632340  4B A6 8B 91 */	bl func_8009AED0
/* 80632344  7C BD 2B 78 */	mr r29, r5
/* 80632348  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 8063234C  80 A5 00 00 */	lwz r5, 0(r5)
/* 80632350  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 80632354  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 80632358  7C 7C 1B 78 */	mr r28, r3
/* 8063235C  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 80632360  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 80632364  38 7F 00 08 */	addi r3, r31, 8
/* 80632368  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 8063236C  1C 64 03 00 */	mulli r3, r4, 0x300
/* 80632370  90 1F 00 00 */	stw r0, 0(r31)
/* 80632374  3B C3 02 10 */	addi r30, r3, 0x210
/* 80632378  80 7D 00 00 */	lwz r3, 0(r29)
/* 8063237C  7F DC F2 14 */	add r30, r28, r30
/* 80632380  4B DD B0 55 */	bl _Matrix_to_Mtx_new
/* 80632384  90 7F 00 04 */	stw r3, 4(r31)
/* 80632388  7F A3 EB 78 */	mr r3, r29
/* 8063238C  7F C5 F3 78 */	mr r5, r30
/* 80632390  38 9C 01 34 */	addi r4, r28, 0x134
/* 80632394  38 C0 00 00 */	li r6, 0
/* 80632398  38 E0 00 00 */	li r7, 0
/* 8063239C  39 00 00 00 */	li r8, 0
/* 806323A0  4B D3 F3 99 */	bl cKF_Si3_draw_R_SV
/* 806323A4  39 61 00 20 */	addi r11, r1, 0x20
/* 806323A8  4B A6 8B 75 */	bl func_8009AF1C
/* 806323AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806323B0  7C 08 03 A6 */	mtlr r0
/* 806323B4  38 21 00 20 */	addi r1, r1, 0x20
/* 806323B8  4E 80 00 20 */	blr 