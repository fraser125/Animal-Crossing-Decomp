lbl_80485954:
/* 80485954  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80485958  7C 08 02 A6 */	mflr r0
/* 8048595C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80485960  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80485964  7C 7F 1B 78 */	mr r31, r3
/* 80485968  88 03 09 5B */	lbz r0, 0x95b(r3)
/* 8048596C  28 00 00 04 */	cmplwi r0, 4
/* 80485970  40 80 00 30 */	bge lbl_804859A0
/* 80485974  98 1F 09 5A */	stb r0, 0x95a(r31)
/* 80485978  38 80 00 08 */	li r4, 8
/* 8048597C  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 80485980  7D 89 03 A6 */	mtctr r12
/* 80485984  4E 80 04 21 */	bctrl 
/* 80485988  2C 03 00 01 */	cmpwi r3, 1
/* 8048598C  40 82 00 14 */	bne lbl_804859A0
/* 80485990  38 60 00 04 */	li r3, 4
/* 80485994  38 00 00 08 */	li r0, 8
/* 80485998  98 7F 09 5B */	stb r3, 0x95b(r31)
/* 8048599C  98 1F 01 85 */	stb r0, 0x185(r31)
lbl_804859A0:
/* 804859A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804859A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804859A8  7C 08 03 A6 */	mtlr r0
/* 804859AC  38 21 00 10 */	addi r1, r1, 0x10
/* 804859B0  4E 80 00 20 */	blr 