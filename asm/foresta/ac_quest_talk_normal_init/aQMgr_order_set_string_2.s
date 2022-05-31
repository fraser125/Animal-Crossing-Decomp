lbl_8049523C:
/* 8049523C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80495240  7C 08 02 A6 */	mflr r0
/* 80495244  3C 60 81 1D */	lis r3, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 80495248  38 80 00 00 */	li r4, 0
/* 8049524C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80495250  38 63 EC 94 */	addi r3, r3, l_aqmgr_str@l /* 0x811CEC94@l */
/* 80495254  38 A0 00 01 */	li r5, 1
/* 80495258  38 C0 00 0A */	li r6, 0xa
/* 8049525C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80495260  4B FF FF 65 */	bl aQMgr_set_random_number_item_str
/* 80495264  3C 60 81 1D */	lis r3, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 80495268  38 80 00 01 */	li r4, 1
/* 8049526C  38 63 EC 94 */	addi r3, r3, l_aqmgr_str@l /* 0x811CEC94@l */
/* 80495270  38 A0 00 0A */	li r5, 0xa
/* 80495274  38 C0 00 63 */	li r6, 0x63
/* 80495278  4B FF FF 4D */	bl aQMgr_set_random_number_item_str
/* 8049527C  3C 60 81 1D */	lis r3, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 80495280  38 80 00 02 */	li r4, 2
/* 80495284  38 63 EC 94 */	addi r3, r3, l_aqmgr_str@l /* 0x811CEC94@l */
/* 80495288  38 A0 00 00 */	li r5, 0
/* 8049528C  38 C0 00 09 */	li r6, 9
/* 80495290  4B FF FF 35 */	bl aQMgr_set_random_number_item_str
/* 80495294  4B F5 46 D1 */	bl mSP_GetShopLevel
/* 80495298  7C 7F 1B 79 */	or. r31, r3, r3
/* 8049529C  41 80 00 0C */	blt lbl_804952A8
/* 804952A0  2C 1F 00 04 */	cmpwi r31, 4
/* 804952A4  41 80 00 08 */	blt lbl_804952AC
lbl_804952A8:
/* 804952A8  3B E0 00 00 */	li r31, 0
lbl_804952AC:
/* 804952AC  38 61 00 08 */	addi r3, r1, 8
/* 804952B0  38 80 00 10 */	li r4, 0x10
/* 804952B4  38 A0 00 20 */	li r5, 0x20
/* 804952B8  4B F2 57 91 */	bl mem_clear
/* 804952BC  38 61 00 08 */	addi r3, r1, 8
/* 804952C0  38 BF 04 54 */	addi r5, r31, 0x454
/* 804952C4  38 80 00 10 */	li r4, 0x10
/* 804952C8  4B F5 9A 05 */	bl mString_Load_StringFromRom
/* 804952CC  4B F2 A3 DD */	bl func_803BF6A8
/* 804952D0  38 A1 00 08 */	addi r5, r1, 8
/* 804952D4  38 80 00 03 */	li r4, 3
/* 804952D8  38 C0 00 10 */	li r6, 0x10
/* 804952DC  4B F2 AA F9 */	bl mMsg_Set_item_str
/* 804952E0  3C 60 80 64 */	lis r3, lit_1576@ha /* 0x80644C90@ha */
/* 804952E4  3C C0 81 1D */	lis r6, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 804952E8  38 A3 4C 90 */	addi r5, r3, lit_1576@l /* 0x80644C90@l */
/* 804952EC  38 80 00 04 */	li r4, 4
/* 804952F0  C0 25 00 00 */	lfs f1, 0(r5)
/* 804952F4  38 66 EC 94 */	addi r3, r6, l_aqmgr_str@l /* 0x811CEC94@l */
/* 804952F8  38 A0 04 34 */	li r5, 0x434
/* 804952FC  38 C0 FF FF */	li r6, -1
/* 80495300  4B FF FD 61 */	bl aQMgr_set_random_string
/* 80495304  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80495308  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8049530C  7C 08 03 A6 */	mtlr r0
/* 80495310  38 21 00 20 */	addi r1, r1, 0x20
/* 80495314  4E 80 00 20 */	blr 
