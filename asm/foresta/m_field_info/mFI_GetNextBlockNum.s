lbl_803A8B6C:
/* 803A8B6C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A8B70  7C 08 02 A6 */	mflr r0
/* 803A8B74  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A8B78  39 61 00 30 */	addi r11, r1, 0x30
/* 803A8B7C  4B CF 23 59 */	bl func_8009AED4
/* 803A8B80  3C C0 80 64 */	lis r6, lit_1926@ha /* 0x80641F68@ha */
/* 803A8B84  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803A8B88  38 E6 1F 68 */	addi r7, r6, lit_1926@l /* 0x80641F68@l */
/* 803A8B8C  7C 7F 1B 78 */	mr r31, r3
/* 803A8B90  80 C7 00 00 */	lwz r6, 0(r7)
/* 803A8B94  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 803A8B98  80 A7 00 04 */	lwz r5, 4(r7)
/* 803A8B9C  3C 63 00 03 */	addis r3, r3, 3
/* 803A8BA0  80 07 00 08 */	lwz r0, 8(r7)
/* 803A8BA4  7C 9D 23 78 */	mr r29, r4
/* 803A8BA8  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803A8BAC  3B C0 00 00 */	li r30, 0
/* 803A8BB0  90 A1 00 18 */	stw r5, 0x18(r1)
/* 803A8BB4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803A8BB8  88 03 85 BE */	lbz r0, -0x7a42(r3)
/* 803A8BBC  7C 00 07 75 */	extsb. r0, r0
/* 803A8BC0  41 82 00 2C */	beq lbl_803A8BEC
/* 803A8BC4  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803A8BC8  83 C3 52 F0 */	lwz r30, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 803A8BCC  7F C3 F3 78 */	mr r3, r30
/* 803A8BD0  48 03 0A 71 */	bl get_player_actor_withoutCheck
/* 803A8BD4  81 83 13 18 */	lwz r12, 0x1318(r3)
/* 803A8BD8  7F C3 F3 78 */	mr r3, r30
/* 803A8BDC  38 81 00 14 */	addi r4, r1, 0x14
/* 803A8BE0  7D 89 03 A6 */	mtctr r12
/* 803A8BE4  4E 80 04 21 */	bctrl 
/* 803A8BE8  7C 7E 1B 78 */	mr r30, r3
lbl_803A8BEC:
/* 803A8BEC  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 803A8BF0  7F E3 FB 78 */	mr r3, r31
/* 803A8BF4  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 803A8BF8  7F A4 EB 78 */	mr r4, r29
/* 803A8BFC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803A8C00  38 A1 00 08 */	addi r5, r1, 8
/* 803A8C04  90 E1 00 08 */	stw r7, 8(r1)
/* 803A8C08  90 C1 00 0C */	stw r6, 0xc(r1)
/* 803A8C0C  90 01 00 10 */	stw r0, 0x10(r1)
/* 803A8C10  4B FF CB 51 */	bl mFI_Wpos2BlockNum
/* 803A8C14  7C 63 F0 38 */	and r3, r3, r30
/* 803A8C18  39 61 00 30 */	addi r11, r1, 0x30
/* 803A8C1C  4B CF 23 05 */	bl func_8009AF20
/* 803A8C20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A8C24  7C 08 03 A6 */	mtlr r0
/* 803A8C28  38 21 00 30 */	addi r1, r1, 0x30
/* 803A8C2C  4E 80 00 20 */	blr 
