lbl_8049FC5C:
/* 8049FC5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049FC60  7C 08 02 A6 */	mflr r0
/* 8049FC64  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049FC68  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049FC6C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8049FC70  3C 60 20 00 */	lis r3, 0x2000
/* 8049FC74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8049FC78  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8049FC7C  7C BE 2B 78 */	mr r30, r5
/* 8049FC80  3C A4 00 02 */	addis r5, r4, 2
/* 8049FC84  80 85 61 20 */	lwz r4, 0x6120(r5)
/* 8049FC88  80 05 61 24 */	lwz r0, 0x6124(r5)
/* 8049FC8C  90 81 00 08 */	stw r4, 8(r1)
/* 8049FC90  90 01 00 0C */	stw r0, 0xc(r1)
/* 8049FC94  8B E1 00 0A */	lbz r31, 0xa(r1)
/* 8049FC98  4B EF AD 81 */	bl mEv_CheckEvent
/* 8049FC9C  2C 03 00 00 */	cmpwi r3, 0
/* 8049FCA0  40 82 00 48 */	bne lbl_8049FCE8
/* 8049FCA4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049FCA8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049FCAC  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8049FCB0  2C 00 00 07 */	cmpwi r0, 7
/* 8049FCB4  40 82 00 34 */	bne lbl_8049FCE8
/* 8049FCB8  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8049FCBC  7C 1F 00 40 */	cmplw r31, r0
/* 8049FCC0  41 80 00 28 */	blt lbl_8049FCE8
/* 8049FCC4  4B F4 94 E1 */	bl mSP_CheckExchangeDay2
/* 8049FCC8  2C 03 00 00 */	cmpwi r3, 0
/* 8049FCCC  41 82 00 1C */	beq lbl_8049FCE8
/* 8049FCD0  4B F4 95 25 */	bl mSP_CheckExchangeMonth
/* 8049FCD4  2C 03 00 00 */	cmpwi r3, 0
/* 8049FCD8  41 82 00 08 */	beq lbl_8049FCE0
/* 8049FCDC  4B F4 A2 F9 */	bl mSP_LotteryLineUp_ZeldaMalloc
lbl_8049FCE0:
/* 8049FCE0  4B F4 95 65 */	bl mSP_NewExchangeDay
/* 8049FCE4  4B F4 A2 C5 */	bl mSP_ExchangeLineUp_ZeldaMalloc
lbl_8049FCE8:
/* 8049FCE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049FCEC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8049FCF0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8049FCF4  7C 08 03 A6 */	mtlr r0
/* 8049FCF8  38 21 00 20 */	addi r1, r1, 0x20
/* 8049FCFC  4E 80 00 20 */	blr 
