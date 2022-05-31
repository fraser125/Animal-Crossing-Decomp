lbl_80383CF0:
/* 80383CF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80383CF4  7C 08 02 A6 */	mflr r0
/* 80383CF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80383CFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80383D00  4B D1 71 D5 */	bl func_8009AED4
/* 80383D04  7C 7D 1B 78 */	mr r29, r3
/* 80383D08  7C 9E 23 78 */	mr r30, r4
/* 80383D0C  7C BF 2B 78 */	mr r31, r5
/* 80383D10  48 03 B9 99 */	bl func_803BF6A8
/* 80383D14  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80383D18  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80383D1C  3C 84 00 02 */	addis r4, r4, 2
/* 80383D20  88 04 61 22 */	lbz r0, 0x6122(r4)
/* 80383D24  2C 00 00 0C */	cmpwi r0, 0xc
/* 80383D28  40 80 00 14 */	bge lbl_80383D3C
/* 80383D2C  80 03 04 0C */	lwz r0, 0x40c(r3)
/* 80383D30  64 00 00 02 */	oris r0, r0, 2
/* 80383D34  90 03 04 0C */	stw r0, 0x40c(r3)
/* 80383D38  48 00 00 10 */	b lbl_80383D48
lbl_80383D3C:
/* 80383D3C  80 03 04 0C */	lwz r0, 0x40c(r3)
/* 80383D40  54 00 03 DA */	rlwinm r0, r0, 0, 0xf, 0xd
/* 80383D44  90 03 04 0C */	stw r0, 0x40c(r3)
lbl_80383D48:
/* 80383D48  7F A3 EB 78 */	mr r3, r29
/* 80383D4C  7F C4 F3 78 */	mr r4, r30
/* 80383D50  7F E5 FB 78 */	mr r5, r31
/* 80383D54  48 03 D6 75 */	bl mMsg_CopyHour
/* 80383D58  39 61 00 20 */	addi r11, r1, 0x20
/* 80383D5C  4B D1 71 C5 */	bl func_8009AF20
/* 80383D60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80383D64  7C 08 03 A6 */	mtlr r0
/* 80383D68  38 21 00 20 */	addi r1, r1, 0x20
/* 80383D6C  4E 80 00 20 */	blr 
