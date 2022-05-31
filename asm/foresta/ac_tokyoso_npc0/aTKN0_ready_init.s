lbl_8058BD4C:
/* 8058BD4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058BD50  7C 08 02 A6 */	mflr r0
/* 8058BD54  38 60 00 0F */	li r3, 0xf
/* 8058BD58  38 80 00 08 */	li r4, 8
/* 8058BD5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058BD60  4B E1 20 6D */	bl mEv_get_save_area
/* 8058BD64  A0 03 00 02 */	lhz r0, 2(r3)
/* 8058BD68  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 8058BD6C  B0 03 00 02 */	sth r0, 2(r3)
/* 8058BD70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058BD74  7C 08 03 A6 */	mtlr r0
/* 8058BD78  38 21 00 10 */	addi r1, r1, 0x10
/* 8058BD7C  4E 80 00 20 */	blr 
