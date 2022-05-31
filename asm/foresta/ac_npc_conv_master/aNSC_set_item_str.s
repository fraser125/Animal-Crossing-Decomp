lbl_805460E4:
/* 805460E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805460E8  7C 08 02 A6 */	mflr r0
/* 805460EC  38 80 00 00 */	li r4, 0
/* 805460F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805460F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805460F8  93 C1 00 08 */	stw r30, 8(r1)
/* 805460FC  7C 7E 1B 78 */	mr r30, r3
/* 80546100  A3 E3 09 B4 */	lhz r31, 0x9b4(r3)
/* 80546104  7F E3 FB 78 */	mr r3, r31
/* 80546108  4B FF FF 79 */	bl aNSC_set_item_name_str
/* 8054610C  7F E3 FB 78 */	mr r3, r31
/* 80546110  4B EA 25 91 */	bl mSP_ItemNo2ItemPrice
/* 80546114  7C 7F 1B 78 */	mr r31, r3
/* 80546118  38 80 00 04 */	li r4, 4
/* 8054611C  4B FF FF 09 */	bl aNSC_set_value_str
/* 80546120  93 FE 09 AC */	stw r31, 0x9ac(r30)
/* 80546124  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80546128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054612C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80546130  7C 08 03 A6 */	mtlr r0
/* 80546134  38 21 00 10 */	addi r1, r1, 0x10
/* 80546138  4E 80 00 20 */	blr 
