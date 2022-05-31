lbl_8037BE08:
/* 8037BE08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037BE0C  7C 08 02 A6 */	mflr r0
/* 8037BE10  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037BE14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037BE18  7C 9F 23 78 */	mr r31, r4
/* 8037BE1C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8037BE20  7C 7E 1B 78 */	mr r30, r3
/* 8037BE24  38 61 00 08 */	addi r3, r1, 8
/* 8037BE28  4B FF CB 6D */	bl mBGMElem_default_set
/* 8037BE2C  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037BE30  9B C1 00 08 */	stb r30, 8(r1)
/* 8037BE34  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037BE38  38 81 00 08 */	addi r4, r1, 8
/* 8037BE3C  B3 E1 00 0E */	sth r31, 0xe(r1)
/* 8037BE40  38 63 01 64 */	addi r3, r3, 0x164
/* 8037BE44  38 A0 00 06 */	li r5, 6
/* 8037BE48  38 C0 FF FF */	li r6, -1
/* 8037BE4C  38 E0 00 00 */	li r7, 0
/* 8037BE50  39 00 00 FF */	li r8, 0xff
/* 8037BE54  4B FF FA 85 */	bl mBGMPsComp_make_ps
/* 8037BE58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037BE5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037BE60  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8037BE64  7C 08 03 A6 */	mtlr r0
/* 8037BE68  38 21 00 20 */	addi r1, r1, 0x20
/* 8037BE6C  4E 80 00 20 */	blr 
