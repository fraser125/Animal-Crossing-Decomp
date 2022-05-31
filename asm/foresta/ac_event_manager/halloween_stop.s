lbl_8041EEC8:
/* 8041EEC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041EECC  7C 08 02 A6 */	mflr r0
/* 8041EED0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041EED4  39 61 00 20 */	addi r11, r1, 0x20
/* 8041EED8  4B C7 BF FD */	bl func_8009AED4
/* 8041EEDC  7C 9E 23 78 */	mr r30, r4
/* 8041EEE0  7C 7D 1B 78 */	mr r29, r3
/* 8041EEE4  80 64 00 00 */	lwz r3, 0(r4)
/* 8041EEE8  3B E0 00 02 */	li r31, 2
/* 8041EEEC  4B F7 ED 01 */	bl mEv_check_keep
/* 8041EEF0  2C 03 00 00 */	cmpwi r3, 0
/* 8041EEF4  41 82 00 34 */	beq lbl_8041EF28
/* 8041EEF8  80 9E 00 00 */	lwz r4, 0(r30)
/* 8041EEFC  7F A3 EB 78 */	mr r3, r29
/* 8041EF00  38 A0 00 09 */	li r5, 9
/* 8041EF04  38 C0 00 00 */	li r6, 0
/* 8041EF08  4B FF EB 75 */	bl title_fade
/* 8041EF0C  2C 03 00 00 */	cmpwi r3, 0
/* 8041EF10  41 82 00 14 */	beq lbl_8041EF24
/* 8041EF14  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041EF18  4B F7 EC A1 */	bl mEv_clear_keep
/* 8041EF1C  3B E0 00 01 */	li r31, 1
/* 8041EF20  48 00 00 08 */	b lbl_8041EF28
lbl_8041EF24:
/* 8041EF24  3B E0 00 00 */	li r31, 0
lbl_8041EF28:
/* 8041EF28  3C 60 81 1D */	lis r3, dpppp@ha /* 0x811CB964@ha */
/* 8041EF2C  38 00 00 00 */	li r0, 0
/* 8041EF30  38 83 B9 64 */	addi r4, r3, dpppp@l /* 0x811CB964@l */
/* 8041EF34  7F E3 FB 78 */	mr r3, r31
/* 8041EF38  90 04 00 00 */	stw r0, 0(r4)
/* 8041EF3C  39 61 00 20 */	addi r11, r1, 0x20
/* 8041EF40  4B C7 BF E1 */	bl func_8009AF20
/* 8041EF44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041EF48  7C 08 03 A6 */	mtlr r0
/* 8041EF4C  38 21 00 20 */	addi r1, r1, 0x20
/* 8041EF50  4E 80 00 20 */	blr 
