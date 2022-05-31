lbl_803EDC7C:
/* 803EDC7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EDC80  7C 08 02 A6 */	mflr r0
/* 803EDC84  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EDC88  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EDC8C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EDC90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EDC94  3F E3 00 02 */	addis r31, r3, 2
/* 803EDC98  7F E3 FB 78 */	mr r3, r31
/* 803EDC9C  38 63 61 20 */	addi r3, r3, 0x6120
/* 803EDCA0  4B FF FA B5 */	bl mSC_LightHouse_day
/* 803EDCA4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803EDCA8  38 A0 00 01 */	li r5, 1
/* 803EDCAC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803EDCB0  88 DF 41 70 */	lbz r6, 0x4170(r31)
/* 803EDCB4  3C 84 00 02 */	addis r4, r4, 2
/* 803EDCB8  7C A0 18 30 */	slw r0, r5, r3
/* 803EDCBC  88 64 60 03 */	lbz r3, 0x6003(r4)
/* 803EDCC0  7C C0 03 78 */	or r0, r6, r0
/* 803EDCC4  98 1F 41 70 */	stb r0, 0x4170(r31)
/* 803EDCC8  2C 03 00 04 */	cmpwi r3, 4
/* 803EDCCC  40 80 00 1C */	bge lbl_803EDCE8
/* 803EDCD0  38 03 00 04 */	addi r0, r3, 4
/* 803EDCD4  88 7F 41 71 */	lbz r3, 0x4171(r31)
/* 803EDCD8  7C A0 00 30 */	slw r0, r5, r0
/* 803EDCDC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803EDCE0  7C 60 03 78 */	or r0, r3, r0
/* 803EDCE4  98 1F 41 71 */	stb r0, 0x4171(r31)
lbl_803EDCE8:
/* 803EDCE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EDCEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EDCF0  7C 08 03 A6 */	mtlr r0
/* 803EDCF4  38 21 00 10 */	addi r1, r1, 0x10
/* 803EDCF8  4E 80 00 20 */	blr 
