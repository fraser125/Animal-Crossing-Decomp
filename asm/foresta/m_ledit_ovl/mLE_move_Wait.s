lbl_805E4D40:
/* 805E4D40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E4D44  7C 08 02 A6 */	mflr r0
/* 805E4D48  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E4D4C  39 61 00 20 */	addi r11, r1, 0x20
/* 805E4D50  4B AB 61 81 */	bl func_8009AED0
/* 805E4D54  7C 7D 1B 78 */	mr r29, r3
/* 805E4D58  7C 9C 23 78 */	mr r28, r4
/* 805E4D5C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805E4D60  83 FD 01 74 */	lwz r31, 0x174(r29)
/* 805E4D64  80 03 03 54 */	lwz r0, 0x354(r3)
/* 805E4D68  2C 00 00 04 */	cmpwi r0, 4
/* 805E4D6C  40 82 00 B4 */	bne lbl_805E4E20
/* 805E4D70  81 83 09 4C */	lwz r12, 0x94c(r3)
/* 805E4D74  7F 83 E3 78 */	mr r3, r28
/* 805E4D78  38 80 00 04 */	li r4, 4
/* 805E4D7C  7D 89 03 A6 */	mtctr r12
/* 805E4D80  4E 80 04 21 */	bctrl 
/* 805E4D84  80 1C 00 38 */	lwz r0, 0x38(r28)
/* 805E4D88  2C 00 00 04 */	cmpwi r0, 4
/* 805E4D8C  40 82 00 78 */	bne lbl_805E4E04
/* 805E4D90  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805E4D94  3C 60 81 21 */	lis r3, data_81212208@ha /* 0x81212208@ha */
/* 805E4D98  38 03 22 08 */	addi r0, r3, data_81212208@l /* 0x81212208@l */
/* 805E4D9C  83 C4 09 8C */	lwz r30, 0x98c(r4)
/* 805E4DA0  7C 1D 03 78 */	mr r29, r0
/* 805E4DA4  28 1E 00 00 */	cmplwi r30, 0
/* 805E4DA8  41 82 00 50 */	beq lbl_805E4DF8
/* 805E4DAC  3B 80 00 00 */	li r28, 0
lbl_805E4DB0:
/* 805E4DB0  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 805E4DB4  7F A3 EB 78 */	mr r3, r29
/* 805E4DB8  38 A0 00 10 */	li r5, 0x10
/* 805E4DBC  4B DD 5C A9 */	bl mem_cmp
/* 805E4DC0  2C 03 00 00 */	cmpwi r3, 0
/* 805E4DC4  41 82 00 10 */	beq lbl_805E4DD4
/* 805E4DC8  38 1C 2A 00 */	addi r0, r28, 0x2a00
/* 805E4DCC  B0 1F 00 00 */	sth r0, 0(r31)
/* 805E4DD0  48 00 00 14 */	b lbl_805E4DE4
lbl_805E4DD4:
/* 805E4DD4  3B 9C 00 01 */	addi r28, r28, 1
/* 805E4DD8  3B BD 00 10 */	addi r29, r29, 0x10
/* 805E4DDC  2C 1C 00 37 */	cmpwi r28, 0x37
/* 805E4DE0  41 80 FF D0 */	blt lbl_805E4DB0
lbl_805E4DE4:
/* 805E4DE4  2C 1C 00 37 */	cmpwi r28, 0x37
/* 805E4DE8  40 82 00 38 */	bne lbl_805E4E20
/* 805E4DEC  38 00 2A 37 */	li r0, 0x2a37
/* 805E4DF0  B0 1F 00 00 */	sth r0, 0(r31)
/* 805E4DF4  48 00 00 2C */	b lbl_805E4E20
lbl_805E4DF8:
/* 805E4DF8  38 00 2A 37 */	li r0, 0x2a37
/* 805E4DFC  B0 1F 00 00 */	sth r0, 0(r31)
/* 805E4E00  48 00 00 20 */	b lbl_805E4E20
lbl_805E4E04:
/* 805E4E04  2C 00 00 02 */	cmpwi r0, 2
/* 805E4E08  40 82 00 18 */	bne lbl_805E4E20
/* 805E4E0C  3C 80 81 21 */	lis r4, mLE_npc_end_word_edit@ha /* 0x81212578@ha */
/* 805E4E10  80 7C 00 40 */	lwz r3, 0x40(r28)
/* 805E4E14  38 84 25 78 */	addi r4, r4, mLE_npc_end_word_edit@l /* 0x81212578@l */
/* 805E4E18  38 A0 00 0A */	li r5, 0xa
/* 805E4E1C  4B DD 5C 09 */	bl func_803BAA24
lbl_805E4E20:
/* 805E4E20  39 61 00 20 */	addi r11, r1, 0x20
/* 805E4E24  4B AB 60 F9 */	bl func_8009AF1C
/* 805E4E28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E4E2C  7C 08 03 A6 */	mtlr r0
/* 805E4E30  38 21 00 20 */	addi r1, r1, 0x20
/* 805E4E34  4E 80 00 20 */	blr 
