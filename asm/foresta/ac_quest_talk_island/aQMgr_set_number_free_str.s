lbl_8048D6BC:
/* 8048D6BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048D6C0  7C 08 02 A6 */	mflr r0
/* 8048D6C4  3C C0 81 1D */	lis r6, data_811CEBE0@ha /* 0x811CEBE0@ha */
/* 8048D6C8  7C 65 1B 78 */	mr r5, r3
/* 8048D6CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048D6D0  38 66 EB E0 */	addi r3, r6, data_811CEBE0@l /* 0x811CEBE0@l */
/* 8048D6D4  38 C0 00 0A */	li r6, 0xa
/* 8048D6D8  38 E0 00 01 */	li r7, 1
/* 8048D6DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048D6E0  7C 9F 23 78 */	mr r31, r4
/* 8048D6E4  38 80 00 10 */	li r4, 0x10
/* 8048D6E8  39 00 00 00 */	li r8, 0
/* 8048D6EC  39 20 00 01 */	li r9, 1
/* 8048D6F0  4B F2 1D 89 */	bl mFont_UnintToString
/* 8048D6F4  4B F3 1F B5 */	bl func_803BF6A8
/* 8048D6F8  3C A0 81 1D */	lis r5, data_811CEBE0@ha /* 0x811CEBE0@ha */
/* 8048D6FC  7F E4 FB 78 */	mr r4, r31
/* 8048D700  38 A5 EB E0 */	addi r5, r5, data_811CEBE0@l /* 0x811CEBE0@l */
/* 8048D704  38 C0 00 10 */	li r6, 0x10
/* 8048D708  4B F3 25 4D */	bl mMsg_Set_free_str
/* 8048D70C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048D710  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048D714  7C 08 03 A6 */	mtlr r0
/* 8048D718  38 21 00 10 */	addi r1, r1, 0x10
/* 8048D71C  4E 80 00 20 */	blr 
