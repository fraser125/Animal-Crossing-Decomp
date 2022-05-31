lbl_8051A5BC:
/* 8051A5BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051A5C0  7C 08 02 A6 */	mflr r0
/* 8051A5C4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8051A5C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051A5CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8051A5D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8051A5D4  7C 7E 1B 78 */	mr r30, r3
/* 8051A5D8  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8051A5DC  38 80 00 02 */	li r4, 2
/* 8051A5E0  3C 63 00 02 */	addis r3, r3, 2
/* 8051A5E4  38 63 04 A4 */	addi r3, r3, 0x4a4
/* 8051A5E8  4B FF FB 09 */	bl aEBRK_check_pl_list
/* 8051A5EC  2C 03 FF FF */	cmpwi r3, -1
/* 8051A5F0  41 82 00 54 */	beq lbl_8051A644
/* 8051A5F4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8051A5F8  54 60 08 3C */	slwi r0, r3, 1
/* 8051A5FC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8051A600  38 61 00 08 */	addi r3, r1, 8
/* 8051A604  3C 84 00 02 */	addis r4, r4, 2
/* 8051A608  7C 84 02 14 */	add r4, r4, r0
/* 8051A60C  A3 E4 04 D8 */	lhz r31, 0x4d8(r4)
/* 8051A610  7F E4 FB 78 */	mr r4, r31
/* 8051A614  4B E9 B3 91 */	bl mIN_copy_name_str
/* 8051A618  7F E3 FB 78 */	mr r3, r31
/* 8051A61C  4B E9 B4 FD */	bl mIN_get_item_article
/* 8051A620  7C 7F 1B 78 */	mr r31, r3
/* 8051A624  4B EA 50 85 */	bl func_803BF6A8
/* 8051A628  7F E7 FB 78 */	mr r7, r31
/* 8051A62C  38 A1 00 08 */	addi r5, r1, 8
/* 8051A630  38 80 00 02 */	li r4, 2
/* 8051A634  38 C0 00 10 */	li r6, 0x10
/* 8051A638  4B EA 58 19 */	bl mMsg_Set_item_str_art
/* 8051A63C  38 60 07 8A */	li r3, 0x78a
/* 8051A640  48 00 00 30 */	b lbl_8051A670
lbl_8051A644:
/* 8051A644  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051A648  38 80 00 01 */	li r4, 1
/* 8051A64C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051A650  3C 63 00 02 */	addis r3, r3, 2
/* 8051A654  38 63 66 84 */	addi r3, r3, 0x6684
/* 8051A658  4B FF FA 99 */	bl aEBRK_check_pl_list
/* 8051A65C  2C 03 FF FF */	cmpwi r3, -1
/* 8051A660  41 82 00 0C */	beq lbl_8051A66C
/* 8051A664  38 60 07 89 */	li r3, 0x789
/* 8051A668  48 00 00 08 */	b lbl_8051A670
lbl_8051A66C:
/* 8051A66C  38 60 07 88 */	li r3, 0x788
lbl_8051A670:
/* 8051A670  4B E7 DE A5 */	bl mDemo_Set_msg_num
/* 8051A674  7F C3 F3 78 */	mr r3, r30
/* 8051A678  38 80 00 01 */	li r4, 1
/* 8051A67C  4B FF F8 5D */	bl aEBRK_set_pl_talk_lock
/* 8051A680  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051A684  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8051A688  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8051A68C  7C 08 03 A6 */	mtlr r0
/* 8051A690  38 21 00 20 */	addi r1, r1, 0x20
/* 8051A694  4E 80 00 20 */	blr 
