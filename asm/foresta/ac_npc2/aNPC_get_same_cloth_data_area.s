lbl_8053AF64:
/* 8053AF64  38 00 00 0A */	li r0, 0xa
/* 8053AF68  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 8053AF6C  38 A0 00 00 */	li r5, 0
/* 8053AF70  7C 09 03 A6 */	mtctr r0
lbl_8053AF74:
/* 8053AF74  A0 03 00 04 */	lhz r0, 4(r3)
/* 8053AF78  7C 00 20 40 */	cmplw r0, r4
/* 8053AF7C  40 82 00 0C */	bne lbl_8053AF88
/* 8053AF80  7C A3 2B 78 */	mr r3, r5
/* 8053AF84  4E 80 00 20 */	blr 
lbl_8053AF88:
/* 8053AF88  38 63 00 C0 */	addi r3, r3, 0xc0
/* 8053AF8C  38 A5 00 01 */	addi r5, r5, 1
/* 8053AF90  42 00 FF E4 */	bdnz lbl_8053AF74
/* 8053AF94  38 60 FF FF */	li r3, -1
/* 8053AF98  4E 80 00 20 */	blr 
