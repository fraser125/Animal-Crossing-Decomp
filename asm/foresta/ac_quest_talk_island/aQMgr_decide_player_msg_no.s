lbl_80490990:
/* 80490990  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80490994  7C 08 02 A6 */	mflr r0
/* 80490998  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049099C  39 61 00 30 */	addi r11, r1, 0x30
/* 804909A0  4B C0 A5 2D */	bl func_8009AECC
/* 804909A4  7C 9B 23 78 */	mr r27, r4
/* 804909A8  3B C0 FF FF */	li r30, -1
/* 804909AC  4B BC C3 49 */	bl fqrand
/* 804909B0  3C 60 80 64 */	lis r3, lit_1217@ha /* 0x80644C48@ha */
/* 804909B4  3B 80 00 00 */	li r28, 0
/* 804909B8  C0 03 4C 48 */	lfs f0, lit_1217@l(r3)  /* 0x80644C48@l */
/* 804909BC  3B E0 00 01 */	li r31, 1
/* 804909C0  EC 00 00 72 */	fmuls f0, f0, f1
/* 804909C4  FC 00 00 1E */	fctiwz f0, f0
/* 804909C8  D8 01 00 08 */	stfd f0, 8(r1)
/* 804909CC  83 A1 00 0C */	lwz r29, 0xc(r1)
lbl_804909D0:
/* 804909D0  7F E3 E8 30 */	slw r3, r31, r29
/* 804909D4  4B F2 36 DD */	bl mISL_CheckNowPlayerAction
/* 804909D8  2C 03 00 01 */	cmpwi r3, 1
/* 804909DC  40 82 00 1C */	bne lbl_804909F8
/* 804909E0  3C 60 80 69 */	lis r3, msg_table_1437@ha /* 0x8068B3A8@ha */
/* 804909E4  57 60 10 3A */	slwi r0, r27, 2
/* 804909E8  38 63 B3 A8 */	addi r3, r3, msg_table_1437@l /* 0x8068B3A8@l */
/* 804909EC  7C 03 00 2E */	lwzx r0, r3, r0
/* 804909F0  7F DD 02 14 */	add r30, r29, r0
/* 804909F4  48 00 00 20 */	b lbl_80490A14
lbl_804909F8:
/* 804909F8  3B BD 00 01 */	addi r29, r29, 1
/* 804909FC  2C 1D 00 20 */	cmpwi r29, 0x20
/* 80490A00  41 80 00 08 */	blt lbl_80490A08
/* 80490A04  3B A0 00 00 */	li r29, 0
lbl_80490A08:
/* 80490A08  3B 9C 00 01 */	addi r28, r28, 1
/* 80490A0C  2C 1C 00 03 */	cmpwi r28, 3
/* 80490A10  41 80 FF C0 */	blt lbl_804909D0
lbl_80490A14:
/* 80490A14  7F C3 F3 78 */	mr r3, r30
/* 80490A18  39 61 00 30 */	addi r11, r1, 0x30
/* 80490A1C  4B C0 A4 FD */	bl func_8009AF18
/* 80490A20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80490A24  7C 08 03 A6 */	mtlr r0
/* 80490A28  38 21 00 30 */	addi r1, r1, 0x30
/* 80490A2C  4E 80 00 20 */	blr 
