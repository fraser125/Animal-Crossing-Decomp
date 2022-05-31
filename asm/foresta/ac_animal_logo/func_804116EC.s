lbl_804116EC:
/* 804116EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804116F0  7C 08 02 A6 */	mflr r0
/* 804116F4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804116F8  3C 80 00 02 */	lis r4, 0x0002 /* 0x00026000@ha */
/* 804116FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80411700  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80411704  38 84 60 00 */	addi r4, r4, 0x6000 /* 0x00026000@l */
/* 80411708  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041170C  93 C1 00 08 */	stw r30, 8(r1)
/* 80411710  4B C4 B9 59 */	bl bzero
/* 80411714  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80411718  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8041171C  4B F9 AF 09 */	bl mFRm_ClearSaveCheckData
/* 80411720  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80411724  3B C0 00 00 */	li r30, 0
/* 80411728  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8041172C  3B E3 00 20 */	addi r31, r3, 0x20
lbl_80411730:
/* 80411730  7F E3 FB 78 */	mr r3, r31
/* 80411734  4B FC EA E5 */	bl mPr_ClearPrivateInfo
/* 80411738  3B DE 00 01 */	addi r30, r30, 1
/* 8041173C  3B FF 24 40 */	addi r31, r31, 0x2440
/* 80411740  2C 1E 00 04 */	cmpwi r30, 4
/* 80411744  41 80 FF EC */	blt lbl_80411730
/* 80411748  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8041174C  38 00 00 01 */	li r0, 1
/* 80411750  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80411754  3C 63 00 01 */	addis r3, r3, 1
/* 80411758  98 03 91 28 */	stb r0, -0x6ed8(r3)
/* 8041175C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80411760  83 C1 00 08 */	lwz r30, 8(r1)
/* 80411764  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80411768  7C 08 03 A6 */	mtlr r0
/* 8041176C  38 21 00 10 */	addi r1, r1, 0x10
/* 80411770  4E 80 00 20 */	blr 
