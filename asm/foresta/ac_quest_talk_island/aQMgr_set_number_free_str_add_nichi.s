lbl_8048D814:
/* 8048D814  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048D818  7C 08 02 A6 */	mflr r0
/* 8048D81C  3C A0 81 1D */	lis r5, data_811CEBE0@ha /* 0x811CEBE0@ha */
/* 8048D820  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048D824  38 05 EB E0 */	addi r0, r5, data_811CEBE0@l /* 0x811CEBE0@l */
/* 8048D828  38 A0 00 20 */	li r5, 0x20
/* 8048D82C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048D830  7C 9F 23 78 */	mr r31, r4
/* 8048D834  38 80 00 10 */	li r4, 0x10
/* 8048D838  93 C1 00 08 */	stw r30, 8(r1)
/* 8048D83C  7C 7E 1B 78 */	mr r30, r3
/* 8048D840  7C 03 03 78 */	mr r3, r0
/* 8048D844  4B F2 D2 05 */	bl mem_clear
/* 8048D848  28 1E 00 01 */	cmplwi r30, 1
/* 8048D84C  41 80 00 0C */	blt lbl_8048D858
/* 8048D850  28 1E 00 1F */	cmplwi r30, 0x1f
/* 8048D854  40 81 00 08 */	ble lbl_8048D85C
lbl_8048D858:
/* 8048D858  3B C0 00 01 */	li r30, 1
lbl_8048D85C:
/* 8048D85C  3C 60 81 1D */	lis r3, data_811CEBE0@ha /* 0x811CEBE0@ha */
/* 8048D860  38 BE 06 4D */	addi r5, r30, 0x64d
/* 8048D864  38 63 EB E0 */	addi r3, r3, data_811CEBE0@l /* 0x811CEBE0@l */
/* 8048D868  38 80 00 10 */	li r4, 0x10
/* 8048D86C  4B F6 14 61 */	bl mString_Load_StringFromRom
/* 8048D870  4B F3 1E 39 */	bl func_803BF6A8
/* 8048D874  3C A0 81 1D */	lis r5, data_811CEBE0@ha /* 0x811CEBE0@ha */
/* 8048D878  7F E4 FB 78 */	mr r4, r31
/* 8048D87C  38 A5 EB E0 */	addi r5, r5, data_811CEBE0@l /* 0x811CEBE0@l */
/* 8048D880  38 C0 00 10 */	li r6, 0x10
/* 8048D884  4B F3 23 D1 */	bl mMsg_Set_free_str
/* 8048D888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048D88C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048D890  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048D894  7C 08 03 A6 */	mtlr r0
/* 8048D898  38 21 00 10 */	addi r1, r1, 0x10
/* 8048D89C  4E 80 00 20 */	blr 
