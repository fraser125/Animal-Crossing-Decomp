lbl_8049199C:
/* 8049199C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804919A0  7C 08 02 A6 */	mflr r0
/* 804919A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804919A8  39 61 00 20 */	addi r11, r1, 0x20
/* 804919AC  4B C0 95 25 */	bl func_8009AED0
/* 804919B0  80 83 01 78 */	lwz r4, 0x178(r3)
/* 804919B4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804919B8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804919BC  3B 80 00 00 */	li r28, 0
/* 804919C0  80 84 00 00 */	lwz r4, 0(r4)
/* 804919C4  3F C3 00 01 */	addis r30, r3, 1
/* 804919C8  3B A0 00 00 */	li r29, 0
/* 804919CC  83 E4 01 7C */	lwz r31, 0x17c(r4)
/* 804919D0  3B DE 74 38 */	addi r30, r30, 0x7438
lbl_804919D4:
/* 804919D4  7F C3 F3 78 */	mr r3, r30
/* 804919D8  7F E4 FB 78 */	mr r4, r31
/* 804919DC  4B F3 9A 95 */	bl mNpc_CheckCmpAnimalPersonalID
/* 804919E0  2C 03 00 01 */	cmpwi r3, 1
/* 804919E4  41 82 00 14 */	beq lbl_804919F8
/* 804919E8  3B BD 00 01 */	addi r29, r29, 1
/* 804919EC  3B DE 09 88 */	addi r30, r30, 0x988
/* 804919F0  2C 1D 00 0F */	cmpwi r29, 0xf
/* 804919F4  41 80 FF E0 */	blt lbl_804919D4
lbl_804919F8:
/* 804919F8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804919FC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80491A00  88 03 00 19 */	lbz r0, 0x19(r3)
/* 80491A04  7C 1D 00 00 */	cmpw r29, r0
/* 80491A08  40 82 00 08 */	bne lbl_80491A10
/* 80491A0C  3B 80 00 01 */	li r28, 1
lbl_80491A10:
/* 80491A10  7F 83 E3 78 */	mr r3, r28
/* 80491A14  39 61 00 20 */	addi r11, r1, 0x20
/* 80491A18  4B C0 95 05 */	bl func_8009AF1C
/* 80491A1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80491A20  7C 08 03 A6 */	mtlr r0
/* 80491A24  38 21 00 20 */	addi r1, r1, 0x20
/* 80491A28  4E 80 00 20 */	blr 
