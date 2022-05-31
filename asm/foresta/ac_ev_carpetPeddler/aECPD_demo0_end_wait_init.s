lbl_8051C76C:
/* 8051C76C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051C770  7C 08 02 A6 */	mflr r0
/* 8051C774  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051C778  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051C77C  7C 7F 1B 78 */	mr r31, r3
/* 8051C780  80 A4 1F 60 */	lwz r5, 0x1f60(r4)
/* 8051C784  A0 65 00 00 */	lhz r3, 0(r5)
/* 8051C788  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8051C78C  2C 00 00 02 */	cmpwi r0, 2
/* 8051C790  40 82 00 5C */	bne lbl_8051C7EC
/* 8051C794  54 60 C7 3E */	rlwinm r0, r3, 0x18, 0x1c, 0x1f
/* 8051C798  2C 00 00 06 */	cmpwi r0, 6
/* 8051C79C  40 82 00 50 */	bne lbl_8051C7EC
/* 8051C7A0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051C7A4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051C7A8  3C 83 00 02 */	addis r4, r3, 2
/* 8051C7AC  80 C4 04 A4 */	lwz r6, 0x4a4(r4)
/* 8051C7B0  38 C6 00 01 */	addi r6, r6, 1
/* 8051C7B4  2C 06 00 04 */	cmpwi r6, 4
/* 8051C7B8  40 81 00 08 */	ble lbl_8051C7C0
/* 8051C7BC  38 C0 00 04 */	li r6, 4
lbl_8051C7C0:
/* 8051C7C0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051C7C4  90 C4 04 A4 */	stw r6, 0x4a4(r4)
/* 8051C7C8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051C7CC  38 C0 00 00 */	li r6, 0
/* 8051C7D0  3C 63 00 02 */	addis r3, r3, 2
/* 8051C7D4  88 85 00 02 */	lbz r4, 2(r5)
/* 8051C7D8  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8051C7DC  A0 BF 09 A8 */	lhz r5, 0x9a8(r31)
/* 8051C7E0  4B EC 46 49 */	bl mPr_SetPossessionItem
/* 8051C7E4  80 7F 09 A4 */	lwz r3, 0x9a4(r31)
/* 8051C7E8  4B EC E9 39 */	bl mSP_get_sell_price
lbl_8051C7EC:
/* 8051C7EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C7F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051C7F4  7C 08 03 A6 */	mtlr r0
/* 8051C7F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C7FC  4E 80 00 20 */	blr 
