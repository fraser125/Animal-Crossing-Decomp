lbl_8037C52C:
/* 8037C52C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037C530  7C 08 02 A6 */	mflr r0
/* 8037C534  3C A0 81 13 */	lis r5, data_811351C0@ha /* 0x811351C0@ha */
/* 8037C538  7C 86 23 78 */	mr r6, r4
/* 8037C53C  39 05 51 C0 */	addi r8, r5, data_811351C0@l /* 0x811351C0@l */
/* 8037C540  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037C544  7C 65 1B 78 */	mr r5, r3
/* 8037C548  38 80 00 0A */	li r4, 0xa
/* 8037C54C  38 E0 00 00 */	li r7, 0
/* 8037C550  38 68 01 64 */	addi r3, r8, 0x164
/* 8037C554  4B FF FC 31 */	bl mBGMPsComp_delete_ps
/* 8037C558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037C55C  7C 08 03 A6 */	mtlr r0
/* 8037C560  38 21 00 10 */	addi r1, r1, 0x10
/* 8037C564  4E 80 00 20 */	blr 
