lbl_80416B64:
/* 80416B64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80416B68  7C 08 02 A6 */	mflr r0
/* 80416B6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80416B70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80416B74  7C 7F 1B 78 */	mr r31, r3
/* 80416B78  4B FF F7 5D */	bl Cottage_reset_door_action
/* 80416B7C  3C 60 80 41 */	lis r3, Cottage_move_closed@ha /* 0x80416B9C@ha */
/* 80416B80  38 03 6B 9C */	addi r0, r3, Cottage_move_closed@l /* 0x80416B9C@l */
/* 80416B84  90 1F 02 A0 */	stw r0, 0x2a0(r31)
/* 80416B88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80416B8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80416B90  7C 08 03 A6 */	mtlr r0
/* 80416B94  38 21 00 10 */	addi r1, r1, 0x10
/* 80416B98  4E 80 00 20 */	blr 
