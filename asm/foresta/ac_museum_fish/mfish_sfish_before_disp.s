lbl_8044758C:
/* 8044758C  2C 05 00 01 */	cmpwi r5, 1
/* 80447590  40 82 00 88 */	bne lbl_80447618
/* 80447594  A8 89 00 00 */	lha r4, 0(r9)
/* 80447598  38 00 EA AB */	li r0, -5461
/* 8044759C  A8 68 06 1C */	lha r3, 0x61c(r8)
/* 804475A0  7C 64 1A 14 */	add r3, r4, r3
/* 804475A4  2C 03 EA AB */	cmpwi r3, -5461
/* 804475A8  40 81 00 08 */	ble lbl_804475B0
/* 804475AC  7C 60 1B 78 */	mr r0, r3
lbl_804475B0:
/* 804475B0  2C 00 15 55 */	cmpwi r0, 0x1555
/* 804475B4  40 80 00 18 */	bge lbl_804475CC
/* 804475B8  2C 03 EA AB */	cmpwi r3, -5461
/* 804475BC  38 00 EA AB */	li r0, -5461
/* 804475C0  40 81 00 10 */	ble lbl_804475D0
/* 804475C4  7C 60 1B 78 */	mr r0, r3
/* 804475C8  48 00 00 08 */	b lbl_804475D0
lbl_804475CC:
/* 804475CC  38 00 15 55 */	li r0, 0x1555
lbl_804475D0:
/* 804475D0  B0 09 00 00 */	sth r0, 0(r9)
/* 804475D4  38 00 EA AB */	li r0, -5461
/* 804475D8  A8 89 00 02 */	lha r4, 2(r9)
/* 804475DC  A8 68 06 1C */	lha r3, 0x61c(r8)
/* 804475E0  7C 64 1A 14 */	add r3, r4, r3
/* 804475E4  2C 03 EA AB */	cmpwi r3, -5461
/* 804475E8  40 81 00 08 */	ble lbl_804475F0
/* 804475EC  7C 60 1B 78 */	mr r0, r3
lbl_804475F0:
/* 804475F0  2C 00 15 55 */	cmpwi r0, 0x1555
/* 804475F4  40 80 00 18 */	bge lbl_8044760C
/* 804475F8  2C 03 EA AB */	cmpwi r3, -5461
/* 804475FC  38 00 EA AB */	li r0, -5461
/* 80447600  40 81 00 10 */	ble lbl_80447610
/* 80447604  7C 60 1B 78 */	mr r0, r3
/* 80447608  48 00 00 08 */	b lbl_80447610
lbl_8044760C:
/* 8044760C  38 00 15 55 */	li r0, 0x1555
lbl_80447610:
/* 80447610  B0 09 00 02 */	sth r0, 2(r9)
/* 80447614  48 00 00 94 */	b lbl_804476A8
lbl_80447618:
/* 80447618  2C 05 00 02 */	cmpwi r5, 2
/* 8044761C  40 82 00 8C */	bne lbl_804476A8
/* 80447620  A8 88 06 1C */	lha r4, 0x61c(r8)
/* 80447624  38 00 D5 56 */	li r0, -10922
/* 80447628  A8 69 00 02 */	lha r3, 2(r9)
/* 8044762C  1C 84 00 03 */	mulli r4, r4, 3
/* 80447630  7C 64 18 50 */	subf r3, r4, r3
/* 80447634  2C 03 D5 56 */	cmpwi r3, -10922
/* 80447638  40 81 00 08 */	ble lbl_80447640
/* 8044763C  7C 60 1B 78 */	mr r0, r3
lbl_80447640:
/* 80447640  2C 00 2A AA */	cmpwi r0, 0x2aaa
/* 80447644  40 80 00 18 */	bge lbl_8044765C
/* 80447648  2C 03 D5 56 */	cmpwi r3, -10922
/* 8044764C  38 00 D5 56 */	li r0, -10922
/* 80447650  40 81 00 10 */	ble lbl_80447660
/* 80447654  7C 60 1B 78 */	mr r0, r3
/* 80447658  48 00 00 08 */	b lbl_80447660
lbl_8044765C:
/* 8044765C  38 00 2A AA */	li r0, 0x2aaa
lbl_80447660:
/* 80447660  B0 09 00 02 */	sth r0, 2(r9)
/* 80447664  38 00 EA AB */	li r0, -5461
/* 80447668  A8 88 06 1C */	lha r4, 0x61c(r8)
/* 8044766C  A8 69 00 00 */	lha r3, 0(r9)
/* 80447670  7C 84 0E 70 */	srawi r4, r4, 1
/* 80447674  7C 64 18 50 */	subf r3, r4, r3
/* 80447678  2C 03 EA AB */	cmpwi r3, -5461
/* 8044767C  40 81 00 08 */	ble lbl_80447684
/* 80447680  7C 60 1B 78 */	mr r0, r3
lbl_80447684:
/* 80447684  2C 00 15 55 */	cmpwi r0, 0x1555
/* 80447688  40 80 00 18 */	bge lbl_804476A0
/* 8044768C  2C 03 EA AB */	cmpwi r3, -5461
/* 80447690  38 00 EA AB */	li r0, -5461
/* 80447694  40 81 00 10 */	ble lbl_804476A4
/* 80447698  7C 60 1B 78 */	mr r0, r3
/* 8044769C  48 00 00 08 */	b lbl_804476A4
lbl_804476A0:
/* 804476A0  38 00 15 55 */	li r0, 0x1555
lbl_804476A4:
/* 804476A4  B0 09 00 00 */	sth r0, 0(r9)
lbl_804476A8:
/* 804476A8  38 60 00 01 */	li r3, 1
/* 804476AC  4E 80 00 20 */	blr 