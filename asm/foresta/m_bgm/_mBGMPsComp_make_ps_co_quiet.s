lbl_8037BBA4:
/* 8037BBA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037BBA8  7C 08 02 A6 */	mflr r0
/* 8037BBAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037BBB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037BBB4  7C 9F 23 78 */	mr r31, r4
/* 8037BBB8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8037BBBC  7C 7E 1B 78 */	mr r30, r3
/* 8037BBC0  38 61 00 08 */	addi r3, r1, 8
/* 8037BBC4  4B FF CD D1 */	bl mBGMElem_default_set
/* 8037BBC8  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037BBCC  B3 C1 00 0E */	sth r30, 0xe(r1)
/* 8037BBD0  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037BBD4  7F E6 FB 78 */	mr r6, r31
/* 8037BBD8  38 63 01 64 */	addi r3, r3, 0x164
/* 8037BBDC  38 81 00 08 */	addi r4, r1, 8
/* 8037BBE0  38 A0 00 02 */	li r5, 2
/* 8037BBE4  38 E0 00 40 */	li r7, 0x40
/* 8037BBE8  39 00 00 FF */	li r8, 0xff
/* 8037BBEC  4B FF FC ED */	bl mBGMPsComp_make_ps
/* 8037BBF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037BBF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037BBF8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8037BBFC  7C 08 03 A6 */	mtlr r0
/* 8037BC00  38 21 00 20 */	addi r1, r1, 0x20
/* 8037BC04  4E 80 00 20 */	blr 
