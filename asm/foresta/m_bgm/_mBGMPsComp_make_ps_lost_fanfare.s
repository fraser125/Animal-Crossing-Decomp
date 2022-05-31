lbl_8037B9F0:
/* 8037B9F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037B9F4  7C 08 02 A6 */	mflr r0
/* 8037B9F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037B9FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037BA00  7C 9F 23 78 */	mr r31, r4
/* 8037BA04  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8037BA08  7C 7E 1B 78 */	mr r30, r3
/* 8037BA0C  38 61 00 08 */	addi r3, r1, 8
/* 8037BA10  4B FF CF 85 */	bl mBGMElem_default_set
/* 8037BA14  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037BA18  9B C1 00 08 */	stb r30, 8(r1)
/* 8037BA1C  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037BA20  38 81 00 08 */	addi r4, r1, 8
/* 8037BA24  B3 E1 00 0E */	sth r31, 0xe(r1)
/* 8037BA28  38 63 01 64 */	addi r3, r3, 0x164
/* 8037BA2C  38 A0 00 00 */	li r5, 0
/* 8037BA30  38 C0 FF FF */	li r6, -1
/* 8037BA34  38 E0 01 00 */	li r7, 0x100
/* 8037BA38  39 00 00 FF */	li r8, 0xff
/* 8037BA3C  4B FF FE 9D */	bl mBGMPsComp_make_ps
/* 8037BA40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037BA44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037BA48  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8037BA4C  7C 08 03 A6 */	mtlr r0
/* 8037BA50  38 21 00 20 */	addi r1, r1, 0x20
/* 8037BA54  4E 80 00 20 */	blr 
