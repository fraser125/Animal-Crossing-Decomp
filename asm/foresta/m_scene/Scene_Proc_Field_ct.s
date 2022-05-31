lbl_803F10DC:
/* 803F10DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F10E0  7C 08 02 A6 */	mflr r0
/* 803F10E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F10E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F10EC  7C 9F 23 78 */	mr r31, r4
/* 803F10F0  93 C1 00 08 */	stw r30, 8(r1)
/* 803F10F4  7C 7E 1B 78 */	mr r30, r3
/* 803F10F8  88 64 00 02 */	lbz r3, 2(r4)
/* 803F10FC  A0 84 00 04 */	lhz r4, 4(r4)
/* 803F1100  4B FB 2B 7D */	bl mFM_SetFieldInitData
/* 803F1104  7F C3 F3 78 */	mr r3, r30
/* 803F1108  7F E4 FB 78 */	mr r4, r31
/* 803F110C  4B FF FF 79 */	bl set_item_info
/* 803F1110  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F1114  88 BF 00 07 */	lbz r5, 7(r31)
/* 803F1118  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803F111C  38 60 00 00 */	li r3, 0
/* 803F1120  3C 84 00 02 */	addis r4, r4, 2
/* 803F1124  38 00 00 01 */	li r0, 1
/* 803F1128  98 A4 60 02 */	stb r5, 0x6002(r4)
/* 803F112C  98 64 60 00 */	stb r3, 0x6000(r4)
/* 803F1130  98 04 65 20 */	stb r0, 0x6520(r4)
/* 803F1134  98 04 65 22 */	stb r0, 0x6522(r4)
/* 803F1138  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F113C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803F1140  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F1144  7C 08 03 A6 */	mtlr r0
/* 803F1148  38 21 00 10 */	addi r1, r1, 0x10
/* 803F114C  4E 80 00 20 */	blr 
