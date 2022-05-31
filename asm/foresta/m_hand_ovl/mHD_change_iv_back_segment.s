lbl_805DE1D0:
/* 805DE1D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DE1D4  7C 08 02 A6 */	mflr r0
/* 805DE1D8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805DE1DC  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805DE1E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DE1E4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805DE1E8  3C 63 00 02 */	addis r3, r3, 2
/* 805DE1EC  38 80 00 00 */	li r4, 0
/* 805DE1F0  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805DE1F4  80 C5 52 F0 */	lwz r6, data_811C52F0@l(r5)  /* 0x811C52F0@l */
/* 805DE1F8  A0 A3 10 84 */	lhz r5, 0x1084(r3)
/* 805DE1FC  28 05 24 00 */	cmplwi r5, 0x2400
/* 805DE200  41 80 00 10 */	blt lbl_805DE210
/* 805DE204  28 05 24 FF */	cmplwi r5, 0x24ff
/* 805DE208  40 80 00 08 */	bge lbl_805DE210
/* 805DE20C  38 80 00 01 */	li r4, 1
lbl_805DE210:
/* 805DE210  88 06 1F A4 */	lbz r0, 0x1fa4(r6)
/* 805DE214  20 64 00 00 */	subfic r3, r4, 0
/* 805DE218  7C 83 19 10 */	subfe r4, r3, r3
/* 805DE21C  68 00 00 01 */	xori r0, r0, 1
/* 805DE220  38 65 DC 00 */	addi r3, r5, -9216
/* 805DE224  98 06 1F A4 */	stb r0, 0x1fa4(r6)
/* 805DE228  7C 65 20 38 */	and r5, r3, r4
/* 805DE22C  88 06 1F A4 */	lbz r0, 0x1fa4(r6)
/* 805DE230  7C 00 07 74 */	extsb r0, r0
/* 805DE234  54 00 10 3A */	slwi r0, r0, 2
/* 805DE238  7C 86 02 14 */	add r4, r6, r0
/* 805DE23C  80 64 1F A8 */	lwz r3, 0x1fa8(r4)
/* 805DE240  80 84 1F B0 */	lwz r4, 0x1fb0(r4)
/* 805DE244  4B DF B5 89 */	bl mPlib_Load_PlayerTexAndPallet
/* 805DE248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DE24C  7C 08 03 A6 */	mtlr r0
/* 805DE250  38 21 00 10 */	addi r1, r1, 0x10
/* 805DE254  4E 80 00 20 */	blr 
