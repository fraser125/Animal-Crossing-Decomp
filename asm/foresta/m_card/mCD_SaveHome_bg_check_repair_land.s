lbl_803FC974:
/* 803FC974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FC978  7C 08 02 A6 */	mflr r0
/* 803FC97C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FC980  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803FC984  7C 9F 23 78 */	mr r31, r4
/* 803FC988  93 C1 00 08 */	stw r30, 8(r1)
/* 803FC98C  7C 7E 1B 78 */	mr r30, r3
/* 803FC990  4B FF FD F5 */	bl mCD_check_broken_land
/* 803FC994  2C 03 00 01 */	cmpwi r3, 1
/* 803FC998  40 82 00 30 */	bne lbl_803FC9C8
/* 803FC99C  7F C3 F3 78 */	mr r3, r30
/* 803FC9A0  4B FF FE C9 */	bl mCD_repair_load_land
/* 803FC9A4  2C 03 00 01 */	cmpwi r3, 1
/* 803FC9A8  40 82 00 14 */	bne lbl_803FC9BC
/* 803FC9AC  80 7F 00 00 */	lwz r3, 0(r31)
/* 803FC9B0  38 03 00 01 */	addi r0, r3, 1
/* 803FC9B4  90 1F 00 00 */	stw r0, 0(r31)
/* 803FC9B8  48 00 00 18 */	b lbl_803FC9D0
lbl_803FC9BC:
/* 803FC9BC  38 00 00 09 */	li r0, 9
/* 803FC9C0  90 1F 00 00 */	stw r0, 0(r31)
/* 803FC9C4  48 00 00 0C */	b lbl_803FC9D0
lbl_803FC9C8:
/* 803FC9C8  38 00 00 09 */	li r0, 9
/* 803FC9CC  90 1F 00 00 */	stw r0, 0(r31)
lbl_803FC9D0:
/* 803FC9D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FC9D4  38 60 00 01 */	li r3, 1
/* 803FC9D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803FC9DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803FC9E0  7C 08 03 A6 */	mtlr r0
/* 803FC9E4  38 21 00 10 */	addi r1, r1, 0x10
/* 803FC9E8  4E 80 00 20 */	blr 
