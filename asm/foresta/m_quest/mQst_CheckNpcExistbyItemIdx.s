lbl_803E3344:
/* 803E3344  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E3348  7C 08 02 A6 */	mflr r0
/* 803E334C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E3350  39 61 00 20 */	addi r11, r1, 0x20
/* 803E3354  4B CB 7B 81 */	bl func_8009AED4
/* 803E3358  7C 7D 1B 79 */	or. r29, r3, r3
/* 803E335C  7C 9E 23 78 */	mr r30, r4
/* 803E3360  3B E0 00 00 */	li r31, 0
/* 803E3364  41 80 00 CC */	blt lbl_803E3430
/* 803E3368  2C 1D 00 0F */	cmpwi r29, 0xf
/* 803E336C  40 80 00 C4 */	bge lbl_803E3430
/* 803E3370  4B FF FA 31 */	bl mQst_GetDeliveryIdxbyItemIdx
/* 803E3374  2C 03 FF FF */	cmpwi r3, -1
/* 803E3378  41 82 00 58 */	beq lbl_803E33D0
/* 803E337C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E3380  2C 1E 00 00 */	cmpwi r30, 0
/* 803E3384  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E3388  1C 63 00 28 */	mulli r3, r3, 0x28
/* 803E338C  3C 84 00 02 */	addis r4, r4, 2
/* 803E3390  80 04 61 3C */	lwz r0, 0x613c(r4)
/* 803E3394  38 63 00 94 */	addi r3, r3, 0x94
/* 803E3398  7C 60 1A 14 */	add r3, r0, r3
/* 803E339C  40 82 00 1C */	bne lbl_803E33B8
/* 803E33A0  38 63 00 0C */	addi r3, r3, 0xc
/* 803E33A4  4B FE 93 E5 */	bl mNpc_SearchAnimalPersonalID
/* 803E33A8  2C 03 FF FF */	cmpwi r3, -1
/* 803E33AC  41 82 00 84 */	beq lbl_803E3430
/* 803E33B0  3B E0 00 01 */	li r31, 1
/* 803E33B4  48 00 00 7C */	b lbl_803E3430
lbl_803E33B8:
/* 803E33B8  38 63 00 1A */	addi r3, r3, 0x1a
/* 803E33BC  4B FE 93 CD */	bl mNpc_SearchAnimalPersonalID
/* 803E33C0  2C 03 FF FF */	cmpwi r3, -1
/* 803E33C4  41 82 00 6C */	beq lbl_803E3430
/* 803E33C8  3B E0 00 01 */	li r31, 1
/* 803E33CC  48 00 00 64 */	b lbl_803E3430
lbl_803E33D0:
/* 803E33D0  7F A3 EB 78 */	mr r3, r29
/* 803E33D4  4B FF FA 3D */	bl mQst_GetErrandIdxbyItemIdx
/* 803E33D8  2C 03 FF FF */	cmpwi r3, -1
/* 803E33DC  41 82 00 54 */	beq lbl_803E3430
/* 803E33E0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E33E4  2C 1E 00 00 */	cmpwi r30, 0
/* 803E33E8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E33EC  1C 63 00 58 */	mulli r3, r3, 0x58
/* 803E33F0  3C 84 00 02 */	addis r4, r4, 2
/* 803E33F4  80 04 61 3C */	lwz r0, 0x613c(r4)
/* 803E33F8  38 63 02 EC */	addi r3, r3, 0x2ec
/* 803E33FC  7C 60 1A 14 */	add r3, r0, r3
/* 803E3400  40 82 00 1C */	bne lbl_803E341C
/* 803E3404  38 63 00 0C */	addi r3, r3, 0xc
/* 803E3408  4B FE 93 81 */	bl mNpc_SearchAnimalPersonalID
/* 803E340C  2C 03 FF FF */	cmpwi r3, -1
/* 803E3410  41 82 00 20 */	beq lbl_803E3430
/* 803E3414  3B E0 00 01 */	li r31, 1
/* 803E3418  48 00 00 18 */	b lbl_803E3430
lbl_803E341C:
/* 803E341C  38 63 00 1A */	addi r3, r3, 0x1a
/* 803E3420  4B FE 93 69 */	bl mNpc_SearchAnimalPersonalID
/* 803E3424  2C 03 FF FF */	cmpwi r3, -1
/* 803E3428  41 82 00 08 */	beq lbl_803E3430
/* 803E342C  3B E0 00 01 */	li r31, 1
lbl_803E3430:
/* 803E3430  7F E3 FB 78 */	mr r3, r31
/* 803E3434  39 61 00 20 */	addi r11, r1, 0x20
/* 803E3438  4B CB 7A E9 */	bl func_8009AF20
/* 803E343C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E3440  7C 08 03 A6 */	mtlr r0
/* 803E3444  38 21 00 20 */	addi r1, r1, 0x20
/* 803E3448  4E 80 00 20 */	blr 
