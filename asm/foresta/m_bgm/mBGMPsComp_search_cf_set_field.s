lbl_8037C654:
/* 8037C654  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037C658  7C 08 02 A6 */	mflr r0
/* 8037C65C  3C A0 81 13 */	lis r5, data_811351C0@ha /* 0x811351C0@ha */
/* 8037C660  38 C0 00 00 */	li r6, 0
/* 8037C664  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037C668  38 A5 51 C0 */	addi r5, r5, data_811351C0@l /* 0x811351C0@l */
/* 8037C66C  38 E0 00 01 */	li r7, 1
/* 8037C670  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037C674  3B E5 01 64 */	addi r31, r5, 0x164
/* 8037C678  7C 65 1B 78 */	mr r5, r3
/* 8037C67C  7F E3 FB 78 */	mr r3, r31
/* 8037C680  4B FF E2 3D */	bl mBGMPsComp_search_pos_kategorie_bgm_num
/* 8037C684  2C 03 00 00 */	cmpwi r3, 0
/* 8037C688  41 80 00 50 */	blt lbl_8037C6D8
/* 8037C68C  38 A3 00 01 */	addi r5, r3, 1
/* 8037C690  1C 65 00 14 */	mulli r3, r5, 0x14
/* 8037C694  48 00 00 38 */	b lbl_8037C6CC
lbl_8037C698:
/* 8037C698  7C 9F 1A 14 */	add r4, r31, r3
/* 8037C69C  80 04 00 08 */	lwz r0, 8(r4)
/* 8037C6A0  2C 00 00 09 */	cmpwi r0, 9
/* 8037C6A4  41 82 00 14 */	beq lbl_8037C6B8
/* 8037C6A8  2C 00 00 0A */	cmpwi r0, 0xa
/* 8037C6AC  41 82 00 0C */	beq lbl_8037C6B8
/* 8037C6B0  2C 00 00 0B */	cmpwi r0, 0xb
/* 8037C6B4  40 82 00 10 */	bne lbl_8037C6C4
lbl_8037C6B8:
/* 8037C6B8  A0 04 00 0E */	lhz r0, 0xe(r4)
/* 8037C6BC  60 00 00 18 */	ori r0, r0, 0x18
/* 8037C6C0  B0 04 00 0E */	sth r0, 0xe(r4)
lbl_8037C6C4:
/* 8037C6C4  38 A5 00 01 */	addi r5, r5, 1
/* 8037C6C8  38 63 00 14 */	addi r3, r3, 0x14
lbl_8037C6CC:
/* 8037C6CC  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 8037C6D0  7C 05 00 00 */	cmpw r5, r0
/* 8037C6D4  41 80 FF C4 */	blt lbl_8037C698
lbl_8037C6D8:
/* 8037C6D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037C6DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037C6E0  7C 08 03 A6 */	mtlr r0
/* 8037C6E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8037C6E8  4E 80 00 20 */	blr 
