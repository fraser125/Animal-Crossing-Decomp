lbl_80510CE8:
/* 80510CE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80510CEC  7C 08 02 A6 */	mflr r0
/* 80510CF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80510CF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80510CF8  7C 9F 23 78 */	mr r31, r4
/* 80510CFC  80 04 00 38 */	lwz r0, 0x38(r4)
/* 80510D00  38 80 00 00 */	li r4, 0
/* 80510D04  2C 00 00 01 */	cmpwi r0, 1
/* 80510D08  40 82 00 2C */	bne lbl_80510D34
/* 80510D0C  A0 83 00 00 */	lhz r4, 0(r3)
/* 80510D10  38 7F 00 40 */	addi r3, r31, 0x40
/* 80510D14  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 80510D18  4B EB 63 01 */	bl mMsm_RecordDepositFossil
/* 80510D1C  7C 64 1B 78 */	mr r4, r3
/* 80510D20  2C 04 00 01 */	cmpwi r4, 1
/* 80510D24  40 82 00 10 */	bne lbl_80510D34
/* 80510D28  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80510D2C  38 03 00 01 */	addi r0, r3, 1
/* 80510D30  90 1F 00 44 */	stw r0, 0x44(r31)
lbl_80510D34:
/* 80510D34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80510D38  7C 83 23 78 */	mr r3, r4
/* 80510D3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80510D40  7C 08 03 A6 */	mtlr r0
/* 80510D44  38 21 00 10 */	addi r1, r1, 0x10
/* 80510D48  4E 80 00 20 */	blr 
