lbl_8039F974:
/* 8039F974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039F978  7C 08 02 A6 */	mflr r0
/* 8039F97C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039F980  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039F984  7C 7F 1B 78 */	mr r31, r3
/* 8039F988  7C 83 23 78 */	mr r3, r4
/* 8039F98C  4B FF FA DD */	bl mEvMN_GetMapIdx
/* 8039F990  2C 03 FF FF */	cmpwi r3, -1
/* 8039F994  41 82 00 2C */	beq lbl_8039F9C0
/* 8039F998  3C 80 80 65 */	lis r4, l_event_set_table@ha /* 0x80652910@ha */
/* 8039F99C  54 60 10 3A */	slwi r0, r3, 2
/* 8039F9A0  38 64 29 10 */	addi r3, r4, l_event_set_table@l /* 0x80652910@l */
/* 8039F9A4  7C A3 00 2E */	lwzx r5, r3, r0
/* 8039F9A8  28 05 00 00 */	cmplwi r5, 0
/* 8039F9AC  41 82 00 14 */	beq lbl_8039F9C0
/* 8039F9B0  88 85 00 01 */	lbz r4, 1(r5)
/* 8039F9B4  7F E3 FB 78 */	mr r3, r31
/* 8039F9B8  88 A5 00 00 */	lbz r5, 0(r5)
/* 8039F9BC  4B FF FF 85 */	bl mEvMN_GetNpcIdx
lbl_8039F9C0:
/* 8039F9C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039F9C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039F9C8  7C 08 03 A6 */	mtlr r0
/* 8039F9CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8039F9D0  4E 80 00 20 */	blr 
