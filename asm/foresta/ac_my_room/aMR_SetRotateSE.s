lbl_8047EEBC:
/* 8047EEBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047EEC0  7C 08 02 A6 */	mflr r0
/* 8047EEC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047EEC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047EECC  7C 7F 1B 78 */	mr r31, r3
/* 8047EED0  4B F2 5D FD */	bl mFI_GetFieldId
/* 8047EED4  54 60 04 26 */	rlwinm r0, r3, 0, 0x10, 0x13
/* 8047EED8  2C 00 60 00 */	cmpwi r0, 0x6000
/* 8047EEDC  40 82 00 10 */	bne lbl_8047EEEC
/* 8047EEE0  38 9F 00 08 */	addi r4, r31, 8
/* 8047EEE4  38 60 04 1A */	li r3, 0x41a
/* 8047EEE8  48 1A F0 C1 */	bl sAdo_OngenTrgStart
lbl_8047EEEC:
/* 8047EEEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047EEF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047EEF4  7C 08 03 A6 */	mtlr r0
/* 8047EEF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8047EEFC  4E 80 00 20 */	blr 
