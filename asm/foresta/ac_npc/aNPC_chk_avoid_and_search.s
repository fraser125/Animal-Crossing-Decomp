lbl_8052FB78:
/* 8052FB78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8052FB7C  7C 08 02 A6 */	mflr r0
/* 8052FB80  90 01 00 34 */	stw r0, 0x34(r1)
/* 8052FB84  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8052FB88  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8052FB8C  7C 7E 1B 78 */	mr r30, r3
/* 8052FB90  7C 83 23 78 */	mr r3, r4
/* 8052FB94  4B EA 9A AD */	bl get_player_actor_withoutCheck
/* 8052FB98  28 03 00 00 */	cmplwi r3, 0
/* 8052FB9C  3B E0 00 00 */	li r31, 0
/* 8052FBA0  41 82 00 90 */	beq lbl_8052FC30
/* 8052FBA4  80 C3 00 28 */	lwz r6, 0x28(r3)
/* 8052FBA8  38 81 00 08 */	addi r4, r1, 8
/* 8052FBAC  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 8052FBB0  38 A1 00 10 */	addi r5, r1, 0x10
/* 8052FBB4  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8052FBB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052FBBC  80 03 00 30 */	lwz r0, 0x30(r3)
/* 8052FBC0  38 61 00 0C */	addi r3, r1, 0xc
/* 8052FBC4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8052FBC8  4B E7 5B 99 */	bl mFI_Wpos2BlockNum
/* 8052FBCC  2C 03 00 01 */	cmpwi r3, 1
/* 8052FBD0  40 82 00 60 */	bne lbl_8052FC30
/* 8052FBD4  88 1E 00 08 */	lbz r0, 8(r30)
/* 8052FBD8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8052FBDC  7C 00 07 74 */	extsb r0, r0
/* 8052FBE0  7C 03 00 00 */	cmpw r3, r0
/* 8052FBE4  40 82 00 4C */	bne lbl_8052FC30
/* 8052FBE8  88 1E 00 09 */	lbz r0, 9(r30)
/* 8052FBEC  80 61 00 08 */	lwz r3, 8(r1)
/* 8052FBF0  7C 00 07 74 */	extsb r0, r0
/* 8052FBF4  7C 03 00 00 */	cmpw r3, r0
/* 8052FBF8  40 82 00 38 */	bne lbl_8052FC30
/* 8052FBFC  80 7E 08 60 */	lwz r3, 0x860(r30)
/* 8052FC00  28 03 00 00 */	cmplwi r3, 0
/* 8052FC04  41 82 00 2C */	beq lbl_8052FC30
/* 8052FC08  88 63 00 00 */	lbz r3, 0(r3)
/* 8052FC0C  80 1E 08 64 */	lwz r0, 0x864(r30)
/* 8052FC10  7C 63 07 74 */	extsb r3, r3
/* 8052FC14  7C 03 02 15 */	add. r0, r3, r0
/* 8052FC18  40 80 00 0C */	bge lbl_8052FC24
/* 8052FC1C  3B E0 00 01 */	li r31, 1
/* 8052FC20  48 00 00 10 */	b lbl_8052FC30
lbl_8052FC24:
/* 8052FC24  2C 00 00 80 */	cmpwi r0, 0x80
/* 8052FC28  40 81 00 08 */	ble lbl_8052FC30
/* 8052FC2C  3B E0 00 02 */	li r31, 2
lbl_8052FC30:
/* 8052FC30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8052FC34  7F E3 FB 78 */	mr r3, r31
/* 8052FC38  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8052FC3C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8052FC40  7C 08 03 A6 */	mtlr r0
/* 8052FC44  38 21 00 30 */	addi r1, r1, 0x30
/* 8052FC48  4E 80 00 20 */	blr 
