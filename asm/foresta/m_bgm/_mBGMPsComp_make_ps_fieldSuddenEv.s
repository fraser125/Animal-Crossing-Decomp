lbl_8037BFD0:
/* 8037BFD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037BFD4  7C 08 02 A6 */	mflr r0
/* 8037BFD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037BFDC  39 61 00 20 */	addi r11, r1, 0x20
/* 8037BFE0  4B D1 EE F5 */	bl func_8009AED4
/* 8037BFE4  7C 7D 1B 78 */	mr r29, r3
/* 8037BFE8  7C 9E 23 78 */	mr r30, r4
/* 8037BFEC  7C BF 2B 78 */	mr r31, r5
/* 8037BFF0  38 61 00 08 */	addi r3, r1, 8
/* 8037BFF4  4B FF C9 A1 */	bl mBGMElem_default_set
/* 8037BFF8  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037BFFC  9B A1 00 08 */	stb r29, 8(r1)
/* 8037C000  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037C004  7F E8 FB 78 */	mr r8, r31
/* 8037C008  B3 C1 00 0E */	sth r30, 0xe(r1)
/* 8037C00C  38 63 01 64 */	addi r3, r3, 0x164
/* 8037C010  38 81 00 08 */	addi r4, r1, 8
/* 8037C014  38 A0 00 09 */	li r5, 9
/* 8037C018  38 C0 FF FF */	li r6, -1
/* 8037C01C  38 E0 00 00 */	li r7, 0
/* 8037C020  4B FF F8 B9 */	bl mBGMPsComp_make_ps
/* 8037C024  39 61 00 20 */	addi r11, r1, 0x20
/* 8037C028  4B D1 EE F9 */	bl func_8009AF20
/* 8037C02C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037C030  7C 08 03 A6 */	mtlr r0
/* 8037C034  38 21 00 20 */	addi r1, r1, 0x20
/* 8037C038  4E 80 00 20 */	blr 
