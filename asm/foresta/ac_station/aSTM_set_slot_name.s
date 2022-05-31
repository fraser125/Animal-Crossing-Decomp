lbl_805BBD34:
/* 805BBD34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BBD38  7C 08 02 A6 */	mflr r0
/* 805BBD3C  7C 65 1B 78 */	mr r5, r3
/* 805BBD40  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BBD44  38 61 00 08 */	addi r3, r1, 8
/* 805BBD48  38 A5 06 CD */	addi r5, r5, 0x6cd
/* 805BBD4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805BBD50  7C 9F 23 78 */	mr r31, r4
/* 805BBD54  38 80 00 10 */	li r4, 0x10
/* 805BBD58  4B E3 2F 75 */	bl mString_Load_StringFromRom
/* 805BBD5C  4B E0 39 4D */	bl func_803BF6A8
/* 805BBD60  7F E4 FB 78 */	mr r4, r31
/* 805BBD64  38 A1 00 08 */	addi r5, r1, 8
/* 805BBD68  38 C0 00 10 */	li r6, 0x10
/* 805BBD6C  4B E0 3E E9 */	bl mMsg_Set_free_str
/* 805BBD70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BBD74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805BBD78  7C 08 03 A6 */	mtlr r0
/* 805BBD7C  38 21 00 20 */	addi r1, r1, 0x20
/* 805BBD80  4E 80 00 20 */	blr 
