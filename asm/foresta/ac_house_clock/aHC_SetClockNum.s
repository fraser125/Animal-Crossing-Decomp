lbl_8042A1D8:
/* 8042A1D8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8042A1DC  38 A0 00 00 */	li r5, 0
/* 8042A1E0  38 C4 85 38 */	addi r6, r4, common_data@l /* 0x81138538@l */
/* 8042A1E4  38 00 00 09 */	li r0, 9
/* 8042A1E8  80 E6 00 14 */	lwz r7, 0x14(r6)
/* 8042A1EC  3C 80 80 68 */	lis r4, aHC_position_data@ha /* 0x80684050@ha */
/* 8042A1F0  38 84 40 50 */	addi r4, r4, aHC_position_data@l /* 0x80684050@l */
/* 8042A1F4  38 C0 00 00 */	li r6, 0
/* 8042A1F8  B0 A3 01 78 */	sth r5, 0x178(r3)
/* 8042A1FC  7C 09 03 A6 */	mtctr r0
lbl_8042A200:
/* 8042A200  7C 04 28 2E */	lwzx r0, r4, r5
/* 8042A204  7C 07 00 00 */	cmpw r7, r0
/* 8042A208  40 82 00 3C */	bne lbl_8042A244
/* 8042A20C  B0 C3 01 78 */	sth r6, 0x178(r3)
/* 8042A210  3C 80 80 68 */	lis r4, aHC_position_data@ha /* 0x80684050@ha */
/* 8042A214  38 84 40 50 */	addi r4, r4, aHC_position_data@l /* 0x80684050@l */
/* 8042A218  A8 03 01 78 */	lha r0, 0x178(r3)
/* 8042A21C  54 00 20 36 */	slwi r0, r0, 4
/* 8042A220  7C A4 02 14 */	add r5, r4, r0
/* 8042A224  80 85 00 04 */	lwz r4, 4(r5)
/* 8042A228  80 05 00 08 */	lwz r0, 8(r5)
/* 8042A22C  90 83 01 7C */	stw r4, 0x17c(r3)
/* 8042A230  90 03 01 80 */	stw r0, 0x180(r3)
/* 8042A234  80 05 00 0C */	lwz r0, 0xc(r5)
/* 8042A238  90 03 01 84 */	stw r0, 0x184(r3)
/* 8042A23C  38 60 00 01 */	li r3, 1
/* 8042A240  4E 80 00 20 */	blr 
lbl_8042A244:
/* 8042A244  38 C6 00 01 */	addi r6, r6, 1
/* 8042A248  38 A5 00 10 */	addi r5, r5, 0x10
/* 8042A24C  42 00 FF B4 */	bdnz lbl_8042A200
/* 8042A250  3C 80 80 43 */	lis r4, aHC_dummy@ha /* 0x8042A1D4@ha */
/* 8042A254  38 04 A1 D4 */	addi r0, r4, aHC_dummy@l /* 0x8042A1D4@l */
/* 8042A258  90 03 01 64 */	stw r0, 0x164(r3)
/* 8042A25C  90 03 01 68 */	stw r0, 0x168(r3)
/* 8042A260  90 03 01 60 */	stw r0, 0x160(r3)
/* 8042A264  38 60 00 00 */	li r3, 0
/* 8042A268  4E 80 00 20 */	blr 
