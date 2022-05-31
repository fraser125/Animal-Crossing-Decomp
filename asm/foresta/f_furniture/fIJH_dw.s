lbl_8062FC94:
/* 8062FC94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062FC98  7C 08 02 A6 */	mflr r0
/* 8062FC9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062FCA0  39 61 00 20 */	addi r11, r1, 0x20
/* 8062FCA4  4B A6 B2 2D */	bl func_8009AED0
/* 8062FCA8  7C BD 2B 78 */	mr r29, r5
/* 8062FCAC  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 8062FCB0  80 A5 00 00 */	lwz r5, 0(r5)
/* 8062FCB4  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 8062FCB8  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 8062FCBC  7C 7C 1B 78 */	mr r28, r3
/* 8062FCC0  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 8062FCC4  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 8062FCC8  38 7F 00 08 */	addi r3, r31, 8
/* 8062FCCC  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 8062FCD0  1C 64 03 00 */	mulli r3, r4, 0x300
/* 8062FCD4  90 1F 00 00 */	stw r0, 0(r31)
/* 8062FCD8  3B C3 02 10 */	addi r30, r3, 0x210
/* 8062FCDC  80 7D 00 00 */	lwz r3, 0(r29)
/* 8062FCE0  7F DC F2 14 */	add r30, r28, r30
/* 8062FCE4  4B DD D6 F1 */	bl _Matrix_to_Mtx_new
/* 8062FCE8  90 7F 00 04 */	stw r3, 4(r31)
/* 8062FCEC  7F A3 EB 78 */	mr r3, r29
/* 8062FCF0  7F C5 F3 78 */	mr r5, r30
/* 8062FCF4  38 9C 01 34 */	addi r4, r28, 0x134
/* 8062FCF8  38 C0 00 00 */	li r6, 0
/* 8062FCFC  38 E0 00 00 */	li r7, 0
/* 8062FD00  39 00 00 00 */	li r8, 0
/* 8062FD04  4B D4 1A 35 */	bl cKF_Si3_draw_R_SV
/* 8062FD08  39 61 00 20 */	addi r11, r1, 0x20
/* 8062FD0C  4B A6 B2 11 */	bl func_8009AF1C
/* 8062FD10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062FD14  7C 08 03 A6 */	mtlr r0
/* 8062FD18  38 21 00 20 */	addi r1, r1, 0x20
/* 8062FD1C  4E 80 00 20 */	blr 
