lbl_805FF3B0:
/* 805FF3B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FF3B4  7C 08 02 A6 */	mflr r0
/* 805FF3B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FF3BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805FF3C0  93 C1 00 08 */	stw r30, 8(r1)
/* 805FF3C4  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805FF3C8  83 E4 09 A0 */	lwz r31, 0x9a0(r4)
/* 805FF3CC  4B FF FF AD */	bl mTI_get_now_min
/* 805FF3D0  A0 9F 00 10 */	lhz r4, 0x10(r31)
/* 805FF3D4  3B C4 00 0C */	addi r30, r4, 0xc
/* 805FF3D8  2C 1E 02 D0 */	cmpwi r30, 0x2d0
/* 805FF3DC  41 80 00 08 */	blt lbl_805FF3E4
/* 805FF3E0  3B DE FD 30 */	addi r30, r30, -720
lbl_805FF3E4:
/* 805FF3E4  7C 04 18 00 */	cmpw r4, r3
/* 805FF3E8  40 80 00 0C */	bge lbl_805FF3F4
/* 805FF3EC  7C 03 F0 00 */	cmpw r3, r30
/* 805FF3F0  40 81 00 1C */	ble lbl_805FF40C
lbl_805FF3F4:
/* 805FF3F4  7C 04 F0 00 */	cmpw r4, r30
/* 805FF3F8  40 81 00 44 */	ble lbl_805FF43C
/* 805FF3FC  7C 04 18 00 */	cmpw r4, r3
/* 805FF400  41 80 00 0C */	blt lbl_805FF40C
/* 805FF404  7C 03 F0 00 */	cmpw r3, r30
/* 805FF408  41 81 00 34 */	bgt lbl_805FF43C
lbl_805FF40C:
/* 805FF40C  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 805FF410  2C 00 00 00 */	cmpwi r0, 0
/* 805FF414  41 82 00 24 */	beq lbl_805FF438
/* 805FF418  38 00 00 00 */	li r0, 0
/* 805FF41C  7C 7E 1B 78 */	mr r30, r3
/* 805FF420  B0 1F 00 12 */	sth r0, 0x12(r31)
/* 805FF424  38 60 00 0A */	li r3, 0xa
/* 805FF428  48 02 EA FD */	bl sAdo_SysLevStop
/* 805FF42C  38 60 04 1B */	li r3, 0x41b
/* 805FF430  48 02 E8 D5 */	bl sAdo_SysTrgStart
/* 805FF434  48 00 00 08 */	b lbl_805FF43C
lbl_805FF438:
/* 805FF438  7C 9E 23 78 */	mr r30, r4
lbl_805FF43C:
/* 805FF43C  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 805FF440  2C 00 00 00 */	cmpwi r0, 0
/* 805FF444  40 82 00 0C */	bne lbl_805FF450
/* 805FF448  38 00 00 01 */	li r0, 1
/* 805FF44C  90 1F 00 1C */	stw r0, 0x1c(r31)
lbl_805FF450:
/* 805FF450  B3 DF 00 10 */	sth r30, 0x10(r31)
/* 805FF454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FF458  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805FF45C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805FF460  7C 08 03 A6 */	mtlr r0
/* 805FF464  38 21 00 10 */	addi r1, r1, 0x10
/* 805FF468  4E 80 00 20 */	blr 
