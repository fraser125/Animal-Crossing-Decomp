lbl_805D1400:
/* 805D1400  88 03 06 A8 */	lbz r0, 0x6a8(r3)
/* 805D1404  38 A0 00 00 */	li r5, 0
/* 805D1408  28 00 00 00 */	cmplwi r0, 0
/* 805D140C  40 82 00 2C */	bne lbl_805D1438
/* 805D1410  88 03 06 A0 */	lbz r0, 0x6a0(r3)
/* 805D1414  2C 00 00 02 */	cmpwi r0, 2
/* 805D1418  41 82 00 1C */	beq lbl_805D1434
/* 805D141C  40 80 00 1C */	bge lbl_805D1438
/* 805D1420  2C 00 00 01 */	cmpwi r0, 1
/* 805D1424  40 80 00 08 */	bge lbl_805D142C
/* 805D1428  48 00 00 10 */	b lbl_805D1438
lbl_805D142C:
/* 805D142C  38 A0 00 01 */	li r5, 1
/* 805D1430  48 00 00 08 */	b lbl_805D1438
lbl_805D1434:
/* 805D1434  38 A0 00 02 */	li r5, 2
lbl_805D1438:
/* 805D1438  2C 04 00 02 */	cmpwi r4, 2
/* 805D143C  41 82 00 7C */	beq lbl_805D14B8
/* 805D1440  40 80 00 14 */	bge lbl_805D1454
/* 805D1444  2C 04 00 00 */	cmpwi r4, 0
/* 805D1448  41 82 00 18 */	beq lbl_805D1460
/* 805D144C  40 80 00 40 */	bge lbl_805D148C
/* 805D1450  48 00 00 C4 */	b lbl_805D1514
lbl_805D1454:
/* 805D1454  2C 04 00 04 */	cmpwi r4, 4
/* 805D1458  40 80 00 BC */	bge lbl_805D1514
/* 805D145C  48 00 00 88 */	b lbl_805D14E4
lbl_805D1460:
/* 805D1460  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805D1464  38 84 52 F0 */	addi r4, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 805D1468  80 84 00 00 */	lwz r4, 0(r4)
/* 805D146C  88 04 00 17 */	lbz r0, 0x17(r4)
/* 805D1470  7C 00 07 75 */	extsb. r0, r0
/* 805D1474  40 81 00 A0 */	ble lbl_805D1514
/* 805D1478  80 03 06 6C */	lwz r0, 0x66c(r3)
/* 805D147C  7C 00 28 00 */	cmpw r0, r5
/* 805D1480  40 81 00 94 */	ble lbl_805D1514
/* 805D1484  38 60 00 01 */	li r3, 1
/* 805D1488  4E 80 00 20 */	blr 
lbl_805D148C:
/* 805D148C  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805D1490  38 84 52 F0 */	addi r4, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 805D1494  80 84 00 00 */	lwz r4, 0(r4)
/* 805D1498  88 04 00 17 */	lbz r0, 0x17(r4)
/* 805D149C  7C 00 07 75 */	extsb. r0, r0
/* 805D14A0  40 80 00 74 */	bge lbl_805D1514
/* 805D14A4  80 03 06 6C */	lwz r0, 0x66c(r3)
/* 805D14A8  2C 00 00 1F */	cmpwi r0, 0x1f
/* 805D14AC  40 80 00 68 */	bge lbl_805D1514
/* 805D14B0  38 60 00 01 */	li r3, 1
/* 805D14B4  4E 80 00 20 */	blr 
lbl_805D14B8:
/* 805D14B8  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805D14BC  38 84 52 F0 */	addi r4, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 805D14C0  80 84 00 00 */	lwz r4, 0(r4)
/* 805D14C4  88 04 00 16 */	lbz r0, 0x16(r4)
/* 805D14C8  7C 00 07 75 */	extsb. r0, r0
/* 805D14CC  40 80 00 48 */	bge lbl_805D1514
/* 805D14D0  80 03 06 68 */	lwz r0, 0x668(r3)
/* 805D14D4  2C 00 00 00 */	cmpwi r0, 0
/* 805D14D8  40 81 00 3C */	ble lbl_805D1514
/* 805D14DC  38 60 00 01 */	li r3, 1
/* 805D14E0  4E 80 00 20 */	blr 
lbl_805D14E4:
/* 805D14E4  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805D14E8  38 84 52 F0 */	addi r4, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 805D14EC  80 84 00 00 */	lwz r4, 0(r4)
/* 805D14F0  88 04 00 16 */	lbz r0, 0x16(r4)
/* 805D14F4  7C 00 07 75 */	extsb. r0, r0
/* 805D14F8  40 81 00 1C */	ble lbl_805D1514
/* 805D14FC  80 63 06 68 */	lwz r3, 0x668(r3)
/* 805D1500  20 05 00 1F */	subfic r0, r5, 0x1f
/* 805D1504  7C 03 00 00 */	cmpw r3, r0
/* 805D1508  40 80 00 0C */	bge lbl_805D1514
/* 805D150C  38 60 00 01 */	li r3, 1
/* 805D1510  4E 80 00 20 */	blr 
lbl_805D1514:
/* 805D1514  38 60 00 00 */	li r3, 0
/* 805D1518  4E 80 00 20 */	blr 
