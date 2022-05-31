lbl_80573E40:
/* 80573E40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80573E44  7C 08 02 A6 */	mflr r0
/* 80573E48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80573E4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80573E50  7C 7F 1B 78 */	mr r31, r3
/* 80573E54  4B E2 65 61 */	bl mDemo_Set_ListenAble
/* 80573E58  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80573E5C  38 80 00 04 */	li r4, 4
/* 80573E60  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80573E64  3C 63 00 03 */	addis r3, r3, 3
/* 80573E68  88 63 DB A8 */	lbz r3, -0x2458(r3)
/* 80573E6C  4B FF F8 91 */	bl func_805736FC
/* 80573E70  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80573E74  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80573E78  3C 63 00 03 */	addis r3, r3, 3
/* 80573E7C  88 03 88 7C */	lbz r0, -0x7784(r3)
/* 80573E80  2C 00 00 02 */	cmpwi r0, 2
/* 80573E84  41 82 00 30 */	beq lbl_80573EB4
/* 80573E88  40 80 00 10 */	bge lbl_80573E98
/* 80573E8C  2C 00 00 00 */	cmpwi r0, 0
/* 80573E90  41 82 00 14 */	beq lbl_80573EA4
/* 80573E94  48 00 00 40 */	b lbl_80573ED4
lbl_80573E98:
/* 80573E98  2C 00 00 05 */	cmpwi r0, 5
/* 80573E9C  41 82 00 28 */	beq lbl_80573EC4
/* 80573EA0  48 00 00 34 */	b lbl_80573ED4
lbl_80573EA4:
/* 80573EA4  7F E3 FB 78 */	mr r3, r31
/* 80573EA8  38 80 00 02 */	li r4, 2
/* 80573EAC  4B FF FE 9D */	bl aNRTC_change_talk_proc
/* 80573EB0  48 00 00 30 */	b lbl_80573EE0
lbl_80573EB4:
/* 80573EB4  7F E3 FB 78 */	mr r3, r31
/* 80573EB8  38 80 00 00 */	li r4, 0
/* 80573EBC  4B FF FE 8D */	bl aNRTC_change_talk_proc
/* 80573EC0  48 00 00 20 */	b lbl_80573EE0
lbl_80573EC4:
/* 80573EC4  7F E3 FB 78 */	mr r3, r31
/* 80573EC8  38 80 00 08 */	li r4, 8
/* 80573ECC  4B FF FE 7D */	bl aNRTC_change_talk_proc
/* 80573ED0  48 00 00 10 */	b lbl_80573EE0
lbl_80573ED4:
/* 80573ED4  7F E3 FB 78 */	mr r3, r31
/* 80573ED8  38 80 00 01 */	li r4, 1
/* 80573EDC  4B FF FE 6D */	bl aNRTC_change_talk_proc
lbl_80573EE0:
/* 80573EE0  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 80573EE4  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 80573EE8  90 1F 09 64 */	stw r0, 0x964(r31)
/* 80573EEC  4B E4 B7 BD */	bl func_803BF6A8
/* 80573EF0  4B E4 CE 69 */	bl mMsg_Set_idling_req
/* 80573EF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80573EF8  38 60 00 01 */	li r3, 1
/* 80573EFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80573F00  7C 08 03 A6 */	mtlr r0
/* 80573F04  38 21 00 10 */	addi r1, r1, 0x10
/* 80573F08  4E 80 00 20 */	blr 
