lbl_8052E8E4:
/* 8052E8E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052E8E8  7C 08 02 A6 */	mflr r0
/* 8052E8EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052E8F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052E8F4  7C 7F 1B 78 */	mr r31, r3
/* 8052E8F8  38 60 00 08 */	li r3, 8
/* 8052E8FC  93 C1 00 08 */	stw r30, 8(r1)
/* 8052E900  7C 9E 23 78 */	mr r30, r4
/* 8052E904  7F E4 FB 78 */	mr r4, r31
/* 8052E908  4B E6 B9 5D */	bl mDemo_Check
/* 8052E90C  2C 03 00 01 */	cmpwi r3, 1
/* 8052E910  41 82 00 2C */	beq lbl_8052E93C
/* 8052E914  7F E4 FB 78 */	mr r4, r31
/* 8052E918  38 60 00 0A */	li r3, 0xa
/* 8052E91C  4B E6 B9 49 */	bl mDemo_Check
/* 8052E920  2C 03 00 01 */	cmpwi r3, 1
/* 8052E924  41 82 00 18 */	beq lbl_8052E93C
/* 8052E928  7F E4 FB 78 */	mr r4, r31
/* 8052E92C  38 60 00 07 */	li r3, 7
/* 8052E930  4B E6 B9 35 */	bl mDemo_Check
/* 8052E934  2C 03 00 01 */	cmpwi r3, 1
/* 8052E938  40 82 00 20 */	bne lbl_8052E958
lbl_8052E93C:
/* 8052E93C  4B E6 BA D5 */	bl mDemo_Check_ListenAble
/* 8052E940  2C 03 00 00 */	cmpwi r3, 0
/* 8052E944  40 82 00 14 */	bne lbl_8052E958
/* 8052E948  7F E3 FB 78 */	mr r3, r31
/* 8052E94C  7F C4 F3 78 */	mr r4, r30
/* 8052E950  4B FF FE 1D */	bl aNPC_setup_talk_start
/* 8052E954  48 00 00 4C */	b lbl_8052E9A0
lbl_8052E958:
/* 8052E958  80 1E 1D F8 */	lwz r0, 0x1df8(r30)
/* 8052E95C  2C 00 00 00 */	cmpwi r0, 0
/* 8052E960  40 82 00 40 */	bne lbl_8052E9A0
/* 8052E964  80 1E 1E 0C */	lwz r0, 0x1e0c(r30)
/* 8052E968  2C 00 00 00 */	cmpwi r0, 0
/* 8052E96C  40 82 00 34 */	bne lbl_8052E9A0
/* 8052E970  81 9F 09 64 */	lwz r12, 0x964(r31)
/* 8052E974  28 0C 00 00 */	cmplwi r12, 0
/* 8052E978  41 82 00 18 */	beq lbl_8052E990
/* 8052E97C  7F E3 FB 78 */	mr r3, r31
/* 8052E980  7F C4 F3 78 */	mr r4, r30
/* 8052E984  7D 89 03 A6 */	mtctr r12
/* 8052E988  4E 80 04 21 */	bctrl 
/* 8052E98C  48 00 00 14 */	b lbl_8052E9A0
lbl_8052E990:
/* 8052E990  7F E4 FB 78 */	mr r4, r31
/* 8052E994  38 60 00 07 */	li r3, 7
/* 8052E998  38 A0 00 00 */	li r5, 0
/* 8052E99C  4B E6 B7 C1 */	bl mDemo_Request
lbl_8052E9A0:
/* 8052E9A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052E9A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052E9A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052E9AC  7C 08 03 A6 */	mtlr r0
/* 8052E9B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8052E9B4  4E 80 00 20 */	blr 
