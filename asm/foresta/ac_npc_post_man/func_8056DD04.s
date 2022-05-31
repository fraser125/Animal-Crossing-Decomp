lbl_8056DD04:
/* 8056DD04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056DD08  7C 08 02 A6 */	mflr r0
/* 8056DD0C  3C A0 80 65 */	lis r5, lit_500@ha /* 0x80649880@ha */
/* 8056DD10  3C 80 80 65 */	lis r4, data_8064987C@ha /* 0x8064987C@ha */
/* 8056DD14  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056DD18  38 C0 00 00 */	li r6, 0
/* 8056DD1C  C0 25 98 80 */	lfs f1, lit_500@l(r5)  /* 0x80649880@l */
/* 8056DD20  38 A0 00 01 */	li r5, 1
/* 8056DD24  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8056DD28  7C 7F 1B 78 */	mr r31, r3
/* 8056DD2C  C0 44 98 7C */	lfs f2, data_8064987C@l(r4)  /* 0x8064987C@l */
/* 8056DD30  7F E4 FB 78 */	mr r4, r31
/* 8056DD34  38 60 00 00 */	li r3, 0
/* 8056DD38  38 E0 00 00 */	li r7, 0
/* 8056DD3C  4B E1 C0 65 */	bl mCoBG_BgCheckControll
/* 8056DD40  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 8056DD44  3C 60 80 65 */	lis r3, data_8064987C@ha /* 0x8064987C@ha */
/* 8056DD48  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8056DD4C  38 81 00 08 */	addi r4, r1, 8
/* 8056DD50  C0 23 98 7C */	lfs f1, data_8064987C@l(r3)  /* 0x8064987C@l */
/* 8056DD54  38 60 00 00 */	li r3, 0
/* 8056DD58  90 A1 00 08 */	stw r5, 8(r1)
/* 8056DD5C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8056DD60  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8056DD64  90 01 00 10 */	stw r0, 0x10(r1)
/* 8056DD68  4B E2 19 51 */	bl func_8038F6B8
/* 8056DD6C  D0 3F 09 A4 */	stfs f1, 0x9a4(r31)
/* 8056DD70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056DD74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8056DD78  7C 08 03 A6 */	mtlr r0
/* 8056DD7C  38 21 00 20 */	addi r1, r1, 0x20
/* 8056DD80  4E 80 00 20 */	blr 
