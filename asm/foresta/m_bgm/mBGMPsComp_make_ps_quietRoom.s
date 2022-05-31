lbl_8037BDB0:
/* 8037BDB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037BDB4  7C 08 02 A6 */	mflr r0
/* 8037BDB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037BDBC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037BDC0  7C 7F 1B 78 */	mr r31, r3
/* 8037BDC4  38 61 00 08 */	addi r3, r1, 8
/* 8037BDC8  4B FF CB CD */	bl mBGMElem_default_set
/* 8037BDCC  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037BDD0  B3 E1 00 0E */	sth r31, 0xe(r1)
/* 8037BDD4  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037BDD8  38 81 00 08 */	addi r4, r1, 8
/* 8037BDDC  38 63 01 64 */	addi r3, r3, 0x164
/* 8037BDE0  38 A0 00 05 */	li r5, 5
/* 8037BDE4  38 C0 FF FF */	li r6, -1
/* 8037BDE8  38 E0 00 40 */	li r7, 0x40
/* 8037BDEC  39 00 00 FF */	li r8, 0xff
/* 8037BDF0  4B FF FA E9 */	bl mBGMPsComp_make_ps
/* 8037BDF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037BDF8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037BDFC  7C 08 03 A6 */	mtlr r0
/* 8037BE00  38 21 00 20 */	addi r1, r1, 0x20
/* 8037BE04  4E 80 00 20 */	blr 
