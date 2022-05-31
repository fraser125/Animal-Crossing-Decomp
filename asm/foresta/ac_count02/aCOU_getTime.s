lbl_805AB924:
/* 805AB924  38 E0 00 3C */	li r7, 0x3c
/* 805AB928  2C 04 00 02 */	cmpwi r4, 2
/* 805AB92C  7C C3 3B D6 */	divw r6, r3, r7
/* 805AB930  39 00 00 00 */	li r8, 0
/* 805AB934  7C 06 3B D6 */	divw r0, r6, r7
/* 805AB938  7C A0 39 D6 */	mullw r5, r0, r7
/* 805AB93C  7C 06 39 D6 */	mullw r0, r6, r7
/* 805AB940  7C A5 30 50 */	subf r5, r5, r6
/* 805AB944  7C C0 18 50 */	subf r6, r0, r3
/* 805AB948  41 82 00 44 */	beq lbl_805AB98C
/* 805AB94C  40 80 00 14 */	bge lbl_805AB960
/* 805AB950  2C 04 00 00 */	cmpwi r4, 0
/* 805AB954  41 82 00 18 */	beq lbl_805AB96C
/* 805AB958  40 80 00 28 */	bge lbl_805AB980
/* 805AB95C  48 00 00 4C */	b lbl_805AB9A8
lbl_805AB960:
/* 805AB960  2C 04 00 04 */	cmpwi r4, 4
/* 805AB964  40 80 00 44 */	bge lbl_805AB9A8
/* 805AB968  48 00 00 38 */	b lbl_805AB9A0
lbl_805AB96C:
/* 805AB96C  38 60 00 0A */	li r3, 0xa
/* 805AB970  7C 06 1B D6 */	divw r0, r6, r3
/* 805AB974  7C 00 19 D6 */	mullw r0, r0, r3
/* 805AB978  7D 00 30 50 */	subf r8, r0, r6
/* 805AB97C  48 00 00 2C */	b lbl_805AB9A8
lbl_805AB980:
/* 805AB980  38 00 00 0A */	li r0, 0xa
/* 805AB984  7D 06 03 D6 */	divw r8, r6, r0
/* 805AB988  48 00 00 20 */	b lbl_805AB9A8
lbl_805AB98C:
/* 805AB98C  38 60 00 0A */	li r3, 0xa
/* 805AB990  7C 05 1B D6 */	divw r0, r5, r3
/* 805AB994  7C 00 19 D6 */	mullw r0, r0, r3
/* 805AB998  7D 00 28 50 */	subf r8, r0, r5
/* 805AB99C  48 00 00 0C */	b lbl_805AB9A8
lbl_805AB9A0:
/* 805AB9A0  38 00 00 0A */	li r0, 0xa
/* 805AB9A4  7D 05 03 D6 */	divw r8, r5, r0
lbl_805AB9A8:
/* 805AB9A8  7D 03 43 78 */	mr r3, r8
/* 805AB9AC  4E 80 00 20 */	blr 
