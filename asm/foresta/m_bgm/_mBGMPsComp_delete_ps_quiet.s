lbl_8037C28C:
/* 8037C28C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037C290  7C 08 02 A6 */	mflr r0
/* 8037C294  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037C298  38 80 00 02 */	li r4, 2
/* 8037C29C  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037C2A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037C2A4  38 A0 00 7F */	li r5, 0x7f
/* 8037C2A8  38 C0 01 68 */	li r6, 0x168
/* 8037C2AC  38 63 01 64 */	addi r3, r3, 0x164
/* 8037C2B0  38 E0 00 01 */	li r7, 1
/* 8037C2B4  4B FF FE D1 */	bl mBGMPsComp_delete_ps
/* 8037C2B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037C2BC  7C 08 03 A6 */	mtlr r0
/* 8037C2C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8037C2C4  4E 80 00 20 */	blr 
