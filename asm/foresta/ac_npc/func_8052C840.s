lbl_8052C840:
/* 8052C840  80 03 08 40 */	lwz r0, 0x840(r3)
/* 8052C844  38 80 00 00 */	li r4, 0
/* 8052C848  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 8052C84C  40 82 00 14 */	bne lbl_8052C860
/* 8052C850  80 63 01 7C */	lwz r3, 0x17c(r3)
/* 8052C854  28 03 00 00 */	cmplwi r3, 0
/* 8052C858  41 82 00 08 */	beq lbl_8052C860
/* 8052C85C  88 83 08 E2 */	lbz r4, 0x8e2(r3)
lbl_8052C860:
/* 8052C860  7C 83 23 78 */	mr r3, r4
/* 8052C864  4E 80 00 20 */	blr 