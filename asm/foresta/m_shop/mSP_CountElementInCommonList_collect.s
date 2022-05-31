lbl_803E7E78:
/* 803E7E78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E7E7C  7C 08 02 A6 */	mflr r0
/* 803E7E80  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E7E84  39 61 00 30 */	addi r11, r1, 0x30
/* 803E7E88  4B CB 30 49 */	bl func_8009AED0
/* 803E7E8C  2C 05 00 00 */	cmpwi r5, 0
/* 803E7E90  7C 7D 1B 78 */	mr r29, r3
/* 803E7E94  7C 9F 23 78 */	mr r31, r4
/* 803E7E98  3B C0 00 00 */	li r30, 0
/* 803E7E9C  40 82 00 4C */	bne lbl_803E7EE8
/* 803E7EA0  4B FF FF B5 */	bl mSP_CountElementInCommonList
/* 803E7EA4  7C 7D 1B 78 */	mr r29, r3
/* 803E7EA8  4B C7 4E 4D */	bl fqrand
/* 803E7EAC  6F A3 80 00 */	xoris r3, r29, 0x8000
/* 803E7EB0  3C 00 43 30 */	lis r0, 0x4330
/* 803E7EB4  90 61 00 0C */	stw r3, 0xc(r1)
/* 803E7EB8  3C 80 80 64 */	lis r4, lit_562@ha /* 0x8064318C@ha */
/* 803E7EBC  C8 44 31 8C */	lfd f2, lit_562@l(r4)  /* 0x8064318C@l */
/* 803E7EC0  7F A3 EB 78 */	mr r3, r29
/* 803E7EC4  90 01 00 08 */	stw r0, 8(r1)
/* 803E7EC8  C8 01 00 08 */	lfd f0, 8(r1)
/* 803E7ECC  EC 00 10 28 */	fsubs f0, f0, f2
/* 803E7ED0  EC 00 00 72 */	fmuls f0, f0, f1
/* 803E7ED4  FC 00 00 1E */	fctiwz f0, f0
/* 803E7ED8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803E7EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E7EE0  90 1F 00 00 */	stw r0, 0(r31)
/* 803E7EE4  48 00 00 BC */	b lbl_803E7FA0
lbl_803E7EE8:
/* 803E7EE8  7F BC EB 78 */	mr r28, r29
/* 803E7EEC  48 00 00 18 */	b lbl_803E7F04
lbl_803E7EF0:
/* 803E7EF0  4B FF FD F5 */	bl mSP_CollectCheck
/* 803E7EF4  2C 03 00 00 */	cmpwi r3, 0
/* 803E7EF8  40 82 00 08 */	bne lbl_803E7F00
/* 803E7EFC  3B DE 00 01 */	addi r30, r30, 1
lbl_803E7F00:
/* 803E7F00  3B 9C 00 02 */	addi r28, r28, 2
lbl_803E7F04:
/* 803E7F04  A0 7C 00 00 */	lhz r3, 0(r28)
/* 803E7F08  28 03 00 00 */	cmplwi r3, 0
/* 803E7F0C  40 82 FF E4 */	bne lbl_803E7EF0
/* 803E7F10  2C 1E 00 00 */	cmpwi r30, 0
/* 803E7F14  40 82 00 14 */	bne lbl_803E7F28
/* 803E7F18  38 00 00 00 */	li r0, 0
/* 803E7F1C  38 60 00 00 */	li r3, 0
/* 803E7F20  90 1F 00 00 */	stw r0, 0(r31)
/* 803E7F24  48 00 00 7C */	b lbl_803E7FA0
lbl_803E7F28:
/* 803E7F28  4B C7 4D CD */	bl fqrand
/* 803E7F2C  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 803E7F30  3C 60 43 30 */	lis r3, 0x4330
/* 803E7F34  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E7F38  3C 80 80 64 */	lis r4, lit_562@ha /* 0x8064318C@ha */
/* 803E7F3C  38 00 00 00 */	li r0, 0
/* 803E7F40  C8 44 31 8C */	lfd f2, lit_562@l(r4)  /* 0x8064318C@l */
/* 803E7F44  90 61 00 10 */	stw r3, 0x10(r1)
/* 803E7F48  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803E7F4C  90 1F 00 00 */	stw r0, 0(r31)
/* 803E7F50  EC 00 10 28 */	fsubs f0, f0, f2
/* 803E7F54  EC 00 00 72 */	fmuls f0, f0, f1
/* 803E7F58  FC 00 00 1E */	fctiwz f0, f0
/* 803E7F5C  D8 01 00 08 */	stfd f0, 8(r1)
/* 803E7F60  83 81 00 0C */	lwz r28, 0xc(r1)
/* 803E7F64  48 00 00 24 */	b lbl_803E7F88
lbl_803E7F68:
/* 803E7F68  4B FF FD 7D */	bl mSP_CollectCheck
/* 803E7F6C  2C 03 00 00 */	cmpwi r3, 0
/* 803E7F70  40 82 00 08 */	bne lbl_803E7F78
/* 803E7F74  3B 9C FF FF */	addi r28, r28, -1
lbl_803E7F78:
/* 803E7F78  80 7F 00 00 */	lwz r3, 0(r31)
/* 803E7F7C  3B BD 00 02 */	addi r29, r29, 2
/* 803E7F80  38 03 00 01 */	addi r0, r3, 1
/* 803E7F84  90 1F 00 00 */	stw r0, 0(r31)
lbl_803E7F88:
/* 803E7F88  A0 7D 00 00 */	lhz r3, 0(r29)
/* 803E7F8C  28 03 00 00 */	cmplwi r3, 0
/* 803E7F90  41 82 00 0C */	beq lbl_803E7F9C
/* 803E7F94  2C 1C 00 00 */	cmpwi r28, 0
/* 803E7F98  41 81 FF D0 */	bgt lbl_803E7F68
lbl_803E7F9C:
/* 803E7F9C  7F C3 F3 78 */	mr r3, r30
lbl_803E7FA0:
/* 803E7FA0  39 61 00 30 */	addi r11, r1, 0x30
/* 803E7FA4  4B CB 2F 79 */	bl func_8009AF1C
/* 803E7FA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E7FAC  7C 08 03 A6 */	mtlr r0
/* 803E7FB0  38 21 00 30 */	addi r1, r1, 0x30
/* 803E7FB4  4E 80 00 20 */	blr 
