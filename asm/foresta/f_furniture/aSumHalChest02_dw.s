lbl_80637CD4:
/* 80637CD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80637CD8  7C 08 02 A6 */	mflr r0
/* 80637CDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80637CE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80637CE4  4B A6 31 ED */	bl func_8009AED0
/* 80637CE8  7C BD 2B 78 */	mr r29, r5
/* 80637CEC  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 80637CF0  80 A5 00 00 */	lwz r5, 0(r5)
/* 80637CF4  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 80637CF8  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 80637CFC  7C 7C 1B 78 */	mr r28, r3
/* 80637D00  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 80637D04  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 80637D08  38 7F 00 08 */	addi r3, r31, 8
/* 80637D0C  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 80637D10  1C 64 03 00 */	mulli r3, r4, 0x300
/* 80637D14  90 1F 00 00 */	stw r0, 0(r31)
/* 80637D18  3B C3 02 10 */	addi r30, r3, 0x210
/* 80637D1C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80637D20  7F DC F2 14 */	add r30, r28, r30
/* 80637D24  4B DD 56 B1 */	bl _Matrix_to_Mtx_new
/* 80637D28  90 7F 00 04 */	stw r3, 4(r31)
/* 80637D2C  7F A3 EB 78 */	mr r3, r29
/* 80637D30  7F C5 F3 78 */	mr r5, r30
/* 80637D34  38 9C 01 34 */	addi r4, r28, 0x134
/* 80637D38  38 C0 00 00 */	li r6, 0
/* 80637D3C  38 E0 00 00 */	li r7, 0
/* 80637D40  39 00 00 00 */	li r8, 0
/* 80637D44  4B D3 99 F5 */	bl cKF_Si3_draw_R_SV
/* 80637D48  39 61 00 20 */	addi r11, r1, 0x20
/* 80637D4C  4B A6 31 D1 */	bl func_8009AF1C
/* 80637D50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80637D54  7C 08 03 A6 */	mtlr r0
/* 80637D58  38 21 00 20 */	addi r1, r1, 0x20
/* 80637D5C  4E 80 00 20 */	blr 
