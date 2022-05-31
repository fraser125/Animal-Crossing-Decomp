lbl_805E4C0C:
/* 805E4C0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E4C10  7C 08 02 A6 */	mflr r0
/* 805E4C14  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E4C18  39 61 00 20 */	addi r11, r1, 0x20
/* 805E4C1C  4B AB 62 B5 */	bl func_8009AED0
/* 805E4C20  7C 7C 1B 78 */	mr r28, r3
/* 805E4C24  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805E4C28  83 FC 00 2C */	lwz r31, 0x2c(r28)
/* 805E4C2C  83 A3 52 F0 */	lwz r29, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 805E4C30  80 1F 09 88 */	lwz r0, 0x988(r31)
/* 805E4C34  3B DF 00 9C */	addi r30, r31, 0x9c
/* 805E4C38  28 00 00 00 */	cmplwi r0, 0
/* 805E4C3C  40 82 00 38 */	bne lbl_805E4C74
/* 805E4C40  3C 60 81 21 */	lis r3, inv_ovl_data@ha /* 0x81211C18@ha */
/* 805E4C44  38 80 05 EC */	li r4, 0x5ec
/* 805E4C48  38 63 1C 18 */	addi r3, r3, inv_ovl_data@l /* 0x81211C18@l */
/* 805E4C4C  38 A0 00 00 */	li r5, 0
/* 805E4C50  4B DD 5D F9 */	bl mem_clear
/* 805E4C54  3C 80 81 21 */	lis r4, inv_ovl_data@ha /* 0x81211C18@ha */
/* 805E4C58  7F 83 E3 78 */	mr r3, r28
/* 805E4C5C  38 04 1C 18 */	addi r0, r4, inv_ovl_data@l /* 0x81211C18@l */
/* 805E4C60  90 1F 09 88 */	stw r0, 0x988(r31)
/* 805E4C64  4B FF CF 81 */	bl mIV_pl_shape_init
/* 805E4C68  7F 83 E3 78 */	mr r3, r28
/* 805E4C6C  4B FF D2 B1 */	bl mIV_pl_shape_move
/* 805E4C70  4B DF E4 61 */	bl mQst_ClearGrabItemInfo
lbl_805E4C74:
/* 805E4C74  7F 83 E3 78 */	mr r3, r28
/* 805E4C78  7F C4 F3 78 */	mr r4, r30
/* 805E4C7C  7F A5 EB 78 */	mr r5, r29
/* 805E4C80  4B FF FC 35 */	bl mIV_inventory_ovl_init
/* 805E4C84  7F 83 E3 78 */	mr r3, r28
/* 805E4C88  4B FF FB C9 */	bl mIV_inventory_ovl_set_proc
/* 805E4C8C  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 805E4C90  3C 80 80 5E */	lis r4, mIV_set_collect_itemNo@ha /* 0x805E12DC@ha */
/* 805E4C94  38 04 12 DC */	addi r0, r4, mIV_set_collect_itemNo@l /* 0x805E12DC@l */
/* 805E4C98  80 63 09 88 */	lwz r3, 0x988(r3)
/* 805E4C9C  90 03 05 DC */	stw r0, 0x5dc(r3)
/* 805E4CA0  39 61 00 20 */	addi r11, r1, 0x20
/* 805E4CA4  4B AB 62 79 */	bl func_8009AF1C
/* 805E4CA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E4CAC  7C 08 03 A6 */	mtlr r0
/* 805E4CB0  38 21 00 20 */	addi r1, r1, 0x20
/* 805E4CB4  4E 80 00 20 */	blr 
