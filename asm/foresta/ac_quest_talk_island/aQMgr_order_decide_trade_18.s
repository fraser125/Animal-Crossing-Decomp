lbl_8048EF28:
/* 8048EF28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048EF2C  7C 08 02 A6 */	mflr r0
/* 8048EF30  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048EF34  39 61 00 20 */	addi r11, r1, 0x20
/* 8048EF38  4B C0 BF 9D */	bl func_8009AED4
/* 8048EF3C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8048EF40  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048EF44  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8048EF48  3C 63 00 02 */	addis r3, r3, 2
/* 8048EF4C  3B C4 EB F0 */	addi r30, r4, l_normal_info@l /* 0x811CEBF0@l */
/* 8048EF50  83 A3 61 3C */	lwz r29, 0x613c(r3)
/* 8048EF54  38 7E 00 14 */	addi r3, r30, 0x14
/* 8048EF58  7F A4 EB 78 */	mr r4, r29
/* 8048EF5C  4B FF EE 1D */	bl aQMgr_get_best_ftr_idx
/* 8048EF60  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048EF64  2C 03 FF FF */	cmpwi r3, -1
/* 8048EF68  38 84 EB F0 */	addi r4, r4, l_normal_info@l /* 0x811CEBF0@l */
/* 8048EF6C  90 64 00 0C */	stw r3, 0xc(r4)
/* 8048EF70  41 82 00 28 */	beq lbl_8048EF98
/* 8048EF74  A0 7E 00 14 */	lhz r3, 0x14(r30)
/* 8048EF78  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8048EF7C  2C 00 00 01 */	cmpwi r0, 1
/* 8048EF80  41 82 00 0C */	beq lbl_8048EF8C
/* 8048EF84  2C 00 00 03 */	cmpwi r0, 3
/* 8048EF88  40 82 00 10 */	bne lbl_8048EF98
lbl_8048EF8C:
/* 8048EF8C  38 80 00 00 */	li r4, 0
/* 8048EF90  4B F5 46 A5 */	bl mQst_SetItemNameStr
/* 8048EF94  48 00 00 14 */	b lbl_8048EFA8
lbl_8048EF98:
/* 8048EF98  38 60 FF FF */	li r3, -1
/* 8048EF9C  38 00 00 00 */	li r0, 0
/* 8048EFA0  90 7E 00 0C */	stw r3, 0xc(r30)
/* 8048EFA4  B0 1E 00 14 */	sth r0, 0x14(r30)
lbl_8048EFA8:
/* 8048EFA8  4B F4 65 39 */	bl mNpc_GetIslandPresentFtr
/* 8048EFAC  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8048EFB0  7C 7F 1B 78 */	mr r31, r3
/* 8048EFB4  41 82 00 10 */	beq lbl_8048EFC4
/* 8048EFB8  38 80 00 01 */	li r4, 1
/* 8048EFBC  4B F5 46 79 */	bl mQst_SetItemNameStr
/* 8048EFC0  B3 FE 00 16 */	sth r31, 0x16(r30)
lbl_8048EFC4:
/* 8048EFC4  4B F4 65 71 */	bl mNpc_GetRandomBestFtr
/* 8048EFC8  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8048EFCC  7C 7F 1B 78 */	mr r31, r3
/* 8048EFD0  41 82 00 10 */	beq lbl_8048EFE0
/* 8048EFD4  38 80 00 02 */	li r4, 2
/* 8048EFD8  4B F5 46 5D */	bl mQst_SetItemNameStr
/* 8048EFDC  B3 FE 00 18 */	sth r31, 0x18(r30)
lbl_8048EFE0:
/* 8048EFE0  7F A3 EB 78 */	mr r3, r29
/* 8048EFE4  4B F4 6A D5 */	bl mNpc_GetPlayerFtr
/* 8048EFE8  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8048EFEC  B0 7E 00 1A */	sth r3, 0x1a(r30)
/* 8048EFF0  2C 00 00 01 */	cmpwi r0, 1
/* 8048EFF4  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8048EFF8  41 82 00 0C */	beq lbl_8048F004
/* 8048EFFC  2C 00 00 03 */	cmpwi r0, 3
/* 8048F000  40 82 00 10 */	bne lbl_8048F010
lbl_8048F004:
/* 8048F004  38 80 00 03 */	li r4, 3
/* 8048F008  4B F5 46 2D */	bl mQst_SetItemNameStr
/* 8048F00C  48 00 00 0C */	b lbl_8048F018
lbl_8048F010:
/* 8048F010  38 00 00 00 */	li r0, 0
/* 8048F014  B0 1E 00 1A */	sth r0, 0x1a(r30)
lbl_8048F018:
/* 8048F018  4B F4 64 D9 */	bl mNpc_GetIslandPresentFtrPersonalID
/* 8048F01C  7C 7D 1B 79 */	or. r29, r3, r3
/* 8048F020  41 82 00 18 */	beq lbl_8048F038
/* 8048F024  4B F3 06 85 */	bl func_803BF6A8
/* 8048F028  7F A5 EB 78 */	mr r5, r29
/* 8048F02C  38 80 00 12 */	li r4, 0x12
/* 8048F030  38 C0 00 08 */	li r6, 8
/* 8048F034  4B F3 0C 21 */	bl mMsg_Set_free_str
lbl_8048F038:
/* 8048F038  38 60 00 64 */	li r3, 0x64
/* 8048F03C  38 80 0B B8 */	li r4, 0xbb8
/* 8048F040  38 A0 00 01 */	li r5, 1
/* 8048F044  4B FF F3 3D */	bl aQMgr_order_decide_trade_common_pay
/* 8048F048  39 61 00 20 */	addi r11, r1, 0x20
/* 8048F04C  4B C0 BE D5 */	bl func_8009AF20
/* 8048F050  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048F054  7C 08 03 A6 */	mtlr r0
/* 8048F058  38 21 00 20 */	addi r1, r1, 0x20
/* 8048F05C  4E 80 00 20 */	blr 
