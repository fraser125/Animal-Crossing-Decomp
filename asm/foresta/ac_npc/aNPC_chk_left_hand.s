lbl_8052DC18:
/* 8052DC18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052DC1C  7C 08 02 A6 */	mflr r0
/* 8052DC20  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052DC24  39 61 00 20 */	addi r11, r1, 0x20
/* 8052DC28  4B B6 D2 AD */	bl func_8009AED4
/* 8052DC2C  7C 7D 1B 78 */	mr r29, r3
/* 8052DC30  38 60 00 01 */	li r3, 1
/* 8052DC34  88 1D 08 7D */	lbz r0, 0x87d(r29)
/* 8052DC38  28 00 00 00 */	cmplwi r0, 0
/* 8052DC3C  41 82 00 B0 */	beq lbl_8052DCEC
/* 8052DC40  88 1D 08 98 */	lbz r0, 0x898(r29)
/* 8052DC44  2C 00 00 02 */	cmpwi r0, 2
/* 8052DC48  40 80 00 90 */	bge lbl_8052DCD8
/* 8052DC4C  2C 00 00 00 */	cmpwi r0, 0
/* 8052DC50  40 80 00 08 */	bge lbl_8052DC58
/* 8052DC54  48 00 00 84 */	b lbl_8052DCD8
lbl_8052DC58:
/* 8052DC58  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8052DC5C  7F A6 EB 78 */	mr r6, r29
/* 8052DC60  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8052DC64  A0 7D 08 7E */	lhz r3, 0x87e(r29)
/* 8052DC68  3F C4 00 02 */	addis r30, r4, 2
/* 8052DC6C  88 9D 08 80 */	lbz r4, 0x880(r29)
/* 8052DC70  80 FE 60 94 */	lwz r7, 0x6094(r30)
/* 8052DC74  88 BD 08 81 */	lbz r5, 0x881(r29)
/* 8052DC78  81 87 00 00 */	lwz r12, 0(r7)
/* 8052DC7C  7D 89 03 A6 */	mtctr r12
/* 8052DC80  4E 80 04 21 */	bctrl 
/* 8052DC84  7C 7F 1B 79 */	or. r31, r3, r3
/* 8052DC88  41 82 00 60 */	beq lbl_8052DCE8
/* 8052DC8C  80 BE 60 94 */	lwz r5, 0x6094(r30)
/* 8052DC90  7F A3 EB 78 */	mr r3, r29
/* 8052DC94  38 80 00 01 */	li r4, 1
/* 8052DC98  81 85 00 08 */	lwz r12, 8(r5)
/* 8052DC9C  7D 89 03 A6 */	mtctr r12
/* 8052DCA0  4E 80 04 21 */	bctrl 
/* 8052DCA4  38 00 00 00 */	li r0, 0
/* 8052DCA8  3C 60 80 6A */	lis r3, data_806A1400@ha /* 0x806A1400@ha */
/* 8052DCAC  98 1D 08 7D */	stb r0, 0x87d(r29)
/* 8052DCB0  38 00 00 04 */	li r0, 4
/* 8052DCB4  38 E3 14 00 */	addi r7, r3, data_806A1400@l /* 0x806A1400@l */
/* 8052DCB8  7F A3 EB 78 */	mr r3, r29
/* 8052DCBC  98 1D 08 7C */	stb r0, 0x87c(r29)
/* 8052DCC0  38 80 00 04 */	li r4, 4
/* 8052DCC4  38 A0 00 11 */	li r5, 0x11
/* 8052DCC8  38 C0 00 00 */	li r6, 0
/* 8052DCCC  93 FD 08 84 */	stw r31, 0x884(r29)
/* 8052DCD0  48 00 39 2D */	bl aNPC_set_request_act
/* 8052DCD4  48 00 00 14 */	b lbl_8052DCE8
lbl_8052DCD8:
/* 8052DCD8  38 00 00 03 */	li r0, 3
/* 8052DCDC  7F A3 EB 78 */	mr r3, r29
/* 8052DCE0  98 1D 08 99 */	stb r0, 0x899(r29)
/* 8052DCE4  4B FF FE 81 */	bl aNPC_chk_right_hand
lbl_8052DCE8:
/* 8052DCE8  38 60 00 00 */	li r3, 0
lbl_8052DCEC:
/* 8052DCEC  39 61 00 20 */	addi r11, r1, 0x20
/* 8052DCF0  4B B6 D2 31 */	bl func_8009AF20
/* 8052DCF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052DCF8  7C 08 03 A6 */	mtlr r0
/* 8052DCFC  38 21 00 20 */	addi r1, r1, 0x20
/* 8052DD00  4E 80 00 20 */	blr 
