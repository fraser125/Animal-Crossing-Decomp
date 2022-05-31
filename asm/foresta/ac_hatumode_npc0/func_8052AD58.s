lbl_8052AD58:
/* 8052AD58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052AD5C  7C 08 02 A6 */	mflr r0
/* 8052AD60  38 60 00 01 */	li r3, 1
/* 8052AD64  38 80 00 07 */	li r4, 7
/* 8052AD68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052AD6C  4B E7 30 61 */	bl mEv_get_save_area
/* 8052AD70  28 03 00 00 */	cmplwi r3, 0
/* 8052AD74  40 82 00 1C */	bne lbl_8052AD90
/* 8052AD78  38 60 00 01 */	li r3, 1
/* 8052AD7C  38 80 00 07 */	li r4, 7
/* 8052AD80  4B E7 2E A5 */	bl mEv_reserve_save_area
/* 8052AD84  38 00 00 00 */	li r0, 0
/* 8052AD88  B0 03 00 00 */	sth r0, 0(r3)
/* 8052AD8C  48 00 00 0C */	b lbl_8052AD98
lbl_8052AD90:
/* 8052AD90  38 00 00 01 */	li r0, 1
/* 8052AD94  B0 03 00 00 */	sth r0, 0(r3)
lbl_8052AD98:
/* 8052AD98  38 00 00 00 */	li r0, 0
/* 8052AD9C  B0 03 00 02 */	sth r0, 2(r3)
/* 8052ADA0  B0 03 00 04 */	sth r0, 4(r3)
/* 8052ADA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052ADA8  7C 08 03 A6 */	mtlr r0
/* 8052ADAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8052ADB0  4E 80 00 20 */	blr 
