lbl_804454A8:
/* 804454A8  A8 A3 06 22 */	lha r5, 0x622(r3)
/* 804454AC  A8 83 06 2C */	lha r4, 0x62c(r3)
/* 804454B0  7C A0 07 35 */	extsh. r0, r5
/* 804454B4  7C 05 00 D0 */	neg r0, r5
/* 804454B8  41 80 00 08 */	blt lbl_804454C0
/* 804454BC  7C A0 2B 78 */	mr r0, r5
lbl_804454C0:
/* 804454C0  2C 00 20 00 */	cmpwi r0, 0x2000
/* 804454C4  4D 81 00 20 */	bgtlr 
/* 804454C8  A8 03 06 0E */	lha r0, 0x60e(r3)
/* 804454CC  7C 84 07 34 */	extsh r4, r4
/* 804454D0  7C 04 00 50 */	subf r0, r4, r0
/* 804454D4  7C 00 07 35 */	extsh. r0, r0
/* 804454D8  40 81 00 28 */	ble lbl_80445500
/* 804454DC  A8 03 06 2E */	lha r0, 0x62e(r3)
/* 804454E0  54 00 07 7D */	rlwinm. r0, r0, 0, 0x1d, 0x1e
/* 804454E4  41 82 00 10 */	beq lbl_804454F4
/* 804454E8  38 04 78 E3 */	addi r0, r4, 0x78e3
/* 804454EC  7C 05 07 34 */	extsh r5, r0
/* 804454F0  48 00 00 30 */	b lbl_80445520
lbl_804454F4:
/* 804454F4  38 04 43 8E */	addi r0, r4, 0x438e
/* 804454F8  7C 05 07 34 */	extsh r5, r0
/* 804454FC  48 00 00 24 */	b lbl_80445520
lbl_80445500:
/* 80445500  A8 03 06 2E */	lha r0, 0x62e(r3)
/* 80445504  54 00 07 7D */	rlwinm. r0, r0, 0, 0x1d, 0x1e
/* 80445508  41 82 00 10 */	beq lbl_80445518
/* 8044550C  38 04 87 1D */	addi r0, r4, -30947
/* 80445510  7C 05 07 34 */	extsh r5, r0
/* 80445514  48 00 00 0C */	b lbl_80445520
lbl_80445518:
/* 80445518  38 04 BC 72 */	addi r0, r4, -17294
/* 8044551C  7C 05 07 34 */	extsh r5, r0
lbl_80445520:
/* 80445520  A8 83 06 14 */	lha r4, 0x614(r3)
/* 80445524  7C A0 07 34 */	extsh r0, r5
/* 80445528  7C 84 00 50 */	subf r4, r4, r0
/* 8044552C  7C 80 07 35 */	extsh. r0, r4
/* 80445530  7C 80 07 34 */	extsh r0, r4
/* 80445534  7C 80 00 D0 */	neg r4, r0
/* 80445538  41 80 00 08 */	blt lbl_80445540
/* 8044553C  7C 04 03 78 */	mr r4, r0
lbl_80445540:
/* 80445540  2C 04 20 00 */	cmpwi r4, 0x2000
/* 80445544  40 81 00 10 */	ble lbl_80445554
/* 80445548  3C 80 80 44 */	lis r4, mfish_tai_turn@ha /* 0x8044555C@ha */
/* 8044554C  38 04 55 5C */	addi r0, r4, mfish_tai_turn@l /* 0x8044555C@l */
/* 80445550  90 03 00 34 */	stw r0, 0x34(r3)
lbl_80445554:
/* 80445554  B0 A3 06 14 */	sth r5, 0x614(r3)
/* 80445558  4E 80 00 20 */	blr 
