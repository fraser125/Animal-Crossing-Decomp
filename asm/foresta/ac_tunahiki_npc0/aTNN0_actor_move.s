lbl_8058E91C:
/* 8058E91C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058E920  7C 08 02 A6 */	mflr r0
/* 8058E924  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8058E928  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058E92C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8058E930  3C A5 00 02 */	addis r5, r5, 2
/* 8058E934  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058E938  7C 9F 23 78 */	mr r31, r4
/* 8058E93C  93 C1 00 08 */	stw r30, 8(r1)
/* 8058E940  7C 7E 1B 78 */	mr r30, r3
/* 8058E944  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8058E948  81 85 00 E0 */	lwz r12, 0xe0(r5)
/* 8058E94C  7D 89 03 A6 */	mtctr r12
/* 8058E950  4E 80 04 21 */	bctrl 
/* 8058E954  7F C3 F3 78 */	mr r3, r30
/* 8058E958  7F E4 FB 78 */	mr r4, r31
/* 8058E95C  4B FF FF 4D */	bl aTNN0_make_hata
/* 8058E960  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058E964  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058E968  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058E96C  7C 08 03 A6 */	mtlr r0
/* 8058E970  38 21 00 10 */	addi r1, r1, 0x10
/* 8058E974  4E 80 00 20 */	blr 
