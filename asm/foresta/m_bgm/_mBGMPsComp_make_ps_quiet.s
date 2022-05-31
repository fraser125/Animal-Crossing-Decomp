lbl_8037BB2C:
/* 8037BB2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037BB30  7C 08 02 A6 */	mflr r0
/* 8037BB34  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037BB38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037BB3C  7C 7F 1B 78 */	mr r31, r3
/* 8037BB40  38 61 00 08 */	addi r3, r1, 8
/* 8037BB44  4B FF CE 51 */	bl mBGMElem_default_set
/* 8037BB48  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037BB4C  B3 E1 00 0E */	sth r31, 0xe(r1)
/* 8037BB50  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037BB54  38 81 00 08 */	addi r4, r1, 8
/* 8037BB58  38 63 01 64 */	addi r3, r3, 0x164
/* 8037BB5C  38 A0 00 02 */	li r5, 2
/* 8037BB60  38 C0 FF FF */	li r6, -1
/* 8037BB64  38 E0 00 40 */	li r7, 0x40
/* 8037BB68  39 00 00 FF */	li r8, 0xff
/* 8037BB6C  4B FF FD 6D */	bl mBGMPsComp_make_ps
/* 8037BB70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037BB74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037BB78  7C 08 03 A6 */	mtlr r0
/* 8037BB7C  38 21 00 20 */	addi r1, r1, 0x20
/* 8037BB80  4E 80 00 20 */	blr 
