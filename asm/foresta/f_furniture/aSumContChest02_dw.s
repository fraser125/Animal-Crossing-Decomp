lbl_80636B9C:
/* 80636B9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80636BA0  7C 08 02 A6 */	mflr r0
/* 80636BA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80636BA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80636BAC  4B A6 43 25 */	bl func_8009AED0
/* 80636BB0  7C BD 2B 78 */	mr r29, r5
/* 80636BB4  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 80636BB8  80 A5 00 00 */	lwz r5, 0(r5)
/* 80636BBC  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 80636BC0  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 80636BC4  7C 7C 1B 78 */	mr r28, r3
/* 80636BC8  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 80636BCC  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 80636BD0  38 7F 00 08 */	addi r3, r31, 8
/* 80636BD4  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 80636BD8  1C 64 03 00 */	mulli r3, r4, 0x300
/* 80636BDC  90 1F 00 00 */	stw r0, 0(r31)
/* 80636BE0  3B C3 02 10 */	addi r30, r3, 0x210
/* 80636BE4  80 7D 00 00 */	lwz r3, 0(r29)
/* 80636BE8  7F DC F2 14 */	add r30, r28, r30
/* 80636BEC  4B DD 67 E9 */	bl _Matrix_to_Mtx_new
/* 80636BF0  90 7F 00 04 */	stw r3, 4(r31)
/* 80636BF4  7F A3 EB 78 */	mr r3, r29
/* 80636BF8  7F C5 F3 78 */	mr r5, r30
/* 80636BFC  38 9C 01 34 */	addi r4, r28, 0x134
/* 80636C00  38 C0 00 00 */	li r6, 0
/* 80636C04  38 E0 00 00 */	li r7, 0
/* 80636C08  39 00 00 00 */	li r8, 0
/* 80636C0C  4B D3 AB 2D */	bl cKF_Si3_draw_R_SV
/* 80636C10  39 61 00 20 */	addi r11, r1, 0x20
/* 80636C14  4B A6 43 09 */	bl func_8009AF1C
/* 80636C18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80636C1C  7C 08 03 A6 */	mtlr r0
/* 80636C20  38 21 00 20 */	addi r1, r1, 0x20
/* 80636C24  4E 80 00 20 */	blr 
