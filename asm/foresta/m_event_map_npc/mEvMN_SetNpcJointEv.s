lbl_8039FC84:
/* 8039FC84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039FC88  7C 08 02 A6 */	mflr r0
/* 8039FC8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039FC90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039FC94  93 C1 00 08 */	stw r30, 8(r1)
/* 8039FC98  7C 7E 1B 78 */	mr r30, r3
/* 8039FC9C  7C 83 23 78 */	mr r3, r4
/* 8039FCA0  4B FF F7 C9 */	bl mEvMN_GetMapIdx
/* 8039FCA4  2C 03 FF FF */	cmpwi r3, -1
/* 8039FCA8  41 82 00 34 */	beq lbl_8039FCDC
/* 8039FCAC  3C 80 80 65 */	lis r4, l_event_set_table@ha /* 0x80652910@ha */
/* 8039FCB0  54 60 10 3A */	slwi r0, r3, 2
/* 8039FCB4  38 64 29 10 */	addi r3, r4, l_event_set_table@l /* 0x80652910@l */
/* 8039FCB8  7F E3 00 2E */	lwzx r31, r3, r0
/* 8039FCBC  28 1F 00 00 */	cmplwi r31, 0
/* 8039FCC0  41 82 00 1C */	beq lbl_8039FCDC
/* 8039FCC4  88 9F 00 01 */	lbz r4, 1(r31)
/* 8039FCC8  7F C3 F3 78 */	mr r3, r30
/* 8039FCCC  4B FF FD 09 */	bl mEvMN_ClearRemoveNpcJoint
/* 8039FCD0  88 9F 00 01 */	lbz r4, 1(r31)
/* 8039FCD4  7F C3 F3 78 */	mr r3, r30
/* 8039FCD8  4B FF FD 89 */	bl mEvMN_SetNpcJointEvRandom
lbl_8039FCDC:
/* 8039FCDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039FCE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039FCE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8039FCE8  7C 08 03 A6 */	mtlr r0
/* 8039FCEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8039FCF0  4E 80 00 20 */	blr 
