lbl_803E4E10:
/* 803E4E10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E4E14  7C 08 02 A6 */	mflr r0
/* 803E4E18  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E4E1C  4B FF FC 3D */	bl mRF_Type2BlockInfo
/* 803E4E20  3C 80 80 64 */	lis r4, lit_519@ha /* 0x80643138@ha */
/* 803E4E24  38 00 00 03 */	li r0, 3
/* 803E4E28  38 84 31 38 */	addi r4, r4, lit_519@l /* 0x80643138@l */
/* 803E4E2C  38 C1 00 04 */	addi r6, r1, 4
/* 803E4E30  38 A4 FF FC */	addi r5, r4, -4
/* 803E4E34  7C 09 03 A6 */	mtctr r0
lbl_803E4E38:
/* 803E4E38  80 85 00 04 */	lwz r4, 4(r5)
/* 803E4E3C  84 05 00 08 */	lwzu r0, 8(r5)
/* 803E4E40  90 86 00 04 */	stw r4, 4(r6)
/* 803E4E44  94 06 00 08 */	stwu r0, 8(r6)
/* 803E4E48  42 00 FF F0 */	bdnz lbl_803E4E38
/* 803E4E4C  80 85 00 04 */	lwz r4, 4(r5)
/* 803E4E50  38 00 00 07 */	li r0, 7
/* 803E4E54  38 A1 00 08 */	addi r5, r1, 8
/* 803E4E58  38 E0 00 00 */	li r7, 0
/* 803E4E5C  90 86 00 04 */	stw r4, 4(r6)
/* 803E4E60  38 80 00 00 */	li r4, 0
/* 803E4E64  7C 09 03 A6 */	mtctr r0
lbl_803E4E68:
/* 803E4E68  7C 05 20 2E */	lwzx r0, r5, r4
/* 803E4E6C  7C 60 00 39 */	and. r0, r3, r0
/* 803E4E70  41 82 00 10 */	beq lbl_803E4E80
/* 803E4E74  7C E3 3B 78 */	mr r3, r7
/* 803E4E78  4B FF FF 71 */	bl mRF_RiverIdx2NextDirect
/* 803E4E7C  48 00 00 14 */	b lbl_803E4E90
lbl_803E4E80:
/* 803E4E80  38 E7 00 01 */	addi r7, r7, 1
/* 803E4E84  38 84 00 04 */	addi r4, r4, 4
/* 803E4E88  42 00 FF E0 */	bdnz lbl_803E4E68
/* 803E4E8C  38 60 00 64 */	li r3, 0x64
lbl_803E4E90:
/* 803E4E90  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E4E94  7C 08 03 A6 */	mtlr r0
/* 803E4E98  38 21 00 30 */	addi r1, r1, 0x30
/* 803E4E9C  4E 80 00 20 */	blr 
