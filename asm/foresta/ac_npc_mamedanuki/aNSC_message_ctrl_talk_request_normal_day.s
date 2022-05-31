lbl_8055BA38:
/* 8055BA38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8055BA3C  7C 08 02 A6 */	mflr r0
/* 8055BA40  90 01 00 34 */	stw r0, 0x34(r1)
/* 8055BA44  38 00 00 00 */	li r0, 0
/* 8055BA48  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8055BA4C  7C 7F 1B 78 */	mr r31, r3
/* 8055BA50  B0 03 09 B4 */	sth r0, 0x9b4(r3)
/* 8055BA54  80 04 13 8C */	lwz r0, 0x138c(r4)
/* 8055BA58  2C 00 00 01 */	cmpwi r0, 1
/* 8055BA5C  40 82 01 18 */	bne lbl_8055BB74
/* 8055BA60  80 C4 13 98 */	lwz r6, 0x1398(r4)
/* 8055BA64  38 61 00 0C */	addi r3, r1, 0xc
/* 8055BA68  80 04 13 9C */	lwz r0, 0x139c(r4)
/* 8055BA6C  38 A1 00 10 */	addi r5, r1, 0x10
/* 8055BA70  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8055BA74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055BA78  80 04 13 A0 */	lwz r0, 0x13a0(r4)
/* 8055BA7C  38 81 00 08 */	addi r4, r1, 8
/* 8055BA80  90 01 00 18 */	stw r0, 0x18(r1)
/* 8055BA84  4B E4 98 E5 */	bl mFI_Wpos2UtNum
/* 8055BA88  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8055BA8C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8055BA90  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8055BA94  80 81 00 08 */	lwz r4, 8(r1)
/* 8055BA98  3C A5 00 02 */	addis r5, r5, 2
/* 8055BA9C  80 A5 60 60 */	lwz r5, 0x6060(r5)
/* 8055BAA0  81 85 00 04 */	lwz r12, 4(r5)
/* 8055BAA4  7D 89 03 A6 */	mtctr r12
/* 8055BAA8  4E 80 04 21 */	bctrl 
/* 8055BAAC  54 66 04 3F */	clrlwi. r6, r3, 0x10
/* 8055BAB0  41 82 00 C4 */	beq lbl_8055BB74
/* 8055BAB4  28 06 FF FF */	cmplwi r6, 0xffff
/* 8055BAB8  41 82 00 BC */	beq lbl_8055BB74
/* 8055BABC  B0 7F 09 B4 */	sth r3, 0x9b4(r31)
/* 8055BAC0  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8055BAC4  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 8055BAC8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8055BACC  38 84 B5 4C */	addi r4, r4, none_proc1@l /* 0x803BB54C@l */
/* 8055BAD0  2C 00 00 02 */	cmpwi r0, 2
/* 8055BAD4  98 7F 09 B6 */	stb r3, 0x9b6(r31)
/* 8055BAD8  7C 85 23 78 */	mr r5, r4
/* 8055BADC  80 61 00 08 */	lwz r3, 8(r1)
/* 8055BAE0  98 7F 09 B7 */	stb r3, 0x9b7(r31)
/* 8055BAE4  41 82 00 2C */	beq lbl_8055BB10
/* 8055BAE8  40 80 00 10 */	bge lbl_8055BAF8
/* 8055BAEC  2C 00 00 01 */	cmpwi r0, 1
/* 8055BAF0  40 80 00 10 */	bge lbl_8055BB00
/* 8055BAF4  48 00 00 6C */	b lbl_8055BB60
lbl_8055BAF8:
/* 8055BAF8  2C 00 00 04 */	cmpwi r0, 4
/* 8055BAFC  40 80 00 64 */	bge lbl_8055BB60
lbl_8055BB00:
/* 8055BB00  3C 60 80 56 */	lis r3, aNSC_set_talk_info_sell_item@ha /* 0x8055B80C@ha */
/* 8055BB04  38 03 B8 0C */	addi r0, r3, aNSC_set_talk_info_sell_item@l /* 0x8055B80C@l */
/* 8055BB08  7C 05 03 78 */	mr r5, r0
/* 8055BB0C  48 00 00 54 */	b lbl_8055BB60
lbl_8055BB10:
/* 8055BB10  54 C0 C7 3E */	rlwinm r0, r6, 0x18, 0x1c, 0x1f
/* 8055BB14  2C 00 00 05 */	cmpwi r0, 5
/* 8055BB18  41 82 00 3C */	beq lbl_8055BB54
/* 8055BB1C  40 80 00 10 */	bge lbl_8055BB2C
/* 8055BB20  2C 00 00 04 */	cmpwi r0, 4
/* 8055BB24  40 80 00 20 */	bge lbl_8055BB44
/* 8055BB28  48 00 00 2C */	b lbl_8055BB54
lbl_8055BB2C:
/* 8055BB2C  2C 00 00 08 */	cmpwi r0, 8
/* 8055BB30  40 80 00 24 */	bge lbl_8055BB54
/* 8055BB34  3C 60 80 56 */	lis r3, aNSC_set_talk_info_show_item@ha /* 0x8055B79C@ha */
/* 8055BB38  38 03 B7 9C */	addi r0, r3, aNSC_set_talk_info_show_item@l /* 0x8055B79C@l */
/* 8055BB3C  7C 05 03 78 */	mr r5, r0
/* 8055BB40  48 00 00 20 */	b lbl_8055BB60
lbl_8055BB44:
/* 8055BB44  3C 60 80 56 */	lis r3, aNSC_set_talk_info_show_cloth@ha /* 0x8055B7D4@ha */
/* 8055BB48  38 03 B7 D4 */	addi r0, r3, aNSC_set_talk_info_show_cloth@l /* 0x8055B7D4@l */
/* 8055BB4C  7C 05 03 78 */	mr r5, r0
/* 8055BB50  48 00 00 10 */	b lbl_8055BB60
lbl_8055BB54:
/* 8055BB54  3C 60 80 56 */	lis r3, aNSC_set_talk_info_sell_item@ha /* 0x8055B80C@ha */
/* 8055BB58  38 03 B8 0C */	addi r0, r3, aNSC_set_talk_info_sell_item@l /* 0x8055B80C@l */
/* 8055BB5C  7C 05 03 78 */	mr r5, r0
lbl_8055BB60:
/* 8055BB60  7F E4 FB 78 */	mr r4, r31
/* 8055BB64  38 60 00 08 */	li r3, 8
/* 8055BB68  4B E3 E5 F5 */	bl mDemo_Request
/* 8055BB6C  38 00 FF FF */	li r0, -1
/* 8055BB70  90 1F 09 C0 */	stw r0, 0x9c0(r31)
lbl_8055BB74:
/* 8055BB74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8055BB78  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8055BB7C  7C 08 03 A6 */	mtlr r0
/* 8055BB80  38 21 00 30 */	addi r1, r1, 0x30
/* 8055BB84  4E 80 00 20 */	blr 
