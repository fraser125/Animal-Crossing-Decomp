lbl_80634BB0:
/* 80634BB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80634BB4  7C 08 02 A6 */	mflr r0
/* 80634BB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80634BBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80634BC0  4B A6 63 11 */	bl func_8009AED0
/* 80634BC4  7C BD 2B 78 */	mr r29, r5
/* 80634BC8  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 80634BCC  80 A5 00 00 */	lwz r5, 0(r5)
/* 80634BD0  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 80634BD4  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 80634BD8  7C 7C 1B 78 */	mr r28, r3
/* 80634BDC  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 80634BE0  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 80634BE4  38 7F 00 08 */	addi r3, r31, 8
/* 80634BE8  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 80634BEC  1C 64 03 00 */	mulli r3, r4, 0x300
/* 80634BF0  90 1F 00 00 */	stw r0, 0(r31)
/* 80634BF4  3B C3 02 10 */	addi r30, r3, 0x210
/* 80634BF8  80 7D 00 00 */	lwz r3, 0(r29)
/* 80634BFC  7F DC F2 14 */	add r30, r28, r30
/* 80634C00  4B DD 87 D5 */	bl _Matrix_to_Mtx_new
/* 80634C04  90 7F 00 04 */	stw r3, 4(r31)
/* 80634C08  7F A3 EB 78 */	mr r3, r29
/* 80634C0C  7F C5 F3 78 */	mr r5, r30
/* 80634C10  38 9C 01 34 */	addi r4, r28, 0x134
/* 80634C14  38 C0 00 00 */	li r6, 0
/* 80634C18  38 E0 00 00 */	li r7, 0
/* 80634C1C  39 00 00 00 */	li r8, 0
/* 80634C20  4B D3 CB 19 */	bl cKF_Si3_draw_R_SV
/* 80634C24  39 61 00 20 */	addi r11, r1, 0x20
/* 80634C28  4B A6 62 F5 */	bl func_8009AF1C
/* 80634C2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80634C30  7C 08 03 A6 */	mtlr r0
/* 80634C34  38 21 00 20 */	addi r1, r1, 0x20
/* 80634C38  4E 80 00 20 */	blr 
