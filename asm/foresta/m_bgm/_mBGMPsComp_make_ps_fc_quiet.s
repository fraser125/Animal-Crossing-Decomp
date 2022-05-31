lbl_8037BC28:
/* 8037BC28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037BC2C  7C 08 02 A6 */	mflr r0
/* 8037BC30  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037BC34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037BC38  7C 7F 1B 78 */	mr r31, r3
/* 8037BC3C  38 61 00 08 */	addi r3, r1, 8
/* 8037BC40  4B FF CD 55 */	bl mBGMElem_default_set
/* 8037BC44  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037BC48  B3 E1 00 0E */	sth r31, 0xe(r1)
/* 8037BC4C  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037BC50  38 81 00 08 */	addi r4, r1, 8
/* 8037BC54  38 63 01 64 */	addi r3, r3, 0x164
/* 8037BC58  38 A0 00 02 */	li r5, 2
/* 8037BC5C  38 C0 FF FF */	li r6, -1
/* 8037BC60  38 E0 00 C0 */	li r7, 0xc0
/* 8037BC64  39 00 00 FF */	li r8, 0xff
/* 8037BC68  4B FF FC 71 */	bl mBGMPsComp_make_ps
/* 8037BC6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037BC70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037BC74  7C 08 03 A6 */	mtlr r0
/* 8037BC78  38 21 00 20 */	addi r1, r1, 0x20
/* 8037BC7C  4E 80 00 20 */	blr 
