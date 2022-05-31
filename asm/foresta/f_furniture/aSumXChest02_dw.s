lbl_8063BDBC:
/* 8063BDBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063BDC0  7C 08 02 A6 */	mflr r0
/* 8063BDC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063BDC8  39 61 00 20 */	addi r11, r1, 0x20
/* 8063BDCC  4B A5 F1 05 */	bl func_8009AED0
/* 8063BDD0  7C BD 2B 78 */	mr r29, r5
/* 8063BDD4  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 8063BDD8  80 A5 00 00 */	lwz r5, 0(r5)
/* 8063BDDC  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 8063BDE0  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 8063BDE4  7C 7C 1B 78 */	mr r28, r3
/* 8063BDE8  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 8063BDEC  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 8063BDF0  38 7F 00 08 */	addi r3, r31, 8
/* 8063BDF4  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 8063BDF8  1C 64 03 00 */	mulli r3, r4, 0x300
/* 8063BDFC  90 1F 00 00 */	stw r0, 0(r31)
/* 8063BE00  3B C3 02 10 */	addi r30, r3, 0x210
/* 8063BE04  80 7D 00 00 */	lwz r3, 0(r29)
/* 8063BE08  7F DC F2 14 */	add r30, r28, r30
/* 8063BE0C  4B DD 15 C9 */	bl _Matrix_to_Mtx_new
/* 8063BE10  90 7F 00 04 */	stw r3, 4(r31)
/* 8063BE14  7F A3 EB 78 */	mr r3, r29
/* 8063BE18  7F C5 F3 78 */	mr r5, r30
/* 8063BE1C  38 9C 01 34 */	addi r4, r28, 0x134
/* 8063BE20  38 C0 00 00 */	li r6, 0
/* 8063BE24  38 E0 00 00 */	li r7, 0
/* 8063BE28  39 00 00 00 */	li r8, 0
/* 8063BE2C  4B D3 59 0D */	bl cKF_Si3_draw_R_SV
/* 8063BE30  39 61 00 20 */	addi r11, r1, 0x20
/* 8063BE34  4B A5 F0 E9 */	bl func_8009AF1C
/* 8063BE38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063BE3C  7C 08 03 A6 */	mtlr r0
/* 8063BE40  38 21 00 20 */	addi r1, r1, 0x20
/* 8063BE44  4E 80 00 20 */	blr 
