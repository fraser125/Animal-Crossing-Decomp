lbl_80640B88:
/* 80640B88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80640B8C  7C 08 02 A6 */	mflr r0
/* 80640B90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80640B94  39 61 00 20 */	addi r11, r1, 0x20
/* 80640B98  4B A5 A3 39 */	bl func_8009AED0
/* 80640B9C  7C BD 2B 78 */	mr r29, r5
/* 80640BA0  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 80640BA4  80 A5 00 00 */	lwz r5, 0(r5)
/* 80640BA8  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 80640BAC  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 80640BB0  7C 7C 1B 78 */	mr r28, r3
/* 80640BB4  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 80640BB8  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 80640BBC  38 7F 00 08 */	addi r3, r31, 8
/* 80640BC0  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 80640BC4  1C 64 03 00 */	mulli r3, r4, 0x300
/* 80640BC8  90 1F 00 00 */	stw r0, 0(r31)
/* 80640BCC  3B C3 02 10 */	addi r30, r3, 0x210
/* 80640BD0  80 7D 00 00 */	lwz r3, 0(r29)
/* 80640BD4  7F DC F2 14 */	add r30, r28, r30
/* 80640BD8  4B DC C7 FD */	bl _Matrix_to_Mtx_new
/* 80640BDC  90 7F 00 04 */	stw r3, 4(r31)
/* 80640BE0  7F A3 EB 78 */	mr r3, r29
/* 80640BE4  7F C5 F3 78 */	mr r5, r30
/* 80640BE8  38 9C 01 34 */	addi r4, r28, 0x134
/* 80640BEC  38 C0 00 00 */	li r6, 0
/* 80640BF0  38 E0 00 00 */	li r7, 0
/* 80640BF4  39 00 00 00 */	li r8, 0
/* 80640BF8  4B D3 0B 41 */	bl cKF_Si3_draw_R_SV
/* 80640BFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80640C00  4B A5 A3 1D */	bl func_8009AF1C
/* 80640C04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80640C08  7C 08 03 A6 */	mtlr r0
/* 80640C0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80640C10  4E 80 00 20 */	blr 
