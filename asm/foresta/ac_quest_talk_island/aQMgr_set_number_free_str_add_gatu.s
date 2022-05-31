lbl_8048D788:
/* 8048D788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048D78C  7C 08 02 A6 */	mflr r0
/* 8048D790  3C A0 81 1D */	lis r5, data_811CEBE0@ha /* 0x811CEBE0@ha */
/* 8048D794  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048D798  38 05 EB E0 */	addi r0, r5, data_811CEBE0@l /* 0x811CEBE0@l */
/* 8048D79C  38 A0 00 20 */	li r5, 0x20
/* 8048D7A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048D7A4  7C 9F 23 78 */	mr r31, r4
/* 8048D7A8  38 80 00 10 */	li r4, 0x10
/* 8048D7AC  93 C1 00 08 */	stw r30, 8(r1)
/* 8048D7B0  7C 7E 1B 78 */	mr r30, r3
/* 8048D7B4  7C 03 03 78 */	mr r3, r0
/* 8048D7B8  4B F2 D2 91 */	bl mem_clear
/* 8048D7BC  28 1E 00 01 */	cmplwi r30, 1
/* 8048D7C0  41 80 00 0C */	blt lbl_8048D7CC
/* 8048D7C4  28 1E 00 0C */	cmplwi r30, 0xc
/* 8048D7C8  40 81 00 08 */	ble lbl_8048D7D0
lbl_8048D7CC:
/* 8048D7CC  3B C0 00 01 */	li r30, 1
lbl_8048D7D0:
/* 8048D7D0  3C 60 81 1D */	lis r3, data_811CEBE0@ha /* 0x811CEBE0@ha */
/* 8048D7D4  38 BE 06 6C */	addi r5, r30, 0x66c
/* 8048D7D8  38 63 EB E0 */	addi r3, r3, data_811CEBE0@l /* 0x811CEBE0@l */
/* 8048D7DC  38 80 00 10 */	li r4, 0x10
/* 8048D7E0  4B F6 14 ED */	bl mString_Load_StringFromRom
/* 8048D7E4  4B F3 1E C5 */	bl func_803BF6A8
/* 8048D7E8  3C A0 81 1D */	lis r5, data_811CEBE0@ha /* 0x811CEBE0@ha */
/* 8048D7EC  7F E4 FB 78 */	mr r4, r31
/* 8048D7F0  38 A5 EB E0 */	addi r5, r5, data_811CEBE0@l /* 0x811CEBE0@l */
/* 8048D7F4  38 C0 00 10 */	li r6, 0x10
/* 8048D7F8  4B F3 24 5D */	bl mMsg_Set_free_str
/* 8048D7FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048D800  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048D804  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048D808  7C 08 03 A6 */	mtlr r0
/* 8048D80C  38 21 00 10 */	addi r1, r1, 0x10
/* 8048D810  4E 80 00 20 */	blr 
