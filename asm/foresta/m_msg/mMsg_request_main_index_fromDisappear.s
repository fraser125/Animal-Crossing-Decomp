lbl_803C5634:
/* 803C5634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C5638  7C 08 02 A6 */	mflr r0
/* 803C563C  2C 04 00 00 */	cmpwi r4, 0
/* 803C5640  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C5644  41 82 00 10 */	beq lbl_803C5654
/* 803C5648  38 80 00 00 */	li r4, 0
/* 803C564C  38 A0 00 05 */	li r5, 5
/* 803C5650  4B FF A0 81 */	bl mMsg_Change_request_main_index
lbl_803C5654:
/* 803C5654  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C5658  7C 08 03 A6 */	mtlr r0
/* 803C565C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C5660  4E 80 00 20 */	blr 
