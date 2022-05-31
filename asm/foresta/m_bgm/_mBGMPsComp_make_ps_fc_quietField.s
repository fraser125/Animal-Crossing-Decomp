lbl_8037BF58:
/* 8037BF58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037BF5C  7C 08 02 A6 */	mflr r0
/* 8037BF60  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037BF64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037BF68  7C 7F 1B 78 */	mr r31, r3
/* 8037BF6C  38 61 00 08 */	addi r3, r1, 8
/* 8037BF70  4B FF CA 25 */	bl mBGMElem_default_set
/* 8037BF74  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037BF78  B3 E1 00 0E */	sth r31, 0xe(r1)
/* 8037BF7C  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037BF80  38 81 00 08 */	addi r4, r1, 8
/* 8037BF84  38 63 01 64 */	addi r3, r3, 0x164
/* 8037BF88  38 A0 00 08 */	li r5, 8
/* 8037BF8C  38 C0 FF FF */	li r6, -1
/* 8037BF90  38 E0 00 C0 */	li r7, 0xc0
/* 8037BF94  39 00 00 FF */	li r8, 0xff
/* 8037BF98  4B FF F9 41 */	bl mBGMPsComp_make_ps
/* 8037BF9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037BFA0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037BFA4  7C 08 03 A6 */	mtlr r0
/* 8037BFA8  38 21 00 20 */	addi r1, r1, 0x20
/* 8037BFAC  4E 80 00 20 */	blr 
