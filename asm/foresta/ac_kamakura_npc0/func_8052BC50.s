lbl_8052BC50:
/* 8052BC50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052BC54  7C 08 02 A6 */	mflr r0
/* 8052BC58  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052BC5C  39 61 00 20 */	addi r11, r1, 0x20
/* 8052BC60  4B B6 F2 75 */	bl func_8009AED4
/* 8052BC64  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8052BC68  7C 7D 1B 78 */	mr r29, r3
/* 8052BC6C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8052BC70  7C 9E 23 78 */	mr r30, r4
/* 8052BC74  3F E5 00 02 */	addis r31, r5, 2
/* 8052BC78  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8052BC7C  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8052BC80  7D 89 03 A6 */	mtctr r12
/* 8052BC84  4E 80 04 21 */	bctrl 
/* 8052BC88  2C 03 00 01 */	cmpwi r3, 1
/* 8052BC8C  40 82 00 38 */	bne lbl_8052BCC4
/* 8052BC90  80 9F 60 4C */	lwz r4, 0x604c(r31)
/* 8052BC94  3C 60 80 6A */	lis r3, ct_data@ha /* 0x806A13A4@ha */
/* 8052BC98  38 A3 13 A4 */	addi r5, r3, ct_data@l /* 0x806A13A4@l */
/* 8052BC9C  81 84 00 D0 */	lwz r12, 0xd0(r4)
/* 8052BCA0  7F A3 EB 78 */	mr r3, r29
/* 8052BCA4  7F C4 F3 78 */	mr r4, r30
/* 8052BCA8  7D 89 03 A6 */	mtctr r12
/* 8052BCAC  4E 80 04 21 */	bctrl 
/* 8052BCB0  80 9F 60 4C */	lwz r4, 0x604c(r31)
/* 8052BCB4  7F A3 EB 78 */	mr r3, r29
/* 8052BCB8  81 84 01 28 */	lwz r12, 0x128(r4)
/* 8052BCBC  7D 89 03 A6 */	mtctr r12
/* 8052BCC0  4E 80 04 21 */	bctrl 
lbl_8052BCC4:
/* 8052BCC4  39 61 00 20 */	addi r11, r1, 0x20
/* 8052BCC8  4B B6 F2 59 */	bl func_8009AF20
/* 8052BCCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052BCD0  7C 08 03 A6 */	mtlr r0
/* 8052BCD4  38 21 00 20 */	addi r1, r1, 0x20
/* 8052BCD8  4E 80 00 20 */	blr 
