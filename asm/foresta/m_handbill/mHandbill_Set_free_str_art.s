lbl_803B19F0:
/* 803B19F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B19F4  7C 08 02 A6 */	mflr r0
/* 803B19F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B19FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B1A00  7C DF 33 78 */	mr r31, r6
/* 803B1A04  93 C1 00 08 */	stw r30, 8(r1)
/* 803B1A08  7C 7E 1B 78 */	mr r30, r3
/* 803B1A0C  4B FF FF 4D */	bl mHandbill_Set_free_str
/* 803B1A10  3C 60 81 16 */	lis r3, mHandbill_data@ha /* 0x81167DD8@ha */
/* 803B1A14  57 C0 10 3A */	slwi r0, r30, 2
/* 803B1A18  38 63 7D D8 */	addi r3, r3, mHandbill_data@l /* 0x81167DD8@l */
/* 803B1A1C  7C 63 02 14 */	add r3, r3, r0
/* 803B1A20  93 E3 01 40 */	stw r31, 0x140(r3)
/* 803B1A24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B1A28  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B1A2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B1A30  7C 08 03 A6 */	mtlr r0
/* 803B1A34  38 21 00 10 */	addi r1, r1, 0x10
/* 803B1A38  4E 80 00 20 */	blr 
