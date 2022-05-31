lbl_8052D0C4:
/* 8052D0C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052D0C8  7C 08 02 A6 */	mflr r0
/* 8052D0CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052D0D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052D0D4  7C 7F 1B 78 */	mr r31, r3
/* 8052D0D8  38 60 00 08 */	li r3, 8
/* 8052D0DC  93 C1 00 08 */	stw r30, 8(r1)
/* 8052D0E0  3B C0 00 00 */	li r30, 0
/* 8052D0E4  7F E4 FB 78 */	mr r4, r31
/* 8052D0E8  4B E6 D1 7D */	bl mDemo_Check
/* 8052D0EC  2C 03 00 01 */	cmpwi r3, 1
/* 8052D0F0  41 82 00 2C */	beq lbl_8052D11C
/* 8052D0F4  7F E4 FB 78 */	mr r4, r31
/* 8052D0F8  38 60 00 0A */	li r3, 0xa
/* 8052D0FC  4B E6 D1 69 */	bl mDemo_Check
/* 8052D100  2C 03 00 01 */	cmpwi r3, 1
/* 8052D104  41 82 00 18 */	beq lbl_8052D11C
/* 8052D108  7F E4 FB 78 */	mr r4, r31
/* 8052D10C  38 60 00 07 */	li r3, 7
/* 8052D110  4B E6 D1 55 */	bl mDemo_Check
/* 8052D114  2C 03 00 01 */	cmpwi r3, 1
/* 8052D118  40 82 00 10 */	bne lbl_8052D128
lbl_8052D11C:
/* 8052D11C  4B E9 39 0D */	bl mMsg_Check_NowUtter
/* 8052D120  2C 03 00 01 */	cmpwi r3, 1
/* 8052D124  41 82 00 10 */	beq lbl_8052D134
lbl_8052D128:
/* 8052D128  88 1F 08 34 */	lbz r0, 0x834(r31)
/* 8052D12C  28 00 00 00 */	cmplwi r0, 0
/* 8052D130  41 82 00 08 */	beq lbl_8052D138
lbl_8052D134:
/* 8052D134  3B C0 00 01 */	li r30, 1
lbl_8052D138:
/* 8052D138  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052D13C  7F C3 F3 78 */	mr r3, r30
/* 8052D140  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052D144  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052D148  7C 08 03 A6 */	mtlr r0
/* 8052D14C  38 21 00 10 */	addi r1, r1, 0x10
/* 8052D150  4E 80 00 20 */	blr 
