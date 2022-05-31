lbl_8052BEB8:
/* 8052BEB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052BEBC  7C 08 02 A6 */	mflr r0
/* 8052BEC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052BEC4  39 61 00 20 */	addi r11, r1, 0x20
/* 8052BEC8  4B B6 F0 0D */	bl func_8009AED4
/* 8052BECC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8052BED0  7C 7D 1B 78 */	mr r29, r3
/* 8052BED4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8052BED8  7C 9E 23 78 */	mr r30, r4
/* 8052BEDC  3F E5 00 02 */	addis r31, r5, 2
/* 8052BEE0  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8052BEE4  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8052BEE8  7D 89 03 A6 */	mtctr r12
/* 8052BEEC  4E 80 04 21 */	bctrl 
/* 8052BEF0  2C 03 00 01 */	cmpwi r3, 1
/* 8052BEF4  40 82 00 24 */	bne lbl_8052BF18
/* 8052BEF8  80 9F 60 4C */	lwz r4, 0x604c(r31)
/* 8052BEFC  3C 60 80 6A */	lis r3, ct_data@ha /* 0x806A13E4@ha */
/* 8052BF00  38 A3 13 E4 */	addi r5, r3, ct_data@l /* 0x806A13E4@l */
/* 8052BF04  81 84 00 D0 */	lwz r12, 0xd0(r4)
/* 8052BF08  7F A3 EB 78 */	mr r3, r29
/* 8052BF0C  7F C4 F3 78 */	mr r4, r30
/* 8052BF10  7D 89 03 A6 */	mtctr r12
/* 8052BF14  4E 80 04 21 */	bctrl 
lbl_8052BF18:
/* 8052BF18  39 61 00 20 */	addi r11, r1, 0x20
/* 8052BF1C  4B B6 F0 05 */	bl func_8009AF20
/* 8052BF20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052BF24  7C 08 03 A6 */	mtlr r0
/* 8052BF28  38 21 00 20 */	addi r1, r1, 0x20
/* 8052BF2C  4E 80 00 20 */	blr 
