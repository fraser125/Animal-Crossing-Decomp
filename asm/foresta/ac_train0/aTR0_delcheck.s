lbl_805C0240:
/* 805C0240  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805C0244  7C 08 02 A6 */	mflr r0
/* 805C0248  90 01 00 34 */	stw r0, 0x34(r1)
/* 805C024C  38 A1 00 10 */	addi r5, r1, 0x10
/* 805C0250  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805C0254  7C 9F 23 78 */	mr r31, r4
/* 805C0258  38 81 00 08 */	addi r4, r1, 8
/* 805C025C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805C0260  7C 7E 1B 78 */	mr r30, r3
/* 805C0264  80 C3 00 28 */	lwz r6, 0x28(r3)
/* 805C0268  38 61 00 0C */	addi r3, r1, 0xc
/* 805C026C  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805C0270  90 C1 00 10 */	stw r6, 0x10(r1)
/* 805C0274  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C0278  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805C027C  90 01 00 18 */	stw r0, 0x18(r1)
/* 805C0280  4B DE 54 E1 */	bl mFI_Wpos2BlockNum
/* 805C0284  88 7F 00 E4 */	lbz r3, 0xe4(r31)
/* 805C0288  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805C028C  7C 63 07 74 */	extsb r3, r3
/* 805C0290  7C 63 00 51 */	subf. r3, r3, r0
/* 805C0294  90 61 00 0C */	stw r3, 0xc(r1)
/* 805C0298  7C 03 00 D0 */	neg r0, r3
/* 805C029C  41 80 00 08 */	blt lbl_805C02A4
/* 805C02A0  7C 60 1B 78 */	mr r0, r3
lbl_805C02A4:
/* 805C02A4  2C 00 00 02 */	cmpwi r0, 2
/* 805C02A8  40 80 00 24 */	bge lbl_805C02CC
/* 805C02AC  88 1F 00 E5 */	lbz r0, 0xe5(r31)
/* 805C02B0  80 61 00 08 */	lwz r3, 8(r1)
/* 805C02B4  7C 00 07 74 */	extsb r0, r0
/* 805C02B8  7C 03 00 00 */	cmpw r3, r0
/* 805C02BC  40 82 00 10 */	bne lbl_805C02CC
/* 805C02C0  80 1E 02 B4 */	lwz r0, 0x2b4(r30)
/* 805C02C4  2C 00 00 00 */	cmpwi r0, 0
/* 805C02C8  40 82 00 24 */	bne lbl_805C02EC
lbl_805C02CC:
/* 805C02CC  80 7E 02 C4 */	lwz r3, 0x2c4(r30)
/* 805C02D0  2C 03 00 00 */	cmpwi r3, 0
/* 805C02D4  41 82 00 08 */	beq lbl_805C02DC
/* 805C02D8  4B DB 41 69 */	bl Actor_delete
lbl_805C02DC:
/* 805C02DC  80 7E 01 50 */	lwz r3, 0x150(r30)
/* 805C02E0  4B DB 41 61 */	bl Actor_delete
/* 805C02E4  7F C3 F3 78 */	mr r3, r30
/* 805C02E8  4B DB 41 59 */	bl Actor_delete
lbl_805C02EC:
/* 805C02EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805C02F0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805C02F4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805C02F8  7C 08 03 A6 */	mtlr r0
/* 805C02FC  38 21 00 30 */	addi r1, r1, 0x30
/* 805C0300  4E 80 00 20 */	blr 
