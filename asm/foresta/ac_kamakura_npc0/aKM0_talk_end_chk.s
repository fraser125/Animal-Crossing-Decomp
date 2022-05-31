lbl_8052BE64:
/* 8052BE64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052BE68  7C 08 02 A6 */	mflr r0
/* 8052BE6C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8052BE70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052BE74  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8052BE78  3C 84 00 02 */	addis r4, r4, 2
/* 8052BE7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052BE80  3B E0 00 00 */	li r31, 0
/* 8052BE84  80 84 60 78 */	lwz r4, 0x6078(r4)
/* 8052BE88  81 84 00 08 */	lwz r12, 8(r4)
/* 8052BE8C  7D 89 03 A6 */	mtctr r12
/* 8052BE90  4E 80 04 21 */	bctrl 
/* 8052BE94  2C 03 00 01 */	cmpwi r3, 1
/* 8052BE98  40 82 00 08 */	bne lbl_8052BEA0
/* 8052BE9C  3B E0 00 01 */	li r31, 1
lbl_8052BEA0:
/* 8052BEA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052BEA4  7F E3 FB 78 */	mr r3, r31
/* 8052BEA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052BEAC  7C 08 03 A6 */	mtlr r0
/* 8052BEB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8052BEB4  4E 80 00 20 */	blr 
