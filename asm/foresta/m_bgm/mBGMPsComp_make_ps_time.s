lbl_8037BE90:
/* 8037BE90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037BE94  7C 08 02 A6 */	mflr r0
/* 8037BE98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037BE9C  38 61 00 08 */	addi r3, r1, 8
/* 8037BEA0  4B FF CA F5 */	bl mBGMElem_default_set
/* 8037BEA4  38 00 08 70 */	li r0, 0x870
/* 8037BEA8  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037BEAC  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037BEB0  B0 01 00 0E */	sth r0, 0xe(r1)
/* 8037BEB4  38 63 01 64 */	addi r3, r3, 0x164
/* 8037BEB8  38 81 00 08 */	addi r4, r1, 8
/* 8037BEBC  38 A0 00 07 */	li r5, 7
/* 8037BEC0  38 C0 FF FF */	li r6, -1
/* 8037BEC4  38 E0 00 40 */	li r7, 0x40
/* 8037BEC8  39 00 00 FF */	li r8, 0xff
/* 8037BECC  4B FF FA 0D */	bl mBGMPsComp_make_ps
/* 8037BED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037BED4  7C 08 03 A6 */	mtlr r0
/* 8037BED8  38 21 00 10 */	addi r1, r1, 0x10
/* 8037BEDC  4E 80 00 20 */	blr 
