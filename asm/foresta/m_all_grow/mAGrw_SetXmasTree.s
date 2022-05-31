lbl_80373D68:
/* 80373D68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80373D6C  7C 08 02 A6 */	mflr r0
/* 80373D70  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80373D74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80373D78  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80373D7C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80373D80  2C 00 00 07 */	cmpwi r0, 7
/* 80373D84  40 82 00 14 */	bne lbl_80373D98
/* 80373D88  3C 63 00 02 */	addis r3, r3, 2
/* 80373D8C  38 63 61 20 */	addi r3, r3, 0x6120
/* 80373D90  4B FF FE 31 */	bl mAGrw_CheckPutXmasTree
/* 80373D94  4B FF FF 69 */	bl mAGrw_XmasTreeField
lbl_80373D98:
/* 80373D98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80373D9C  7C 08 03 A6 */	mtlr r0
/* 80373DA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80373DA4  4E 80 00 20 */	blr 
