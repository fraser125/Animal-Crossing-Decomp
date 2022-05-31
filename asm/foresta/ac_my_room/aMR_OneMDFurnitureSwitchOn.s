lbl_80472C9C:
/* 80472C9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80472CA0  7C 08 02 A6 */	mflr r0
/* 80472CA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80472CA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80472CAC  4B C2 82 25 */	bl func_8009AED0
/* 80472CB0  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80472CB4  3B 80 00 00 */	li r28, 0
/* 80472CB8  3B E3 DF E8 */	addi r31, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80472CBC  83 DF 00 00 */	lwz r30, 0(r31)
/* 80472CC0  83 BF 00 04 */	lwz r29, 4(r31)
/* 80472CC4  48 00 00 5C */	b lbl_80472D20
lbl_80472CC8:
/* 80472CC8  88 1D 00 00 */	lbz r0, 0(r29)
/* 80472CCC  28 00 00 00 */	cmplwi r0, 0
/* 80472CD0  41 82 00 44 */	beq lbl_80472D14
/* 80472CD4  A0 7E 00 00 */	lhz r3, 0(r30)
/* 80472CD8  4B FF D4 C9 */	bl func_804701A0
/* 80472CDC  28 03 00 00 */	cmplwi r3, 0
/* 80472CE0  41 82 00 34 */	beq lbl_80472D14
/* 80472CE4  A0 03 00 2E */	lhz r0, 0x2e(r3)
/* 80472CE8  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 80472CEC  41 82 00 28 */	beq lbl_80472D14
/* 80472CF0  A0 1E 08 44 */	lhz r0, 0x844(r30)
/* 80472CF4  28 00 2A 00 */	cmplwi r0, 0x2a00
/* 80472CF8  41 80 00 0C */	blt lbl_80472D04
/* 80472CFC  28 00 2A 37 */	cmplwi r0, 0x2a37
/* 80472D00  41 80 00 14 */	blt lbl_80472D14
lbl_80472D04:
/* 80472D04  38 00 00 00 */	li r0, 0
/* 80472D08  98 1E 01 2C */	stb r0, 0x12c(r30)
/* 80472D0C  98 1E 01 2D */	stb r0, 0x12d(r30)
/* 80472D10  B0 1E 01 30 */	sth r0, 0x130(r30)
lbl_80472D14:
/* 80472D14  3B DE 08 58 */	addi r30, r30, 0x858
/* 80472D18  3B BD 00 01 */	addi r29, r29, 1
/* 80472D1C  3B 9C 00 01 */	addi r28, r28, 1
lbl_80472D20:
/* 80472D20  80 1F 00 08 */	lwz r0, 8(r31)
/* 80472D24  7C 1C 00 00 */	cmpw r28, r0
/* 80472D28  41 80 FF A0 */	blt lbl_80472CC8
/* 80472D2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80472D30  4B C2 81 ED */	bl func_8009AF1C
/* 80472D34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80472D38  7C 08 03 A6 */	mtlr r0
/* 80472D3C  38 21 00 20 */	addi r1, r1, 0x20
/* 80472D40  4E 80 00 20 */	blr 
