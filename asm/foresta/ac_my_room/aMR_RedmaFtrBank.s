lbl_80473658:
/* 80473658  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047365C  7C 08 02 A6 */	mflr r0
/* 80473660  90 01 00 24 */	stw r0, 0x24(r1)
/* 80473664  39 61 00 20 */	addi r11, r1, 0x20
/* 80473668  4B C2 78 6D */	bl func_8009AED4
/* 8047366C  3C 60 81 1D */	lis r3, l_bank_index_table@ha /* 0x811CDFF4@ha */
/* 80473670  3B C0 00 00 */	li r30, 0
/* 80473674  3B E3 DF F4 */	addi r31, r3, l_bank_index_table@l /* 0x811CDFF4@l */
lbl_80473678:
/* 80473678  88 7F 00 00 */	lbz r3, 0(r31)
/* 8047367C  28 03 00 FF */	cmplwi r3, 0xff
/* 80473680  41 82 00 30 */	beq lbl_804736B0
/* 80473684  4B FF D7 29 */	bl aMR_BankNo2BankAddress
/* 80473688  7C 60 1B 78 */	mr r0, r3
/* 8047368C  7F C3 F3 78 */	mr r3, r30
/* 80473690  7C 1D 03 78 */	mr r29, r0
/* 80473694  38 80 00 00 */	li r4, 0
/* 80473698  4B F7 41 3D */	bl mRmTp_FtrIdx2FtrItemNo
/* 8047369C  7C 64 1B 78 */	mr r4, r3
/* 804736A0  7F A5 EB 78 */	mr r5, r29
/* 804736A4  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 804736A8  38 C0 FF FF */	li r6, -1
/* 804736AC  4B FF EA 5D */	bl aMR_DmaFurniture_Common
lbl_804736B0:
/* 804736B0  3B DE 00 01 */	addi r30, r30, 1
/* 804736B4  3B FF 00 01 */	addi r31, r31, 1
/* 804736B8  2C 1E 04 F2 */	cmpwi r30, 0x4f2
/* 804736BC  41 80 FF BC */	blt lbl_80473678
/* 804736C0  39 61 00 20 */	addi r11, r1, 0x20
/* 804736C4  4B C2 78 5D */	bl func_8009AF20
/* 804736C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804736CC  7C 08 03 A6 */	mtlr r0
/* 804736D0  38 21 00 20 */	addi r1, r1, 0x20
/* 804736D4  4E 80 00 20 */	blr 
