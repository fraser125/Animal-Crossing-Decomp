lbl_8055FA30:
/* 8055FA30  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8055FA34  7C 08 02 A6 */	mflr r0
/* 8055FA38  90 01 00 64 */	stw r0, 0x64(r1)
/* 8055FA3C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8055FA40  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8055FA44  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8055FA48  4B E5 FC 61 */	bl func_803BF6A8
/* 8055FA4C  7C 60 1B 78 */	mr r0, r3
/* 8055FA50  38 61 00 08 */	addi r3, r1, 8
/* 8055FA54  7C 1F 03 78 */	mr r31, r0
/* 8055FA58  4B FF FE D5 */	bl aNM2_count_player_num_nextland
/* 8055FA5C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8055FA60  3C 00 43 30 */	lis r0, 0x4330
/* 8055FA64  90 61 00 2C */	stw r3, 0x2c(r1)
/* 8055FA68  3C 80 80 65 */	lis r4, lit_554@ha /* 0x80649754@ha */
/* 8055FA6C  C8 24 97 54 */	lfd f1, lit_554@l(r4)  /* 0x80649754@l */
/* 8055FA70  90 01 00 28 */	stw r0, 0x28(r1)
/* 8055FA74  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8055FA78  EF E0 08 28 */	fsubs f31, f0, f1
/* 8055FA7C  4B AF D2 79 */	bl fqrand
/* 8055FA80  EC 01 07 F2 */	fmuls f0, f1, f31
/* 8055FA84  38 A1 00 08 */	addi r5, r1, 8
/* 8055FA88  7F E3 FB 78 */	mr r3, r31
/* 8055FA8C  38 80 00 00 */	li r4, 0
/* 8055FA90  38 C0 00 08 */	li r6, 8
/* 8055FA94  FC 00 00 1E */	fctiwz f0, f0
/* 8055FA98  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8055FA9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8055FAA0  54 00 18 38 */	slwi r0, r0, 3
/* 8055FAA4  7C A5 02 14 */	add r5, r5, r0
/* 8055FAA8  4B E6 01 AD */	bl mMsg_Set_free_str
/* 8055FAAC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8055FAB0  7F E3 FB 78 */	mr r3, r31
/* 8055FAB4  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8055FAB8  38 C0 00 08 */	li r6, 8
/* 8055FABC  3C A5 00 01 */	addis r5, r5, 1
/* 8055FAC0  38 80 00 01 */	li r4, 1
/* 8055FAC4  38 A5 91 20 */	addi r5, r5, -28384
/* 8055FAC8  4B E6 01 8D */	bl mMsg_Set_free_str
/* 8055FACC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8055FAD0  7F E3 FB 78 */	mr r3, r31
/* 8055FAD4  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8055FAD8  38 C0 00 08 */	li r6, 8
/* 8055FADC  3C A5 00 03 */	addis r5, r5, 3
/* 8055FAE0  38 80 00 02 */	li r4, 2
/* 8055FAE4  38 A5 DB 46 */	addi r5, r5, -9402
/* 8055FAE8  4B E6 01 6D */	bl mMsg_Set_free_str
/* 8055FAEC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8055FAF0  7F E3 FB 78 */	mr r3, r31
/* 8055FAF4  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8055FAF8  38 80 00 03 */	li r4, 3
/* 8055FAFC  3C A5 00 02 */	addis r5, r5, 2
/* 8055FB00  38 C0 00 08 */	li r6, 8
/* 8055FB04  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 8055FB08  38 A5 00 08 */	addi r5, r5, 8
/* 8055FB0C  4B E6 01 49 */	bl mMsg_Set_free_str
/* 8055FB10  38 61 00 08 */	addi r3, r1, 8
/* 8055FB14  4B FF FE 99 */	bl aNM2_count_player_num_beforeland
/* 8055FB18  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8055FB1C  3C 00 43 30 */	lis r0, 0x4330
/* 8055FB20  90 61 00 3C */	stw r3, 0x3c(r1)
/* 8055FB24  3C 80 80 65 */	lis r4, lit_554@ha /* 0x80649754@ha */
/* 8055FB28  C8 24 97 54 */	lfd f1, lit_554@l(r4)  /* 0x80649754@l */
/* 8055FB2C  90 01 00 38 */	stw r0, 0x38(r1)
/* 8055FB30  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8055FB34  EF E0 08 28 */	fsubs f31, f0, f1
/* 8055FB38  4B AF D1 BD */	bl fqrand
/* 8055FB3C  EC 01 07 F2 */	fmuls f0, f1, f31
/* 8055FB40  38 A1 00 08 */	addi r5, r1, 8
/* 8055FB44  7F E3 FB 78 */	mr r3, r31
/* 8055FB48  38 80 00 04 */	li r4, 4
/* 8055FB4C  38 C0 00 08 */	li r6, 8
/* 8055FB50  FC 00 00 1E */	fctiwz f0, f0
/* 8055FB54  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8055FB58  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8055FB5C  54 00 18 38 */	slwi r0, r0, 3
/* 8055FB60  7C A5 02 14 */	add r5, r5, r0
/* 8055FB64  4B E6 00 F1 */	bl mMsg_Set_free_str
/* 8055FB68  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8055FB6C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8055FB70  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8055FB74  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8055FB78  7C 08 03 A6 */	mtlr r0
/* 8055FB7C  38 21 00 60 */	addi r1, r1, 0x60
/* 8055FB80  4E 80 00 20 */	blr 
