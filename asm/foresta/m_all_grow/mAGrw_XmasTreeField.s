lbl_80373CFC:
/* 80373CFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80373D00  7C 08 02 A6 */	mflr r0
/* 80373D04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80373D08  39 61 00 20 */	addi r11, r1, 0x20
/* 80373D0C  4B D2 71 C5 */	bl func_8009AED0
/* 80373D10  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80373D14  3C 80 80 65 */	lis r4, xmas_proc@ha /* 0x8064D4E8@ha */
/* 80373D18  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80373D1C  54 7E 10 3A */	slwi r30, r3, 2
/* 80373D20  3F A5 00 01 */	addis r29, r5, 1
/* 80373D24  3B E4 D4 E8 */	addi r31, r4, xmas_proc@l /* 0x8064D4E8@l */
/* 80373D28  3B 80 00 00 */	li r28, 0
/* 80373D2C  3B BD 37 A8 */	addi r29, r29, 0x37a8
lbl_80373D30:
/* 80373D30  7D 9F F0 2E */	lwzx r12, r31, r30
/* 80373D34  7F A3 EB 78 */	mr r3, r29
/* 80373D38  7D 89 03 A6 */	mtctr r12
/* 80373D3C  4E 80 04 21 */	bctrl 
/* 80373D40  3B 9C 00 01 */	addi r28, r28, 1
/* 80373D44  3B BD 02 00 */	addi r29, r29, 0x200
/* 80373D48  2C 1C 00 1E */	cmpwi r28, 0x1e
/* 80373D4C  41 80 FF E4 */	blt lbl_80373D30
/* 80373D50  39 61 00 20 */	addi r11, r1, 0x20
/* 80373D54  4B D2 71 C9 */	bl func_8009AF1C
/* 80373D58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80373D5C  7C 08 03 A6 */	mtlr r0
/* 80373D60  38 21 00 20 */	addi r1, r1, 0x20
/* 80373D64  4E 80 00 20 */	blr 
