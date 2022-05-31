lbl_8063CE38:
/* 8063CE38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063CE3C  7C 08 02 A6 */	mflr r0
/* 8063CE40  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063CE44  39 61 00 20 */	addi r11, r1, 0x20
/* 8063CE48  4B A5 E0 89 */	bl func_8009AED0
/* 8063CE4C  7C BD 2B 78 */	mr r29, r5
/* 8063CE50  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 8063CE54  80 A5 00 00 */	lwz r5, 0(r5)
/* 8063CE58  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 8063CE5C  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 8063CE60  7C 7C 1B 78 */	mr r28, r3
/* 8063CE64  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 8063CE68  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 8063CE6C  38 7F 00 08 */	addi r3, r31, 8
/* 8063CE70  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 8063CE74  1C 64 03 00 */	mulli r3, r4, 0x300
/* 8063CE78  90 1F 00 00 */	stw r0, 0(r31)
/* 8063CE7C  3B C3 02 10 */	addi r30, r3, 0x210
/* 8063CE80  80 7D 00 00 */	lwz r3, 0(r29)
/* 8063CE84  7F DC F2 14 */	add r30, r28, r30
/* 8063CE88  4B DD 05 4D */	bl _Matrix_to_Mtx_new
/* 8063CE8C  90 7F 00 04 */	stw r3, 4(r31)
/* 8063CE90  7F A3 EB 78 */	mr r3, r29
/* 8063CE94  7F C5 F3 78 */	mr r5, r30
/* 8063CE98  38 9C 01 34 */	addi r4, r28, 0x134
/* 8063CE9C  38 C0 00 00 */	li r6, 0
/* 8063CEA0  38 E0 00 00 */	li r7, 0
/* 8063CEA4  39 00 00 00 */	li r8, 0
/* 8063CEA8  4B D3 48 91 */	bl cKF_Si3_draw_R_SV
/* 8063CEAC  39 61 00 20 */	addi r11, r1, 0x20
/* 8063CEB0  4B A5 E0 6D */	bl func_8009AF1C
/* 8063CEB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063CEB8  7C 08 03 A6 */	mtlr r0
/* 8063CEBC  38 21 00 20 */	addi r1, r1, 0x20
/* 8063CEC0  4E 80 00 20 */	blr 
