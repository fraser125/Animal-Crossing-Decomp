lbl_804BD6E4:
/* 804BD6E4  38 00 00 0D */	li r0, 0xd
/* 804BD6E8  54 E4 04 3E */	clrlwi r4, r7, 0x10
/* 804BD6EC  38 A0 00 00 */	li r5, 0
/* 804BD6F0  7C 09 03 A6 */	mtctr r0
lbl_804BD6F4:
/* 804BD6F4  A0 03 00 1A */	lhz r0, 0x1a(r3)
/* 804BD6F8  7C 04 00 40 */	cmplw r4, r0
/* 804BD6FC  40 82 00 44 */	bne lbl_804BD740
/* 804BD700  C0 26 00 00 */	lfs f1, 0(r6)
/* 804BD704  C0 03 00 00 */	lfs f0, 0(r3)
/* 804BD708  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804BD70C  40 82 00 34 */	bne lbl_804BD740
/* 804BD710  C0 26 00 04 */	lfs f1, 4(r6)
/* 804BD714  C0 03 00 04 */	lfs f0, 4(r3)
/* 804BD718  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804BD71C  40 82 00 24 */	bne lbl_804BD740
/* 804BD720  C0 26 00 08 */	lfs f1, 8(r6)
/* 804BD724  C0 03 00 08 */	lfs f0, 8(r3)
/* 804BD728  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804BD72C  40 82 00 14 */	bne lbl_804BD740
/* 804BD730  38 00 00 00 */	li r0, 0
/* 804BD734  38 A0 00 01 */	li r5, 1
/* 804BD738  B0 03 00 10 */	sth r0, 0x10(r3)
/* 804BD73C  48 00 00 0C */	b lbl_804BD748
lbl_804BD740:
/* 804BD740  38 63 00 1C */	addi r3, r3, 0x1c
/* 804BD744  42 00 FF B0 */	bdnz lbl_804BD6F4
lbl_804BD748:
/* 804BD748  7C A3 2B 78 */	mr r3, r5
/* 804BD74C  4E 80 00 20 */	blr 
