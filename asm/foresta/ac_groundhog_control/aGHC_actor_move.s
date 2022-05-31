lbl_80515AE8:
/* 80515AE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80515AEC  7C 08 02 A6 */	mflr r0
/* 80515AF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80515AF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80515AF8  7C 7F 1B 78 */	mr r31, r3
/* 80515AFC  93 C1 00 08 */	stw r30, 8(r1)
/* 80515B00  7C 9E 23 78 */	mr r30, r4
/* 80515B04  4B FF FA E1 */	bl aGHC_get_now_term
/* 80515B08  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80515B0C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80515B10  3C 84 00 02 */	addis r4, r4, 2
/* 80515B14  80 84 61 00 */	lwz r4, 0x6100(r4)
/* 80515B18  90 64 00 00 */	stw r3, 0(r4)
/* 80515B1C  7F C3 F3 78 */	mr r3, r30
/* 80515B20  4B FF FB 2D */	bl aGHC_search_soncho
/* 80515B24  80 7F 01 98 */	lwz r3, 0x198(r31)
/* 80515B28  4B FF FB 81 */	bl aGHC_set_attention_request
/* 80515B2C  81 9F 01 78 */	lwz r12, 0x178(r31)
/* 80515B30  7F E3 FB 78 */	mr r3, r31
/* 80515B34  7F C4 F3 78 */	mr r4, r30
/* 80515B38  7D 89 03 A6 */	mtctr r12
/* 80515B3C  4E 80 04 21 */	bctrl 
/* 80515B40  38 00 00 00 */	li r0, 0
/* 80515B44  90 1F 01 7C */	stw r0, 0x17c(r31)
/* 80515B48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80515B4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80515B50  83 C1 00 08 */	lwz r30, 8(r1)
/* 80515B54  7C 08 03 A6 */	mtlr r0
/* 80515B58  38 21 00 10 */	addi r1, r1, 0x10
/* 80515B5C  4E 80 00 20 */	blr 
