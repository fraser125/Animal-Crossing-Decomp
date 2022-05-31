lbl_80406A7C:
/* 80406A7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80406A80  7C 08 02 A6 */	mflr r0
/* 80406A84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80406A88  4B FF FF 81 */	bl lbRTC_IntervalTime_sub
/* 80406A8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80406A90  7C 08 03 A6 */	mtlr r0
/* 80406A94  38 21 00 10 */	addi r1, r1, 0x10
/* 80406A98  4E 80 00 20 */	blr 
