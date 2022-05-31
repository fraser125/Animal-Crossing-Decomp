lbl_80636EC4:
/* 80636EC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80636EC8  7C 08 02 A6 */	mflr r0
/* 80636ECC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80636ED0  39 61 00 20 */	addi r11, r1, 0x20
/* 80636ED4  4B A6 3F FD */	bl func_8009AED0
/* 80636ED8  7C BD 2B 78 */	mr r29, r5
/* 80636EDC  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 80636EE0  80 A5 00 00 */	lwz r5, 0(r5)
/* 80636EE4  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 80636EE8  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 80636EEC  7C 7C 1B 78 */	mr r28, r3
/* 80636EF0  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 80636EF4  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 80636EF8  38 7F 00 08 */	addi r3, r31, 8
/* 80636EFC  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 80636F00  1C 64 03 00 */	mulli r3, r4, 0x300
/* 80636F04  90 1F 00 00 */	stw r0, 0(r31)
/* 80636F08  3B C3 02 10 */	addi r30, r3, 0x210
/* 80636F0C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80636F10  7F DC F2 14 */	add r30, r28, r30
/* 80636F14  4B DD 64 C1 */	bl _Matrix_to_Mtx_new
/* 80636F18  90 7F 00 04 */	stw r3, 4(r31)
/* 80636F1C  7F A3 EB 78 */	mr r3, r29
/* 80636F20  7F C5 F3 78 */	mr r5, r30
/* 80636F24  38 9C 01 34 */	addi r4, r28, 0x134
/* 80636F28  38 C0 00 00 */	li r6, 0
/* 80636F2C  38 E0 00 00 */	li r7, 0
/* 80636F30  39 00 00 00 */	li r8, 0
/* 80636F34  4B D3 A8 05 */	bl cKF_Si3_draw_R_SV
/* 80636F38  39 61 00 20 */	addi r11, r1, 0x20
/* 80636F3C  4B A6 3F E1 */	bl func_8009AF1C
/* 80636F40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80636F44  7C 08 03 A6 */	mtlr r0
/* 80636F48  38 21 00 20 */	addi r1, r1, 0x20
/* 80636F4C  4E 80 00 20 */	blr 
