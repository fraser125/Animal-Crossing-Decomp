lbl_8039C094:
/* 8039C094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039C098  7C 08 02 A6 */	mflr r0
/* 8039C09C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039C0A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039C0A4  3B E0 00 00 */	li r31, 0
/* 8039C0A8  4B FF FF 55 */	bl is_special_event_valid
/* 8039C0AC  2C 03 00 00 */	cmpwi r3, 0
/* 8039C0B0  41 82 00 14 */	beq lbl_8039C0C4
/* 8039C0B4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039C0B8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039C0BC  3C 63 00 02 */	addis r3, r3, 2
/* 8039C0C0  8B E3 05 54 */	lbz r31, 0x554(r3)
lbl_8039C0C4:
/* 8039C0C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039C0C8  7F E3 FB 78 */	mr r3, r31
/* 8039C0CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039C0D0  7C 08 03 A6 */	mtlr r0
/* 8039C0D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8039C0D8  4E 80 00 20 */	blr 
