lbl_80426B4C:
/* 80426B4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80426B50  7C 08 02 A6 */	mflr r0
/* 80426B54  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80426B58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80426B5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80426B60  7C 7F 1B 78 */	mr r31, r3
/* 80426B64  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80426B68  93 C1 00 08 */	stw r30, 8(r1)
/* 80426B6C  3F C3 00 02 */	addis r30, r3, 2
/* 80426B70  80 1E 60 94 */	lwz r0, 0x6094(r30)
/* 80426B74  28 00 00 00 */	cmplwi r0, 0
/* 80426B78  40 82 00 6C */	bne lbl_80426BE4
/* 80426B7C  3C 60 81 1D */	lis r3, aHOI_clip@ha /* 0x811CBD60@ha */
/* 80426B80  38 80 00 24 */	li r4, 0x24
/* 80426B84  38 63 BD 60 */	addi r3, r3, aHOI_clip@l /* 0x811CBD60@l */
/* 80426B88  90 7E 60 94 */	stw r3, 0x6094(r30)
/* 80426B8C  4B C3 64 DD */	bl bzero
/* 80426B90  3C 80 80 42 */	lis r4, func_804269A8@ha /* 0x804269A8@ha */
/* 80426B94  80 7E 60 94 */	lwz r3, 0x6094(r30)
/* 80426B98  38 04 69 A8 */	addi r0, r4, func_804269A8@l /* 0x804269A8@l */
/* 80426B9C  3C 80 80 42 */	lis r4, aHOI_chg_master_proc@ha /* 0x80426AA8@ha */
/* 80426BA0  90 03 00 00 */	stw r0, 0(r3)
/* 80426BA4  3C 60 80 42 */	lis r3, aHOI_chg_request_mode_proc@ha /* 0x80426B1C@ha */
/* 80426BA8  38 C4 6A A8 */	addi r6, r4, aHOI_chg_master_proc@l /* 0x80426AA8@l */
/* 80426BAC  38 00 00 00 */	li r0, 0
/* 80426BB0  80 BE 60 94 */	lwz r5, 0x6094(r30)
/* 80426BB4  38 83 6B 1C */	addi r4, r3, aHOI_chg_request_mode_proc@l /* 0x80426B1C@l */
/* 80426BB8  90 C5 00 04 */	stw r6, 4(r5)
/* 80426BBC  80 7E 60 94 */	lwz r3, 0x6094(r30)
/* 80426BC0  90 83 00 08 */	stw r4, 8(r3)
/* 80426BC4  80 7E 60 94 */	lwz r3, 0x6094(r30)
/* 80426BC8  98 03 00 0C */	stb r0, 0xc(r3)
/* 80426BCC  80 7E 60 94 */	lwz r3, 0x6094(r30)
/* 80426BD0  B0 03 00 0E */	sth r0, 0xe(r3)
/* 80426BD4  80 7E 60 94 */	lwz r3, 0x6094(r30)
/* 80426BD8  90 03 00 10 */	stw r0, 0x10(r3)
/* 80426BDC  80 7E 60 94 */	lwz r3, 0x6094(r30)
/* 80426BE0  93 E3 00 1C */	stw r31, 0x1c(r3)
lbl_80426BE4:
/* 80426BE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80426BE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80426BEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80426BF0  7C 08 03 A6 */	mtlr r0
/* 80426BF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80426BF8  4E 80 00 20 */	blr 
