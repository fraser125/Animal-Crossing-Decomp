lbl_8056D638:
/* 8056D638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056D63C  7C 08 02 A6 */	mflr r0
/* 8056D640  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056D644  38 00 00 0F */	li r0, 0xf
/* 8056D648  90 03 09 98 */	stw r0, 0x998(r3)
/* 8056D64C  4B FF FE 55 */	bl aPG_msg_win_open_wait_init
/* 8056D650  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056D654  7C 08 03 A6 */	mtlr r0
/* 8056D658  38 21 00 10 */	addi r1, r1, 0x10
/* 8056D65C  4E 80 00 20 */	blr 
