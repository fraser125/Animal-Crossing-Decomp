lbl_804F5390:
/* 804F5390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F5394  7C 08 02 A6 */	mflr r0
/* 804F5398  2C 04 00 00 */	cmpwi r4, 0
/* 804F539C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F53A0  41 82 00 0C */	beq lbl_804F53AC
/* 804F53A4  38 80 00 16 */	li r4, 0x16
/* 804F53A8  48 00 04 6D */	bl func_804F5814
lbl_804F53AC:
/* 804F53AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F53B0  7C 08 03 A6 */	mtlr r0
/* 804F53B4  38 21 00 10 */	addi r1, r1, 0x10
/* 804F53B8  4E 80 00 20 */	blr 
