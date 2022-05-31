lbl_804CC5F4:
/* 804CC5F4  38 00 00 0D */	li r0, 0xd
/* 804CC5F8  54 E4 04 3E */	clrlwi r4, r7, 0x10
/* 804CC5FC  38 A0 00 00 */	li r5, 0
/* 804CC600  7C 09 03 A6 */	mtctr r0
lbl_804CC604:
/* 804CC604  A0 03 00 1A */	lhz r0, 0x1a(r3)
/* 804CC608  7C 04 00 40 */	cmplw r4, r0
/* 804CC60C  40 82 00 44 */	bne lbl_804CC650
/* 804CC610  C0 26 00 00 */	lfs f1, 0(r6)
/* 804CC614  C0 03 00 00 */	lfs f0, 0(r3)
/* 804CC618  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804CC61C  40 82 00 34 */	bne lbl_804CC650
/* 804CC620  C0 26 00 04 */	lfs f1, 4(r6)
/* 804CC624  C0 03 00 04 */	lfs f0, 4(r3)
/* 804CC628  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804CC62C  40 82 00 24 */	bne lbl_804CC650
/* 804CC630  C0 26 00 08 */	lfs f1, 8(r6)
/* 804CC634  C0 03 00 08 */	lfs f0, 8(r3)
/* 804CC638  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804CC63C  40 82 00 14 */	bne lbl_804CC650
/* 804CC640  38 00 00 00 */	li r0, 0
/* 804CC644  38 A0 00 01 */	li r5, 1
/* 804CC648  B0 03 00 10 */	sth r0, 0x10(r3)
/* 804CC64C  48 00 00 0C */	b lbl_804CC658
lbl_804CC650:
/* 804CC650  38 63 00 1C */	addi r3, r3, 0x1c
/* 804CC654  42 00 FF B0 */	bdnz lbl_804CC604
lbl_804CC658:
/* 804CC658  7C A3 2B 78 */	mr r3, r5
/* 804CC65C  4E 80 00 20 */	blr 
