lbl_80405884:
/* 80405884  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80405888  7C 08 02 A6 */	mflr r0
/* 8040588C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80405890  39 61 00 20 */	addi r11, r1, 0x20
/* 80405894  4B C9 56 41 */	bl func_8009AED4
/* 80405898  7C 7E 1B 78 */	mr r30, r3
/* 8040589C  3C 60 81 21 */	lis r3, sys_dynamic@ha /* 0x81213530@ha */
/* 804058A0  81 1E 01 CC */	lwz r8, 0x1cc(r30)
/* 804058A4  3C 00 DE 01 */	lis r0, 0xde01
/* 804058A8  3C E0 E7 00 */	lis r7, 0xe700
/* 804058AC  38 C0 00 00 */	li r6, 0
/* 804058B0  38 88 00 08 */	addi r4, r8, 8
/* 804058B4  3C A0 E9 00 */	lis r5, 0xe900
/* 804058B8  90 9E 01 CC */	stw r4, 0x1cc(r30)
/* 804058BC  3C 80 DF 00 */	lis r4, 0xdf00
/* 804058C0  3B A3 35 30 */	addi r29, r3, sys_dynamic@l /* 0x81213530@l */
/* 804058C4  3B E0 00 00 */	li r31, 0
/* 804058C8  90 08 00 00 */	stw r0, 0(r8)
/* 804058CC  80 7E 03 60 */	lwz r3, 0x360(r30)
/* 804058D0  90 68 00 04 */	stw r3, 4(r8)
/* 804058D4  81 1E 03 20 */	lwz r8, 0x320(r30)
/* 804058D8  38 68 00 08 */	addi r3, r8, 8
/* 804058DC  90 7E 03 20 */	stw r3, 0x320(r30)
/* 804058E0  90 08 00 00 */	stw r0, 0(r8)
/* 804058E4  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 804058E8  90 68 00 04 */	stw r3, 4(r8)
/* 804058EC  81 1E 03 00 */	lwz r8, 0x300(r30)
/* 804058F0  38 68 00 08 */	addi r3, r8, 8
/* 804058F4  90 7E 03 00 */	stw r3, 0x300(r30)
/* 804058F8  90 08 00 00 */	stw r0, 0(r8)
/* 804058FC  80 7E 03 64 */	lwz r3, 0x364(r30)
/* 80405900  90 68 00 04 */	stw r3, 4(r8)
/* 80405904  81 1E 03 30 */	lwz r8, 0x330(r30)
/* 80405908  38 68 00 08 */	addi r3, r8, 8
/* 8040590C  90 7E 03 30 */	stw r3, 0x330(r30)
/* 80405910  90 08 00 00 */	stw r0, 0(r8)
/* 80405914  80 7E 00 00 */	lwz r3, 0(r30)
/* 80405918  90 68 00 04 */	stw r3, 4(r8)
/* 8040591C  81 1E 02 D0 */	lwz r8, 0x2d0(r30)
/* 80405920  38 68 00 08 */	addi r3, r8, 8
/* 80405924  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80405928  90 08 00 00 */	stw r0, 0(r8)
/* 8040592C  80 7E 00 04 */	lwz r3, 4(r30)
/* 80405930  90 68 00 04 */	stw r3, 4(r8)
/* 80405934  81 1E 02 E0 */	lwz r8, 0x2e0(r30)
/* 80405938  38 68 00 08 */	addi r3, r8, 8
/* 8040593C  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 80405940  90 08 00 00 */	stw r0, 0(r8)
/* 80405944  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80405948  90 68 00 04 */	stw r3, 4(r8)
/* 8040594C  81 1E 03 10 */	lwz r8, 0x310(r30)
/* 80405950  38 68 00 08 */	addi r3, r8, 8
/* 80405954  90 7E 03 10 */	stw r3, 0x310(r30)
/* 80405958  90 08 00 00 */	stw r0, 0(r8)
/* 8040595C  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80405960  90 68 00 04 */	stw r3, 4(r8)
/* 80405964  81 1E 02 F0 */	lwz r8, 0x2f0(r30)
/* 80405968  38 68 00 08 */	addi r3, r8, 8
/* 8040596C  90 7E 02 F0 */	stw r3, 0x2f0(r30)
/* 80405970  90 08 00 00 */	stw r0, 0(r8)
/* 80405974  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 80405978  90 08 00 04 */	stw r0, 4(r8)
/* 8040597C  80 7E 02 C0 */	lwz r3, 0x2c0(r30)
/* 80405980  38 03 00 08 */	addi r0, r3, 8
/* 80405984  90 1E 02 C0 */	stw r0, 0x2c0(r30)
/* 80405988  90 E3 00 00 */	stw r7, 0(r3)
/* 8040598C  90 C3 00 04 */	stw r6, 4(r3)
/* 80405990  80 7E 02 C0 */	lwz r3, 0x2c0(r30)
/* 80405994  38 03 00 08 */	addi r0, r3, 8
/* 80405998  90 1E 02 C0 */	stw r0, 0x2c0(r30)
/* 8040599C  90 A3 00 00 */	stw r5, 0(r3)
/* 804059A0  90 C3 00 04 */	stw r6, 4(r3)
/* 804059A4  80 7E 02 C0 */	lwz r3, 0x2c0(r30)
/* 804059A8  38 03 00 08 */	addi r0, r3, 8
/* 804059AC  90 1E 02 C0 */	stw r0, 0x2c0(r30)
/* 804059B0  90 83 00 00 */	stw r4, 0(r3)
/* 804059B4  90 C3 00 04 */	stw r6, 4(r3)
/* 804059B8  A0 1D 00 00 */	lhz r0, 0(r29)
/* 804059BC  28 00 12 34 */	cmplwi r0, 0x1234
/* 804059C0  41 82 00 14 */	beq lbl_804059D4
/* 804059C4  3C 60 80 66 */	lis r3, lit_465@ha /* 0x8065EBA8@ha */
/* 804059C8  38 80 01 A1 */	li r4, 0x1a1
/* 804059CC  38 63 EB A8 */	addi r3, r3, lit_465@l /* 0x8065EBA8@l */
/* 804059D0  4B C5 55 05 */	bl func_8005AED4
lbl_804059D4:
/* 804059D4  3C 7D 00 02 */	addis r3, r29, 2
/* 804059D8  A0 03 04 08 */	lhz r0, 0x408(r3)
/* 804059DC  28 00 56 78 */	cmplwi r0, 0x5678
/* 804059E0  41 82 00 18 */	beq lbl_804059F8
/* 804059E4  3C 60 80 66 */	lis r3, lit_465@ha /* 0x8065EBA8@ha */
/* 804059E8  3B E0 00 01 */	li r31, 1
/* 804059EC  38 63 EB A8 */	addi r3, r3, lit_465@l /* 0x8065EBA8@l */
/* 804059F0  38 80 01 A9 */	li r4, 0x1a9
/* 804059F4  4B C5 54 E1 */	bl func_8005AED4
lbl_804059F8:
/* 804059F8  38 7E 02 C8 */	addi r3, r30, 0x2c8
/* 804059FC  4B FF F0 1D */	bl THA_GA_isCrash
/* 80405A00  2C 03 00 00 */	cmpwi r3, 0
/* 80405A04  41 82 00 08 */	beq lbl_80405A0C
/* 80405A08  3B E0 00 01 */	li r31, 1
lbl_80405A0C:
/* 80405A0C  38 7E 02 D8 */	addi r3, r30, 0x2d8
/* 80405A10  4B FF F0 09 */	bl THA_GA_isCrash
/* 80405A14  2C 03 00 00 */	cmpwi r3, 0
/* 80405A18  41 82 00 08 */	beq lbl_80405A20
/* 80405A1C  3B E0 00 01 */	li r31, 1
lbl_80405A20:
/* 80405A20  38 7E 02 B8 */	addi r3, r30, 0x2b8
/* 80405A24  4B FF EF F5 */	bl THA_GA_isCrash
/* 80405A28  2C 03 00 00 */	cmpwi r3, 0
/* 80405A2C  41 82 00 08 */	beq lbl_80405A34
/* 80405A30  3B E0 00 01 */	li r31, 1
lbl_80405A34:
/* 80405A34  38 7E 02 E8 */	addi r3, r30, 0x2e8
/* 80405A38  4B FF EF E1 */	bl THA_GA_isCrash
/* 80405A3C  2C 03 00 00 */	cmpwi r3, 0
/* 80405A40  41 82 00 08 */	beq lbl_80405A48
/* 80405A44  3B E0 00 01 */	li r31, 1
lbl_80405A48:
/* 80405A48  38 7E 02 F8 */	addi r3, r30, 0x2f8
/* 80405A4C  4B FF EF CD */	bl THA_GA_isCrash
/* 80405A50  2C 03 00 00 */	cmpwi r3, 0
/* 80405A54  41 82 00 08 */	beq lbl_80405A5C
/* 80405A58  3B E0 00 01 */	li r31, 1
lbl_80405A5C:
/* 80405A5C  38 7E 03 08 */	addi r3, r30, 0x308
/* 80405A60  4B FF EF B9 */	bl THA_GA_isCrash
/* 80405A64  2C 03 00 00 */	cmpwi r3, 0
/* 80405A68  41 82 00 08 */	beq lbl_80405A70
/* 80405A6C  3B E0 00 01 */	li r31, 1
lbl_80405A70:
/* 80405A70  38 7E 03 18 */	addi r3, r30, 0x318
/* 80405A74  4B FF EF A5 */	bl THA_GA_isCrash
/* 80405A78  2C 03 00 00 */	cmpwi r3, 0
/* 80405A7C  41 82 00 08 */	beq lbl_80405A84
/* 80405A80  3B E0 00 01 */	li r31, 1
lbl_80405A84:
/* 80405A84  38 7E 03 28 */	addi r3, r30, 0x328
/* 80405A88  4B FF EF 91 */	bl THA_GA_isCrash
/* 80405A8C  2C 03 00 00 */	cmpwi r3, 0
/* 80405A90  41 82 00 08 */	beq lbl_80405A98
/* 80405A94  3B E0 00 01 */	li r31, 1
lbl_80405A98:
/* 80405A98  7F E3 FB 78 */	mr r3, r31
/* 80405A9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80405AA0  4B C9 54 81 */	bl func_8009AF20
/* 80405AA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80405AA8  7C 08 03 A6 */	mtlr r0
/* 80405AAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80405AB0  4E 80 00 20 */	blr 
