lbl_80635DB0:
/* 80635DB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80635DB4  7C 08 02 A6 */	mflr r0
/* 80635DB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80635DBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80635DC0  4B A6 51 11 */	bl func_8009AED0
/* 80635DC4  7C BD 2B 78 */	mr r29, r5
/* 80635DC8  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 80635DCC  80 A5 00 00 */	lwz r5, 0(r5)
/* 80635DD0  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 80635DD4  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 80635DD8  7C 7C 1B 78 */	mr r28, r3
/* 80635DDC  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 80635DE0  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 80635DE4  38 7F 00 08 */	addi r3, r31, 8
/* 80635DE8  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 80635DEC  1C 64 03 00 */	mulli r3, r4, 0x300
/* 80635DF0  90 1F 00 00 */	stw r0, 0(r31)
/* 80635DF4  3B C3 02 10 */	addi r30, r3, 0x210
/* 80635DF8  80 7D 00 00 */	lwz r3, 0(r29)
/* 80635DFC  7F DC F2 14 */	add r30, r28, r30
/* 80635E00  4B DD 75 D5 */	bl _Matrix_to_Mtx_new
/* 80635E04  90 7F 00 04 */	stw r3, 4(r31)
/* 80635E08  7F A3 EB 78 */	mr r3, r29
/* 80635E0C  7F C5 F3 78 */	mr r5, r30
/* 80635E10  38 9C 01 34 */	addi r4, r28, 0x134
/* 80635E14  38 C0 00 00 */	li r6, 0
/* 80635E18  38 E0 00 00 */	li r7, 0
/* 80635E1C  39 00 00 00 */	li r8, 0
/* 80635E20  4B D3 B9 19 */	bl cKF_Si3_draw_R_SV
/* 80635E24  39 61 00 20 */	addi r11, r1, 0x20
/* 80635E28  4B A6 50 F5 */	bl func_8009AF1C
/* 80635E2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80635E30  7C 08 03 A6 */	mtlr r0
/* 80635E34  38 21 00 20 */	addi r1, r1, 0x20
/* 80635E38  4E 80 00 20 */	blr 
