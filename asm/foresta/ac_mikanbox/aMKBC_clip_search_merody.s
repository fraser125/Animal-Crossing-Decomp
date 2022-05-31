lbl_805B3C10:
/* 805B3C10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B3C14  7C 08 02 A6 */	mflr r0
/* 805B3C18  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B3C1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B3C20  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B3C24  4B FF FF 81 */	bl aMKBC_count_merody
/* 805B3C28  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B3C2C  7C 7E 1B 79 */	or. r30, r3, r3
/* 805B3C30  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805B3C34  3C 84 00 02 */	addis r4, r4, 2
/* 805B3C38  80 64 61 3C */	lwz r3, 0x613c(r4)
/* 805B3C3C  3B E3 10 D4 */	addi r31, r3, 0x10d4
/* 805B3C40  40 82 00 18 */	bne lbl_805B3C58
/* 805B3C44  38 00 00 00 */	li r0, 0
/* 805B3C48  3B C0 00 34 */	li r30, 0x34
/* 805B3C4C  90 1F 00 00 */	stw r0, 0(r31)
/* 805B3C50  80 64 61 3C */	lwz r3, 0x613c(r4)
/* 805B3C54  90 03 10 D8 */	stw r0, 0x10d8(r3)
lbl_805B3C58:
/* 805B3C58  4B AA 90 9D */	bl fqrand
/* 805B3C5C  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 805B3C60  3C 60 43 30 */	lis r3, 0x4330
/* 805B3C64  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B3C68  3C 80 80 65 */	lis r4, lit_517@ha /* 0x8064A8E4@ha */
/* 805B3C6C  C8 44 A8 E4 */	lfd f2, lit_517@l(r4)  /* 0x8064A8E4@l */
/* 805B3C70  38 00 00 02 */	li r0, 2
/* 805B3C74  90 61 00 08 */	stw r3, 8(r1)
/* 805B3C78  38 A0 2A 00 */	li r5, 0x2a00
/* 805B3C7C  38 E0 00 00 */	li r7, 0
/* 805B3C80  38 60 00 00 */	li r3, 0
/* 805B3C84  C8 01 00 08 */	lfd f0, 8(r1)
/* 805B3C88  EC 00 10 28 */	fsubs f0, f0, f2
/* 805B3C8C  EC 00 00 72 */	fmuls f0, f0, f1
/* 805B3C90  FC 00 00 1E */	fctiwz f0, f0
/* 805B3C94  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805B3C98  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805B3C9C  7C 09 03 A6 */	mtctr r0
lbl_805B3CA0:
/* 805B3CA0  39 00 00 01 */	li r8, 1
/* 805B3CA4  38 C0 00 00 */	li r6, 0
/* 805B3CA8  48 00 00 3C */	b lbl_805B3CE4
lbl_805B3CAC:
/* 805B3CAC  7C 1F 18 2E */	lwzx r0, r31, r3
/* 805B3CB0  7D 00 00 39 */	and. r0, r8, r0
/* 805B3CB4  40 82 00 24 */	bne lbl_805B3CD8
/* 805B3CB8  2C 04 00 00 */	cmpwi r4, 0
/* 805B3CBC  40 81 00 0C */	ble lbl_805B3CC8
/* 805B3CC0  38 84 FF FF */	addi r4, r4, -1
/* 805B3CC4  48 00 00 14 */	b lbl_805B3CD8
lbl_805B3CC8:
/* 805B3CC8  54 E0 28 34 */	slwi r0, r7, 5
/* 805B3CCC  7C 06 02 14 */	add r0, r6, r0
/* 805B3CD0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 805B3CD4  48 00 00 30 */	b lbl_805B3D04
lbl_805B3CD8:
/* 805B3CD8  55 08 08 3C */	slwi r8, r8, 1
/* 805B3CDC  38 A5 00 01 */	addi r5, r5, 1
/* 805B3CE0  38 C6 00 01 */	addi r6, r6, 1
lbl_805B3CE4:
/* 805B3CE4  2C 05 2A 34 */	cmpwi r5, 0x2a34
/* 805B3CE8  40 80 00 0C */	bge lbl_805B3CF4
/* 805B3CEC  2C 06 00 20 */	cmpwi r6, 0x20
/* 805B3CF0  41 80 FF BC */	blt lbl_805B3CAC
lbl_805B3CF4:
/* 805B3CF4  38 E7 00 01 */	addi r7, r7, 1
/* 805B3CF8  38 63 00 04 */	addi r3, r3, 4
/* 805B3CFC  42 00 FF A4 */	bdnz lbl_805B3CA0
/* 805B3D00  38 60 00 00 */	li r3, 0
lbl_805B3D04:
/* 805B3D04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B3D08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B3D0C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805B3D10  7C 08 03 A6 */	mtlr r0
/* 805B3D14  38 21 00 20 */	addi r1, r1, 0x20
/* 805B3D18  4E 80 00 20 */	blr 
