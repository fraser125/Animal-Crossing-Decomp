lbl_8058EEB8:
/* 8058EEB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058EEBC  7C 08 02 A6 */	mflr r0
/* 8058EEC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058EEC4  39 61 00 20 */	addi r11, r1, 0x20
/* 8058EEC8  4B B0 C0 0D */	bl func_8009AED4
/* 8058EECC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8058EED0  7C 7D 1B 78 */	mr r29, r3
/* 8058EED4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8058EED8  7C 9E 23 78 */	mr r30, r4
/* 8058EEDC  3F E5 00 02 */	addis r31, r5, 2
/* 8058EEE0  38 A0 FF FF */	li r5, -1
/* 8058EEE4  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 8058EEE8  38 C0 00 01 */	li r6, 1
/* 8058EEEC  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8058EEF0  7D 89 03 A6 */	mtctr r12
/* 8058EEF4  4E 80 04 21 */	bctrl 
/* 8058EEF8  2C 03 00 00 */	cmpwi r3, 0
/* 8058EEFC  40 82 00 24 */	bne lbl_8058EF20
/* 8058EF00  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8058EF04  7F A3 EB 78 */	mr r3, r29
/* 8058EF08  7F C4 F3 78 */	mr r4, r30
/* 8058EF0C  38 A0 FF FF */	li r5, -1
/* 8058EF10  81 86 01 20 */	lwz r12, 0x120(r6)
/* 8058EF14  38 C0 00 02 */	li r6, 2
/* 8058EF18  7D 89 03 A6 */	mtctr r12
/* 8058EF1C  4E 80 04 21 */	bctrl 
lbl_8058EF20:
/* 8058EF20  39 61 00 20 */	addi r11, r1, 0x20
/* 8058EF24  4B B0 BF FD */	bl func_8009AF20
/* 8058EF28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058EF2C  7C 08 03 A6 */	mtlr r0
/* 8058EF30  38 21 00 20 */	addi r1, r1, 0x20
/* 8058EF34  4E 80 00 20 */	blr 
