lbl_8037AA44:
/* 8037AA44  80 03 01 18 */	lwz r0, 0x118(r3)
/* 8037AA48  38 A0 FF FF */	li r5, -1
/* 8037AA4C  38 80 00 00 */	li r4, 0
/* 8037AA50  7C 09 03 A6 */	mtctr r0
/* 8037AA54  2C 00 00 00 */	cmpwi r0, 0
/* 8037AA58  40 81 00 24 */	ble lbl_8037AA7C
lbl_8037AA5C:
/* 8037AA5C  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8037AA60  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8037AA64  41 82 00 0C */	beq lbl_8037AA70
/* 8037AA68  7C 85 23 78 */	mr r5, r4
/* 8037AA6C  48 00 00 10 */	b lbl_8037AA7C
lbl_8037AA70:
/* 8037AA70  38 84 00 01 */	addi r4, r4, 1
/* 8037AA74  38 63 00 14 */	addi r3, r3, 0x14
/* 8037AA78  42 00 FF E4 */	bdnz lbl_8037AA5C
lbl_8037AA7C:
/* 8037AA7C  7C A3 2B 78 */	mr r3, r5
/* 8037AA80  4E 80 00 20 */	blr 
