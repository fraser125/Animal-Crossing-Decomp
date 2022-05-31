lbl_8056B83C:
/* 8056B83C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056B840  7C 08 02 A6 */	mflr r0
/* 8056B844  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056B848  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8056B84C  A8 03 09 A2 */	lha r0, 0x9a2(r3)
/* 8056B850  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056B854  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8056B858  3C 84 00 02 */	addis r4, r4, 2
/* 8056B85C  54 00 08 3C */	slwi r0, r0, 1
/* 8056B860  7C 84 02 14 */	add r4, r4, r0
/* 8056B864  38 61 00 08 */	addi r3, r1, 8
/* 8056B868  A3 E4 0E D0 */	lhz r31, 0xed0(r4)
/* 8056B86C  7F E4 FB 78 */	mr r4, r31
/* 8056B870  4B E4 A1 35 */	bl mIN_copy_name_str
/* 8056B874  7F E3 FB 78 */	mr r3, r31
/* 8056B878  4B E4 A2 A1 */	bl mIN_get_item_article
/* 8056B87C  7C 7F 1B 78 */	mr r31, r3
/* 8056B880  4B E5 3E 29 */	bl func_803BF6A8
/* 8056B884  7F E7 FB 78 */	mr r7, r31
/* 8056B888  38 A1 00 08 */	addi r5, r1, 8
/* 8056B88C  38 80 00 00 */	li r4, 0
/* 8056B890  38 C0 00 10 */	li r6, 0x10
/* 8056B894  4B E5 45 BD */	bl mMsg_Set_item_str_art
/* 8056B898  38 60 07 7E */	li r3, 0x77e
/* 8056B89C  4B E2 CC 79 */	bl mDemo_Set_msg_num
/* 8056B8A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056B8A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8056B8A8  7C 08 03 A6 */	mtlr r0
/* 8056B8AC  38 21 00 20 */	addi r1, r1, 0x20
/* 8056B8B0  4E 80 00 20 */	blr 
