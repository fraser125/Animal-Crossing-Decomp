lbl_8037B968:
/* 8037B968  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037B96C  7C 08 02 A6 */	mflr r0
/* 8037B970  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037B974  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037B978  7C 9F 23 78 */	mr r31, r4
/* 8037B97C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8037B980  7C 7E 1B 78 */	mr r30, r3
/* 8037B984  38 61 00 08 */	addi r3, r1, 8
/* 8037B988  4B FF D0 0D */	bl mBGMElem_default_set
/* 8037B98C  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037B990  9B C1 00 08 */	stb r30, 8(r1)
/* 8037B994  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037B998  38 81 00 08 */	addi r4, r1, 8
/* 8037B99C  B3 E1 00 0E */	sth r31, 0xe(r1)
/* 8037B9A0  38 63 01 64 */	addi r3, r3, 0x164
/* 8037B9A4  38 A0 00 00 */	li r5, 0
/* 8037B9A8  38 C0 FF FF */	li r6, -1
/* 8037B9AC  38 E0 00 00 */	li r7, 0
/* 8037B9B0  39 00 00 FF */	li r8, 0xff
/* 8037B9B4  4B FF FF 25 */	bl mBGMPsComp_make_ps
/* 8037B9B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037B9BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037B9C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8037B9C4  7C 08 03 A6 */	mtlr r0
/* 8037B9C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8037B9CC  4E 80 00 20 */	blr 
