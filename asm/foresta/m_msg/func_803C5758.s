lbl_803C5758:
/* 803C5758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C575C  7C 08 02 A6 */	mflr r0
/* 803C5760  2C 05 00 00 */	cmpwi r5, 0
/* 803C5764  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C5768  41 82 00 2C */	beq lbl_803C5794
/* 803C576C  80 03 04 58 */	lwz r0, 0x458(r3)
/* 803C5770  2C 00 00 03 */	cmpwi r0, 3
/* 803C5774  40 82 00 14 */	bne lbl_803C5788
/* 803C5778  38 80 00 01 */	li r4, 1
/* 803C577C  38 A0 00 05 */	li r5, 5
/* 803C5780  4B FF A4 81 */	bl mMsg_request_main_cursol
/* 803C5784  48 00 00 10 */	b lbl_803C5794
lbl_803C5788:
/* 803C5788  38 80 00 01 */	li r4, 1
/* 803C578C  38 A0 00 05 */	li r5, 5
/* 803C5790  4B FF A4 1D */	bl mMsg_request_main_normal
lbl_803C5794:
/* 803C5794  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C5798  7C 08 03 A6 */	mtlr r0
/* 803C579C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C57A0  4E 80 00 20 */	blr 