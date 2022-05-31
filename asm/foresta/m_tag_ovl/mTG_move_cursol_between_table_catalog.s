lbl_805FA3B4:
/* 805FA3B4  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 805FA3B8  38 C0 00 00 */	li r6, 0
/* 805FA3BC  41 82 00 9C */	beq lbl_805FA458
/* 805FA3C0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805FA3C4  80 04 00 38 */	lwz r0, 0x38(r4)
/* 805FA3C8  80 A3 09 CC */	lwz r5, 0x9cc(r3)
/* 805FA3CC  2C 00 00 0F */	cmpwi r0, 0xf
/* 805FA3D0  3C 65 00 01 */	addis r3, r5, 1
/* 805FA3D4  88 03 D9 F4 */	lbz r0, -0x260c(r3)
/* 805FA3D8  1C 60 06 44 */	mulli r3, r0, 0x644
/* 805FA3DC  3C E3 00 01 */	addis r7, r3, 1
/* 805FA3E0  38 E7 A1 48 */	addi r7, r7, -24248
/* 805FA3E4  40 82 00 A8 */	bne lbl_805FA48C
/* 805FA3E8  80 64 00 40 */	lwz r3, 0x40(r4)
/* 805FA3EC  2C 03 00 04 */	cmpwi r3, 4
/* 805FA3F0  41 80 00 0C */	blt lbl_805FA3FC
/* 805FA3F4  38 03 FF FF */	addi r0, r3, -1
/* 805FA3F8  90 04 00 40 */	stw r0, 0x40(r4)
lbl_805FA3FC:
/* 805FA3FC  7C 65 3A AE */	lhax r3, r5, r7
/* 805FA400  7C 60 07 35 */	extsh. r0, r3
/* 805FA404  40 82 00 10 */	bne lbl_805FA414
/* 805FA408  38 00 00 00 */	li r0, 0
/* 805FA40C  90 04 00 40 */	stw r0, 0x40(r4)
/* 805FA410  48 00 00 2C */	b lbl_805FA43C
lbl_805FA414:
/* 805FA414  80 04 00 40 */	lwz r0, 0x40(r4)
/* 805FA418  7C 03 00 00 */	cmpw r3, r0
/* 805FA41C  41 81 00 10 */	bgt lbl_805FA42C
/* 805FA420  38 03 FF FF */	addi r0, r3, -1
/* 805FA424  90 04 00 40 */	stw r0, 0x40(r4)
/* 805FA428  48 00 00 14 */	b lbl_805FA43C
lbl_805FA42C:
/* 805FA42C  2C 00 00 06 */	cmpwi r0, 6
/* 805FA430  41 80 00 0C */	blt lbl_805FA43C
/* 805FA434  38 00 00 06 */	li r0, 6
/* 805FA438  90 04 00 40 */	stw r0, 0x40(r4)
lbl_805FA43C:
/* 805FA43C  38 00 00 0E */	li r0, 0xe
/* 805FA440  3C 65 00 01 */	addis r3, r5, 1
/* 805FA444  90 04 00 38 */	stw r0, 0x38(r4)
/* 805FA448  38 00 00 01 */	li r0, 1
/* 805FA44C  38 C0 00 01 */	li r6, 1
/* 805FA450  98 03 D9 FD */	stb r0, -0x2603(r3)
/* 805FA454  48 00 00 38 */	b lbl_805FA48C
lbl_805FA458:
/* 805FA458  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 805FA45C  41 82 00 30 */	beq lbl_805FA48C
/* 805FA460  80 04 00 38 */	lwz r0, 0x38(r4)
/* 805FA464  2C 00 00 0E */	cmpwi r0, 0xe
/* 805FA468  40 82 00 24 */	bne lbl_805FA48C
/* 805FA46C  38 00 00 0F */	li r0, 0xf
/* 805FA470  90 04 00 38 */	stw r0, 0x38(r4)
/* 805FA474  80 64 00 40 */	lwz r3, 0x40(r4)
/* 805FA478  2C 03 00 03 */	cmpwi r3, 3
/* 805FA47C  41 80 00 0C */	blt lbl_805FA488
/* 805FA480  38 03 00 01 */	addi r0, r3, 1
/* 805FA484  90 04 00 40 */	stw r0, 0x40(r4)
lbl_805FA488:
/* 805FA488  38 C0 00 01 */	li r6, 1
lbl_805FA48C:
/* 805FA48C  7C C3 33 78 */	mr r3, r6
/* 805FA490  4E 80 00 20 */	blr 
