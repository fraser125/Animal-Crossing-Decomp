lbl_80492C28:
/* 80492C28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80492C2C  7C 08 02 A6 */	mflr r0
/* 80492C30  90 01 00 34 */	stw r0, 0x34(r1)
/* 80492C34  39 61 00 30 */	addi r11, r1, 0x30
/* 80492C38  4B C0 82 95 */	bl func_8009AECC
/* 80492C3C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80492C40  7C 7E 1B 78 */	mr r30, r3
/* 80492C44  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80492C48  3B E0 FF FF */	li r31, -1
/* 80492C4C  3F 83 00 02 */	addis r28, r3, 2
/* 80492C50  38 80 2D 00 */	li r4, 0x2d00
/* 80492C54  80 7C 61 3C */	lwz r3, 0x613c(r28)
/* 80492C58  38 A0 2D 28 */	li r5, 0x2d28
/* 80492C5C  38 C0 00 00 */	li r6, 0
/* 80492C60  3B 63 00 68 */	addi r27, r3, 0x68
/* 80492C64  4B F4 DF 05 */	bl mPr_GetPossessionItemSumKindWithCond
/* 80492C68  7C 7D 1B 78 */	mr r29, r3
/* 80492C6C  80 7C 61 3C */	lwz r3, 0x613c(r28)
/* 80492C70  38 80 23 00 */	li r4, 0x2300
/* 80492C74  38 A0 23 28 */	li r5, 0x2328
/* 80492C78  38 C0 00 00 */	li r6, 0
/* 80492C7C  4B F4 DE ED */	bl mPr_GetPossessionItemSumKindWithCond
/* 80492C80  7F BD 1A 15 */	add. r29, r29, r3
/* 80492C84  41 82 00 AC */	beq lbl_80492D30
/* 80492C88  28 1D 00 0F */	cmplwi r29, 0xf
/* 80492C8C  41 81 00 A4 */	bgt lbl_80492D30
/* 80492C90  4B BC A0 65 */	bl fqrand
/* 80492C94  3C 60 43 30 */	lis r3, 0x4330
/* 80492C98  3C 80 80 64 */	lis r4, lit_902@ha /* 0x80644C7C@ha */
/* 80492C9C  90 61 00 08 */	stw r3, 8(r1)
/* 80492CA0  38 00 00 0F */	li r0, 0xf
/* 80492CA4  C8 44 4C 7C */	lfd f2, lit_902@l(r4)  /* 0x80644C7C@l */
/* 80492CA8  38 C0 00 00 */	li r6, 0
/* 80492CAC  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80492CB0  38 60 00 00 */	li r3, 0
/* 80492CB4  80 9C 61 3C */	lwz r4, 0x613c(r28)
/* 80492CB8  C8 01 00 08 */	lfd f0, 8(r1)
/* 80492CBC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80492CC0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80492CC4  FC 00 00 1E */	fctiwz f0, f0
/* 80492CC8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80492CCC  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 80492CD0  7C 09 03 A6 */	mtctr r0
lbl_80492CD4:
/* 80492CD4  80 04 00 88 */	lwz r0, 0x88(r4)
/* 80492CD8  7C 00 1C 30 */	srw r0, r0, r3
/* 80492CDC  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80492CE0  40 82 00 40 */	bne lbl_80492D20
/* 80492CE4  A0 1B 00 00 */	lhz r0, 0(r27)
/* 80492CE8  28 00 23 00 */	cmplwi r0, 0x2300
/* 80492CEC  41 80 00 0C */	blt lbl_80492CF8
/* 80492CF0  28 00 23 28 */	cmplwi r0, 0x2328
/* 80492CF4  40 81 00 14 */	ble lbl_80492D08
lbl_80492CF8:
/* 80492CF8  28 00 2D 00 */	cmplwi r0, 0x2d00
/* 80492CFC  41 80 00 24 */	blt lbl_80492D20
/* 80492D00  28 00 2D 28 */	cmplwi r0, 0x2d28
/* 80492D04  40 80 00 1C */	bge lbl_80492D20
lbl_80492D08:
/* 80492D08  2C 05 00 00 */	cmpwi r5, 0
/* 80492D0C  41 81 00 10 */	bgt lbl_80492D1C
/* 80492D10  B0 1E 00 00 */	sth r0, 0(r30)
/* 80492D14  7C DF 33 78 */	mr r31, r6
/* 80492D18  48 00 00 18 */	b lbl_80492D30
lbl_80492D1C:
/* 80492D1C  38 A5 FF FF */	addi r5, r5, -1
lbl_80492D20:
/* 80492D20  3B 7B 00 02 */	addi r27, r27, 2
/* 80492D24  38 C6 00 01 */	addi r6, r6, 1
/* 80492D28  38 63 00 02 */	addi r3, r3, 2
/* 80492D2C  42 00 FF A8 */	bdnz lbl_80492CD4
lbl_80492D30:
/* 80492D30  7F E3 FB 78 */	mr r3, r31
/* 80492D34  39 61 00 30 */	addi r11, r1, 0x30
/* 80492D38  4B C0 81 E1 */	bl func_8009AF18
/* 80492D3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80492D40  7C 08 03 A6 */	mtlr r0
/* 80492D44  38 21 00 30 */	addi r1, r1, 0x30
/* 80492D48  4E 80 00 20 */	blr 
