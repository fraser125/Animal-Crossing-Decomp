lbl_8037BD28:
/* 8037BD28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037BD2C  7C 08 02 A6 */	mflr r0
/* 8037BD30  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037BD34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037BD38  7C 9F 23 78 */	mr r31, r4
/* 8037BD3C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8037BD40  7C 7E 1B 78 */	mr r30, r3
/* 8037BD44  38 61 00 08 */	addi r3, r1, 8
/* 8037BD48  4B FF CC 4D */	bl mBGMElem_default_set
/* 8037BD4C  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037BD50  9B C1 00 08 */	stb r30, 8(r1)
/* 8037BD54  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037BD58  38 81 00 08 */	addi r4, r1, 8
/* 8037BD5C  B3 E1 00 0E */	sth r31, 0xe(r1)
/* 8037BD60  38 63 01 64 */	addi r3, r3, 0x164
/* 8037BD64  38 A0 00 04 */	li r5, 4
/* 8037BD68  38 C0 FF FF */	li r6, -1
/* 8037BD6C  38 E0 00 00 */	li r7, 0
/* 8037BD70  39 00 00 FF */	li r8, 0xff
/* 8037BD74  4B FF FB 65 */	bl mBGMPsComp_make_ps
/* 8037BD78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037BD7C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037BD80  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8037BD84  7C 08 03 A6 */	mtlr r0
/* 8037BD88  38 21 00 20 */	addi r1, r1, 0x20
/* 8037BD8C  4E 80 00 20 */	blr 
