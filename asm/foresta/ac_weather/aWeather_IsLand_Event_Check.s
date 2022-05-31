lbl_80601D18:
/* 80601D18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80601D1C  7C 08 02 A6 */	mflr r0
/* 80601D20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80601D24  4B DA 96 79 */	bl mFI_CheckBeforeScenePerpetual
/* 80601D28  2C 03 00 00 */	cmpwi r3, 0
/* 80601D2C  40 82 00 10 */	bne lbl_80601D3C
/* 80601D30  4B DA 95 F9 */	bl mFI_GetClimate
/* 80601D34  2C 03 00 01 */	cmpwi r3, 1
/* 80601D38  40 82 00 34 */	bne lbl_80601D6C
lbl_80601D3C:
/* 80601D3C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80601D40  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80601D44  3C 64 00 02 */	addis r3, r4, 2
/* 80601D48  88 03 0F 19 */	lbz r0, 0xf19(r3)
/* 80601D4C  3C 64 00 03 */	addis r3, r4, 3
/* 80601D50  A8 63 DB A2 */	lha r3, -0x245e(r3)
/* 80601D54  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 80601D58  7C 00 07 34 */	extsh r0, r0
/* 80601D5C  7C 03 00 00 */	cmpw r3, r0
/* 80601D60  41 82 00 0C */	beq lbl_80601D6C
/* 80601D64  38 60 00 01 */	li r3, 1
/* 80601D68  48 00 00 08 */	b lbl_80601D70
lbl_80601D6C:
/* 80601D6C  38 60 00 00 */	li r3, 0
lbl_80601D70:
/* 80601D70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80601D74  7C 08 03 A6 */	mtlr r0
/* 80601D78  38 21 00 10 */	addi r1, r1, 0x10
/* 80601D7C  4E 80 00 20 */	blr 
