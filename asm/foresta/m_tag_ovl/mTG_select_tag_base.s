lbl_805FD364:
/* 805FD364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FD368  7C 08 02 A6 */	mflr r0
/* 805FD36C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FD370  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805FD374  80 E6 09 28 */	lwz r7, 0x928(r6)
/* 805FD378  70 E0 50 80 */	andi. r0, r7, 0x5080
/* 805FD37C  41 82 00 54 */	beq lbl_805FD3D0
/* 805FD380  80 04 00 00 */	lwz r0, 0(r4)
/* 805FD384  2C 00 00 01 */	cmpwi r0, 1
/* 805FD388  40 82 00 1C */	bne lbl_805FD3A4
/* 805FD38C  80 04 00 38 */	lwz r0, 0x38(r4)
/* 805FD390  2C 00 00 04 */	cmpwi r0, 4
/* 805FD394  40 82 00 10 */	bne lbl_805FD3A4
/* 805FD398  38 A0 00 01 */	li r5, 1
/* 805FD39C  4B FF 5C 79 */	bl mTG_close_window
/* 805FD3A0  48 00 00 D0 */	b lbl_805FD470
lbl_805FD3A4:
/* 805FD3A4  80 C6 09 7C */	lwz r6, 0x97c(r6)
/* 805FD3A8  38 A0 00 01 */	li r5, 1
/* 805FD3AC  80 86 00 00 */	lwz r4, 0(r6)
/* 805FD3B0  38 04 FF FF */	addi r0, r4, -1
/* 805FD3B4  1C 80 00 B4 */	mulli r4, r0, 0xb4
/* 805FD3B8  38 04 00 08 */	addi r0, r4, 8
/* 805FD3BC  7C 86 00 AE */	lbzx r4, r6, r0
/* 805FD3C0  4B FF 23 F5 */	bl mTG_return_tag_init
/* 805FD3C4  38 60 10 03 */	li r3, 0x1003
/* 805FD3C8  48 03 09 3D */	bl sAdo_SysTrgStart
/* 805FD3CC  48 00 00 A4 */	b lbl_805FD470
lbl_805FD3D0:
/* 805FD3D0  54 E0 04 21 */	rlwinm. r0, r7, 0, 0x10, 0x10
/* 805FD3D4  41 82 00 34 */	beq lbl_805FD408
/* 805FD3D8  88 E5 00 00 */	lbz r7, 0(r5)
/* 805FD3DC  3C C0 80 6D */	lis r6, mTG_label_table@ha /* 0x806D056C@ha */
/* 805FD3E0  80 05 00 40 */	lwz r0, 0x40(r5)
/* 805FD3E4  38 A6 05 6C */	addi r5, r6, mTG_label_table@l /* 0x806D056C@l */
/* 805FD3E8  54 E6 18 38 */	slwi r6, r7, 3
/* 805FD3EC  7C A5 30 2E */	lwzx r5, r5, r6
/* 805FD3F0  54 00 10 3A */	slwi r0, r0, 2
/* 805FD3F4  7C A5 00 2E */	lwzx r5, r5, r0
/* 805FD3F8  81 85 00 10 */	lwz r12, 0x10(r5)
/* 805FD3FC  7D 89 03 A6 */	mtctr r12
/* 805FD400  4E 80 04 21 */	bctrl 
/* 805FD404  48 00 00 6C */	b lbl_805FD470
lbl_805FD408:
/* 805FD408  88 65 00 00 */	lbz r3, 0(r5)
/* 805FD40C  3C 80 80 6D */	lis r4, mTG_label_table@ha /* 0x806D056C@ha */
/* 805FD410  38 84 05 6C */	addi r4, r4, mTG_label_table@l /* 0x806D056C@l */
/* 805FD414  54 E0 07 3B */	rlwinm. r0, r7, 0, 0x1c, 0x1d
/* 805FD418  54 63 18 38 */	slwi r3, r3, 3
/* 805FD41C  7C 64 1A 14 */	add r3, r4, r3
/* 805FD420  80 63 00 04 */	lwz r3, 4(r3)
/* 805FD424  38 83 FF FF */	addi r4, r3, -1
/* 805FD428  41 82 00 48 */	beq lbl_805FD470
/* 805FD42C  54 E0 07 7B */	rlwinm. r0, r7, 0, 0x1d, 0x1d
/* 805FD430  41 82 00 24 */	beq lbl_805FD454
/* 805FD434  80 65 00 40 */	lwz r3, 0x40(r5)
/* 805FD438  7C 03 20 00 */	cmpw r3, r4
/* 805FD43C  40 80 00 34 */	bge lbl_805FD470
/* 805FD440  38 03 00 01 */	addi r0, r3, 1
/* 805FD444  38 60 00 01 */	li r3, 1
/* 805FD448  90 05 00 40 */	stw r0, 0x40(r5)
/* 805FD44C  48 03 08 B9 */	bl sAdo_SysTrgStart
/* 805FD450  48 00 00 20 */	b lbl_805FD470
lbl_805FD454:
/* 805FD454  80 65 00 40 */	lwz r3, 0x40(r5)
/* 805FD458  2C 03 00 00 */	cmpwi r3, 0
/* 805FD45C  40 81 00 14 */	ble lbl_805FD470
/* 805FD460  38 03 FF FF */	addi r0, r3, -1
/* 805FD464  38 60 00 01 */	li r3, 1
/* 805FD468  90 05 00 40 */	stw r0, 0x40(r5)
/* 805FD46C  48 03 08 99 */	bl sAdo_SysTrgStart
lbl_805FD470:
/* 805FD470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FD474  7C 08 03 A6 */	mtlr r0
/* 805FD478  38 21 00 10 */	addi r1, r1, 0x10
/* 805FD47C  4E 80 00 20 */	blr 
