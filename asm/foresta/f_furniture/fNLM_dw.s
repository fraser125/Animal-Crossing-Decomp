lbl_80640CDC:
/* 80640CDC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80640CE0  7C 08 02 A6 */	mflr r0
/* 80640CE4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80640CE8  39 61 00 40 */	addi r11, r1, 0x40
/* 80640CEC  4B A5 A1 E1 */	bl func_8009AECC
/* 80640CF0  3C 80 80 65 */	lis r4, lit_1028@ha /* 0x8064D2CC@ha */
/* 80640CF4  7C BC 2B 78 */	mr r28, r5
/* 80640CF8  C0 03 08 34 */	lfs f0, 0x834(r3)
/* 80640CFC  38 00 00 00 */	li r0, 0
/* 80640D00  C0 24 D2 CC */	lfs f1, lit_1028@l(r4)  /* 0x8064D2CC@l */
/* 80640D04  38 80 00 10 */	li r4, 0x10
/* 80640D08  93 81 00 08 */	stw r28, 8(r1)
/* 80640D0C  38 A0 00 00 */	li r5, 0
/* 80640D10  EC 01 00 32 */	fmuls f0, f1, f0
/* 80640D14  38 C0 00 00 */	li r6, 0
/* 80640D18  90 61 00 0C */	stw r3, 0xc(r1)
/* 80640D1C  38 60 00 10 */	li r3, 0x10
/* 80640D20  38 E0 00 10 */	li r7, 0x10
/* 80640D24  39 00 00 10 */	li r8, 0x10
/* 80640D28  FC 00 00 1E */	fctiwz f0, f0
/* 80640D2C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80640D30  39 20 00 00 */	li r9, 0
/* 80640D34  39 40 00 0A */	li r10, 0xa
/* 80640D38  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80640D3C  83 C1 00 1C */	lwz r30, 0x1c(r1)
/* 80640D40  4B FE DD C5 */	bl fFTR_GetTwoTileGfx
/* 80640D44  7C 7F 1B 79 */	or. r31, r3, r3
/* 80640D48  41 82 00 D4 */	beq lbl_80640E1C
/* 80640D4C  83 BC 00 00 */	lwz r29, 0(r28)
/* 80640D50  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80640D54  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80640D58  83 7D 02 D0 */	lwz r27, 0x2d0(r29)
/* 80640D5C  38 7B 00 08 */	addi r3, r27, 8
/* 80640D60  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 80640D64  90 1B 00 00 */	stw r0, 0(r27)
/* 80640D68  80 7C 00 00 */	lwz r3, 0(r28)
/* 80640D6C  4B DC C6 69 */	bl _Matrix_to_Mtx_new
/* 80640D70  90 7B 00 04 */	stw r3, 4(r27)
/* 80640D74  3C 80 80 F5 */	lis r4, int_nog_lawnmower_bodyT_model@ha /* 0x80F54358@ha */
/* 80640D78  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80640D7C  3C A0 DE 00 */	lis r5, 0xde00
/* 80640D80  80 DD 02 D0 */	lwz r6, 0x2d0(r29)
/* 80640D84  38 84 43 58 */	addi r4, r4, int_nog_lawnmower_bodyT_model@l /* 0x80F54358@l */
/* 80640D88  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80640D8C  38 66 00 08 */	addi r3, r6, 8
/* 80640D90  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 80640D94  90 A6 00 00 */	stw r5, 0(r6)
/* 80640D98  90 86 00 04 */	stw r4, 4(r6)
/* 80640D9C  83 7D 02 E0 */	lwz r27, 0x2e0(r29)
/* 80640DA0  38 7B 00 08 */	addi r3, r27, 8
/* 80640DA4  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 80640DA8  90 1B 00 00 */	stw r0, 0(r27)
/* 80640DAC  80 7C 00 00 */	lwz r3, 0(r28)
/* 80640DB0  4B DC C6 25 */	bl _Matrix_to_Mtx_new
/* 80640DB4  90 7B 00 04 */	stw r3, 4(r27)
/* 80640DB8  3C C0 DB 06 */	lis r6, 0xDB06 /* 0xDB060020@ha */
/* 80640DBC  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 80640DC0  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80640DC4  81 1D 02 E0 */	lwz r8, 0x2e0(r29)
/* 80640DC8  64 05 78 FF */	oris r5, r0, 0x78ff
/* 80640DCC  3C 60 80 F5 */	lis r3, int_nog_lawnmower_grass_model@ha /* 0x80F542F0@ha */
/* 80640DD0  38 E6 00 20 */	addi r7, r6, 0x0020 /* 0xDB060020@l */
/* 80640DD4  38 08 00 08 */	addi r0, r8, 8
/* 80640DD8  38 C4 00 FF */	addi r6, r4, 0x00FF /* 0xFA0000FF@l */
/* 80640DDC  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 80640DE0  60 A5 B4 00 */	ori r5, r5, 0xb400
/* 80640DE4  3C 80 DE 00 */	lis r4, 0xde00
/* 80640DE8  38 03 42 F0 */	addi r0, r3, int_nog_lawnmower_grass_model@l /* 0x80F542F0@l */
/* 80640DEC  90 E8 00 00 */	stw r7, 0(r8)
/* 80640DF0  93 E8 00 04 */	stw r31, 4(r8)
/* 80640DF4  80 FD 02 E0 */	lwz r7, 0x2e0(r29)
/* 80640DF8  38 67 00 08 */	addi r3, r7, 8
/* 80640DFC  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 80640E00  90 C7 00 00 */	stw r6, 0(r7)
/* 80640E04  90 A7 00 04 */	stw r5, 4(r7)
/* 80640E08  80 BD 02 E0 */	lwz r5, 0x2e0(r29)
/* 80640E0C  38 65 00 08 */	addi r3, r5, 8
/* 80640E10  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 80640E14  90 85 00 00 */	stw r4, 0(r5)
/* 80640E18  90 05 00 04 */	stw r0, 4(r5)
lbl_80640E1C:
/* 80640E1C  39 61 00 40 */	addi r11, r1, 0x40
/* 80640E20  4B A5 A0 F9 */	bl func_8009AF18
/* 80640E24  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80640E28  7C 08 03 A6 */	mtlr r0
/* 80640E2C  38 21 00 40 */	addi r1, r1, 0x40
/* 80640E30  4E 80 00 20 */	blr 
