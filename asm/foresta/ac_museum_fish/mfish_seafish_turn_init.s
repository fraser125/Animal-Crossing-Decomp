lbl_80443DA8:
/* 80443DA8  A8 83 06 22 */	lha r4, 0x622(r3)
/* 80443DAC  A8 A3 06 2C */	lha r5, 0x62c(r3)
/* 80443DB0  7C 80 07 35 */	extsh. r0, r4
/* 80443DB4  7C 04 00 D0 */	neg r0, r4
/* 80443DB8  41 80 00 08 */	blt lbl_80443DC0
/* 80443DBC  7C 80 23 78 */	mr r0, r4
lbl_80443DC0:
/* 80443DC0  2C 00 20 00 */	cmpwi r0, 0x2000
/* 80443DC4  4D 81 00 20 */	bgtlr 
/* 80443DC8  A8 C3 06 14 */	lha r6, 0x614(r3)
/* 80443DCC  7C 85 30 51 */	subf. r4, r5, r6
/* 80443DD0  7C 04 00 D0 */	neg r0, r4
/* 80443DD4  41 80 00 08 */	blt lbl_80443DDC
/* 80443DD8  7C 80 23 78 */	mr r0, r4
lbl_80443DDC:
/* 80443DDC  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80443DE0  4D 81 00 20 */	bgtlr 
/* 80443DE4  A8 03 06 0E */	lha r0, 0x60e(r3)
/* 80443DE8  7C A4 07 34 */	extsh r4, r5
/* 80443DEC  7C 04 00 50 */	subf r0, r4, r0
/* 80443DF0  7C 00 07 35 */	extsh. r0, r0
/* 80443DF4  40 81 00 28 */	ble lbl_80443E1C
/* 80443DF8  A8 03 06 2E */	lha r0, 0x62e(r3)
/* 80443DFC  54 00 07 7D */	rlwinm. r0, r0, 0, 0x1d, 0x1e
/* 80443E00  41 82 00 10 */	beq lbl_80443E10
/* 80443E04  38 04 78 E3 */	addi r0, r4, 0x78e3
/* 80443E08  7C 05 07 34 */	extsh r5, r0
/* 80443E0C  48 00 00 30 */	b lbl_80443E3C
lbl_80443E10:
/* 80443E10  38 04 43 8E */	addi r0, r4, 0x438e
/* 80443E14  7C 05 07 34 */	extsh r5, r0
/* 80443E18  48 00 00 24 */	b lbl_80443E3C
lbl_80443E1C:
/* 80443E1C  A8 03 06 2E */	lha r0, 0x62e(r3)
/* 80443E20  54 00 07 7D */	rlwinm. r0, r0, 0, 0x1d, 0x1e
/* 80443E24  41 82 00 10 */	beq lbl_80443E34
/* 80443E28  38 04 87 1D */	addi r0, r4, -30947
/* 80443E2C  7C 05 07 34 */	extsh r5, r0
/* 80443E30  48 00 00 0C */	b lbl_80443E3C
lbl_80443E34:
/* 80443E34  38 04 BC 72 */	addi r0, r4, -17294
/* 80443E38  7C 05 07 34 */	extsh r5, r0
lbl_80443E3C:
/* 80443E3C  7C A0 07 34 */	extsh r0, r5
/* 80443E40  7C 86 00 50 */	subf r4, r6, r0
/* 80443E44  7C 80 07 35 */	extsh. r0, r4
/* 80443E48  7C 80 07 34 */	extsh r0, r4
/* 80443E4C  7C 80 00 D0 */	neg r4, r0
/* 80443E50  41 80 00 08 */	blt lbl_80443E58
/* 80443E54  7C 04 03 78 */	mr r4, r0
lbl_80443E58:
/* 80443E58  2C 04 20 00 */	cmpwi r4, 0x2000
/* 80443E5C  40 81 00 10 */	ble lbl_80443E6C
/* 80443E60  3C 80 80 44 */	lis r4, mfish_seafish_turn@ha /* 0x80443E74@ha */
/* 80443E64  38 04 3E 74 */	addi r0, r4, mfish_seafish_turn@l /* 0x80443E74@l */
/* 80443E68  90 03 00 34 */	stw r0, 0x34(r3)
lbl_80443E6C:
/* 80443E6C  B0 A3 06 14 */	sth r5, 0x614(r3)
/* 80443E70  4E 80 00 20 */	blr 
