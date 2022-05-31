lbl_803CEC5C:
/* 803CEC5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CEC60  7C 08 02 A6 */	mflr r0
/* 803CEC64  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CEC68  39 61 00 20 */	addi r11, r1, 0x20
/* 803CEC6C  4B CC C2 65 */	bl func_8009AED0
/* 803CEC70  7C 7C 1B 78 */	mr r28, r3
/* 803CEC74  7C 9D 23 78 */	mr r29, r4
/* 803CEC78  7C BF 2B 78 */	mr r31, r5
/* 803CEC7C  4B FF FF A5 */	bl mNpc_GetFreeMaskNpcIdx
/* 803CEC80  2C 03 FF FF */	cmpwi r3, -1
/* 803CEC84  38 00 00 00 */	li r0, 0
/* 803CEC88  41 82 00 FC */	beq lbl_803CED84
/* 803CEC8C  1C A3 09 90 */	mulli r5, r3, 0x990
/* 803CEC90  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803CEC94  57 E3 04 3F */	clrlwi. r3, r31, 0x10
/* 803CEC98  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803CEC9C  7C 80 2A 14 */	add r4, r0, r5
/* 803CECA0  3F C4 00 02 */	addis r30, r4, 2
/* 803CECA4  3B DE 68 78 */	addi r30, r30, 0x6878
/* 803CECA8  41 82 00 30 */	beq lbl_803CECD8
/* 803CECAC  28 03 FE 20 */	cmplwi r3, 0xfe20
/* 803CECB0  38 00 00 00 */	li r0, 0
/* 803CECB4  41 82 00 14 */	beq lbl_803CECC8
/* 803CECB8  28 03 24 00 */	cmplwi r3, 0x2400
/* 803CECBC  41 80 00 10 */	blt lbl_803CECCC
/* 803CECC0  28 03 24 FF */	cmplwi r3, 0x24ff
/* 803CECC4  40 80 00 08 */	bge lbl_803CECCC
lbl_803CECC8:
/* 803CECC8  38 00 00 01 */	li r0, 1
lbl_803CECCC:
/* 803CECCC  2C 00 00 00 */	cmpwi r0, 0
/* 803CECD0  40 82 00 08 */	bne lbl_803CECD8
/* 803CECD4  3B E0 24 00 */	li r31, 0x2400
lbl_803CECD8:
/* 803CECD8  B3 9E 00 00 */	sth r28, 0(r30)
/* 803CECDC  57 A0 A7 3E */	rlwinm r0, r29, 0x14, 0x1c, 0x1f
/* 803CECE0  38 80 00 00 */	li r4, 0
/* 803CECE4  38 60 00 01 */	li r3, 1
/* 803CECE8  B3 BE 00 02 */	sth r29, 2(r30)
/* 803CECEC  2C 00 00 0E */	cmpwi r0, 0xe
/* 803CECF0  98 9E 00 06 */	stb r4, 6(r30)
/* 803CECF4  98 7E 00 07 */	stb r3, 7(r30)
/* 803CECF8  40 82 00 84 */	bne lbl_803CED7C
/* 803CECFC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CED00  7F A4 EB 78 */	mr r4, r29
/* 803CED04  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803CED08  38 A0 00 0F */	li r5, 0xf
/* 803CED0C  3C 63 00 01 */	addis r3, r3, 1
/* 803CED10  38 63 74 38 */	addi r3, r3, 0x7438
/* 803CED14  4B FF D9 C9 */	bl mNpc_SearchAnimalinfo
/* 803CED18  2C 03 FF FF */	cmpwi r3, -1
/* 803CED1C  41 82 00 28 */	beq lbl_803CED44
/* 803CED20  1C A3 09 88 */	mulli r5, r3, 0x988
/* 803CED24  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803CED28  38 7E 00 08 */	addi r3, r30, 8
/* 803CED2C  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803CED30  7C 80 2A 14 */	add r4, r0, r5
/* 803CED34  3C 84 00 01 */	addis r4, r4, 1
/* 803CED38  38 84 74 38 */	addi r4, r4, 0x7438
/* 803CED3C  4B FF D9 7D */	bl mNpc_CopyAnimalInfo
/* 803CED40  48 00 00 20 */	b lbl_803CED60
lbl_803CED44:
/* 803CED44  38 7E 00 08 */	addi r3, r30, 8
/* 803CED48  4B FF D6 F5 */	bl mNpc_ClearAnimalInfo
/* 803CED4C  3C 60 80 97 */	lis r3, data_8096CC90@ha /* 0x8096CC90@ha */
/* 803CED50  7F A4 EB 78 */	mr r4, r29
/* 803CED54  38 A3 CC 90 */	addi r5, r3, data_8096CC90@l /* 0x8096CC90@l */
/* 803CED58  38 7E 00 08 */	addi r3, r30, 8
/* 803CED5C  48 00 02 2D */	bl mNpc_SetDefAnimal
lbl_803CED60:
/* 803CED60  57 E0 04 3F */	clrlwi. r0, r31, 0x10
/* 803CED64  40 82 00 10 */	bne lbl_803CED74
/* 803CED68  A0 1E 08 EC */	lhz r0, 0x8ec(r30)
/* 803CED6C  B0 1E 00 04 */	sth r0, 4(r30)
/* 803CED70  48 00 00 10 */	b lbl_803CED80
lbl_803CED74:
/* 803CED74  B3 FE 00 04 */	sth r31, 4(r30)
/* 803CED78  48 00 00 08 */	b lbl_803CED80
lbl_803CED7C:
/* 803CED7C  B3 FE 00 04 */	sth r31, 4(r30)
lbl_803CED80:
/* 803CED80  38 00 00 01 */	li r0, 1
lbl_803CED84:
/* 803CED84  7C 03 03 78 */	mr r3, r0
/* 803CED88  39 61 00 20 */	addi r11, r1, 0x20
/* 803CED8C  4B CC C1 91 */	bl func_8009AF1C
/* 803CED90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CED94  7C 08 03 A6 */	mtlr r0
/* 803CED98  38 21 00 20 */	addi r1, r1, 0x20
/* 803CED9C  4E 80 00 20 */	blr 
