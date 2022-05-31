lbl_8063B8C0:
/* 8063B8C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063B8C4  7C 08 02 A6 */	mflr r0
/* 8063B8C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063B8CC  39 61 00 20 */	addi r11, r1, 0x20
/* 8063B8D0  4B A5 F6 01 */	bl func_8009AED0
/* 8063B8D4  7C BD 2B 78 */	mr r29, r5
/* 8063B8D8  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 8063B8DC  80 A5 00 00 */	lwz r5, 0(r5)
/* 8063B8E0  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 8063B8E4  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 8063B8E8  7C 7C 1B 78 */	mr r28, r3
/* 8063B8EC  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 8063B8F0  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 8063B8F4  38 7F 00 08 */	addi r3, r31, 8
/* 8063B8F8  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 8063B8FC  1C 64 03 00 */	mulli r3, r4, 0x300
/* 8063B900  90 1F 00 00 */	stw r0, 0(r31)
/* 8063B904  3B C3 02 10 */	addi r30, r3, 0x210
/* 8063B908  80 7D 00 00 */	lwz r3, 0(r29)
/* 8063B90C  7F DC F2 14 */	add r30, r28, r30
/* 8063B910  4B DD 1A C5 */	bl _Matrix_to_Mtx_new
/* 8063B914  90 7F 00 04 */	stw r3, 4(r31)
/* 8063B918  7F A3 EB 78 */	mr r3, r29
/* 8063B91C  7F C5 F3 78 */	mr r5, r30
/* 8063B920  38 9C 01 34 */	addi r4, r28, 0x134
/* 8063B924  38 C0 00 00 */	li r6, 0
/* 8063B928  38 E0 00 00 */	li r7, 0
/* 8063B92C  39 00 00 00 */	li r8, 0
/* 8063B930  4B D3 5E 09 */	bl cKF_Si3_draw_R_SV
/* 8063B934  39 61 00 20 */	addi r11, r1, 0x20
/* 8063B938  4B A5 F5 E5 */	bl func_8009AF1C
/* 8063B93C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063B940  7C 08 03 A6 */	mtlr r0
/* 8063B944  38 21 00 20 */	addi r1, r1, 0x20
/* 8063B948  4E 80 00 20 */	blr 
