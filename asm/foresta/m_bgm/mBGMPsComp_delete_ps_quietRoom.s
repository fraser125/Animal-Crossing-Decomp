lbl_8037C3A0:
/* 8037C3A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037C3A4  7C 08 02 A6 */	mflr r0
/* 8037C3A8  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037C3AC  38 80 00 05 */	li r4, 5
/* 8037C3B0  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037C3B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037C3B8  38 A0 00 7F */	li r5, 0x7f
/* 8037C3BC  38 C0 01 68 */	li r6, 0x168
/* 8037C3C0  38 63 01 64 */	addi r3, r3, 0x164
/* 8037C3C4  38 E0 00 01 */	li r7, 1
/* 8037C3C8  4B FF FD BD */	bl mBGMPsComp_delete_ps
/* 8037C3CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037C3D0  7C 08 03 A6 */	mtlr r0
/* 8037C3D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8037C3D8  4E 80 00 20 */	blr 
