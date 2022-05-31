lbl_803C5490:
/* 803C5490  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C5494  7C 08 02 A6 */	mflr r0
/* 803C5498  2C 04 00 00 */	cmpwi r4, 0
/* 803C549C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C54A0  40 82 00 10 */	bne lbl_803C54B0
/* 803C54A4  38 80 00 00 */	li r4, 0
/* 803C54A8  38 A0 00 05 */	li r5, 5
/* 803C54AC  4B FF A7 01 */	bl mMsg_request_main_normal
lbl_803C54B0:
/* 803C54B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C54B4  7C 08 03 A6 */	mtlr r0
/* 803C54B8  38 21 00 10 */	addi r1, r1, 0x10
/* 803C54BC  4E 80 00 20 */	blr 
