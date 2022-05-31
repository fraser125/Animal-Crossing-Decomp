lbl_805815A8:
/* 805815A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805815AC  7C 08 02 A6 */	mflr r0
/* 805815B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805815B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805815B8  7C 9F 23 78 */	mr r31, r4
/* 805815BC  38 80 00 02 */	li r4, 2
/* 805815C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805815C4  7C 7E 1B 78 */	mr r30, r3
/* 805815C8  4B FF FB 5D */	bl aNSC_set_item_name_str
/* 805815CC  7F E3 FB 78 */	mr r3, r31
/* 805815D0  38 80 00 07 */	li r4, 7
/* 805815D4  4B FF FA F5 */	bl aNSC_set_value_str
/* 805815D8  57 C0 A7 3E */	rlwinm r0, r30, 0x14, 0x1c, 0x1f
/* 805815DC  57 C6 04 3E */	clrlwi r6, r30, 0x10
/* 805815E0  2C 00 00 02 */	cmpwi r0, 2
/* 805815E4  41 82 00 20 */	beq lbl_80581604
/* 805815E8  40 80 00 10 */	bge lbl_805815F8
/* 805815EC  2C 00 00 01 */	cmpwi r0, 1
/* 805815F0  40 80 00 48 */	bge lbl_80581638
/* 805815F4  48 00 00 4C */	b lbl_80581640
lbl_805815F8:
/* 805815F8  2C 00 00 04 */	cmpwi r0, 4
/* 805815FC  40 80 00 44 */	bge lbl_80581640
/* 80581600  48 00 00 38 */	b lbl_80581638
lbl_80581604:
/* 80581604  3C 80 80 6C */	lis r4, aNSC_item_tanni_type@ha /* 0x806C1694@ha */
/* 80581608  3C 60 80 6C */	lis r3, tani_string_num@ha /* 0x806C1760@ha */
/* 8058160C  54 C5 D6 BA */	rlwinm r5, r6, 0x1a, 0x1a, 0x1d
/* 80581610  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 80581614  38 84 16 94 */	addi r4, r4, aNSC_item_tanni_type@l /* 0x806C1694@l */
/* 80581618  38 63 17 60 */	addi r3, r3, tani_string_num@l /* 0x806C1760@l */
/* 8058161C  7C 84 28 2E */	lwzx r4, r4, r5
/* 80581620  7C 04 00 AE */	lbzx r0, r4, r0
/* 80581624  54 00 10 3A */	slwi r0, r0, 2
/* 80581628  7C 03 00 2E */	lwzx r0, r3, r0
/* 8058162C  7C BF 02 14 */	add r5, r31, r0
/* 80581630  38 A5 FF FF */	addi r5, r5, -1
/* 80581634  48 00 00 10 */	b lbl_80581644
lbl_80581638:
/* 80581638  38 BF 05 65 */	addi r5, r31, 0x565
/* 8058163C  48 00 00 08 */	b lbl_80581644
lbl_80581640:
/* 80581640  38 BF 05 65 */	addi r5, r31, 0x565
lbl_80581644:
/* 80581644  38 61 00 08 */	addi r3, r1, 8
/* 80581648  38 80 00 10 */	li r4, 0x10
/* 8058164C  4B E6 D6 81 */	bl mString_Load_StringFromRom
/* 80581650  4B E3 E0 59 */	bl func_803BF6A8
/* 80581654  38 A1 00 08 */	addi r5, r1, 8
/* 80581658  38 80 00 08 */	li r4, 8
/* 8058165C  38 C0 00 10 */	li r6, 0x10
/* 80581660  4B E3 E5 F5 */	bl mMsg_Set_free_str
/* 80581664  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80581668  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8058166C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80581670  7C 08 03 A6 */	mtlr r0
/* 80581674  38 21 00 20 */	addi r1, r1, 0x20
/* 80581678  4E 80 00 20 */	blr 
