lbl_80569E60:
/* 80569E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80569E64  7C 08 02 A6 */	mflr r0
/* 80569E68  38 A0 00 04 */	li r5, 4
/* 80569E6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80569E70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80569E74  3B E0 00 00 */	li r31, 0
/* 80569E78  93 C1 00 08 */	stw r30, 8(r1)
/* 80569E7C  7C 7E 1B 78 */	mr r30, r3
/* 80569E80  4B FF FF 49 */	bl aNPS2_change_talk_proc
/* 80569E84  4B E3 05 31 */	bl mDemo_Set_ListenAble
/* 80569E88  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 80569E8C  38 00 00 00 */	li r0, 0
/* 80569E90  38 83 B5 4C */	addi r4, r3, none_proc1@l /* 0x803BB54C@l */
/* 80569E94  38 60 00 01 */	li r3, 1
/* 80569E98  90 9E 09 64 */	stw r4, 0x964(r30)
/* 80569E9C  98 1E 09 C4 */	stb r0, 0x9c4(r30)
/* 80569EA0  4B E2 E9 19 */	bl mDemo_Set_talk_return_demo_wait
/* 80569EA4  4B E9 66 E5 */	bl mCD_GetThisLandSlotNo
/* 80569EA8  2C 03 00 00 */	cmpwi r3, 0
/* 80569EAC  41 82 00 0C */	beq lbl_80569EB8
/* 80569EB0  2C 03 00 01 */	cmpwi r3, 1
/* 80569EB4  40 82 00 0C */	bne lbl_80569EC0
lbl_80569EB8:
/* 80569EB8  7C 7F 1B 78 */	mr r31, r3
/* 80569EBC  48 00 00 28 */	b lbl_80569EE4
lbl_80569EC0:
/* 80569EC0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80569EC4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80569EC8  3C 63 00 03 */	addis r3, r3, 3
/* 80569ECC  88 03 DB A8 */	lbz r0, -0x2458(r3)
/* 80569ED0  28 00 00 00 */	cmplwi r0, 0
/* 80569ED4  41 82 00 0C */	beq lbl_80569EE0
/* 80569ED8  28 00 00 01 */	cmplwi r0, 1
/* 80569EDC  40 82 00 08 */	bne lbl_80569EE4
lbl_80569EE0:
/* 80569EE0  7C 1F 03 78 */	mr r31, r0
lbl_80569EE4:
/* 80569EE4  7F E3 FB 78 */	mr r3, r31
/* 80569EE8  38 80 00 04 */	li r4, 4
/* 80569EEC  4B FF D5 25 */	bl aNPS2_set_slot_name
/* 80569EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80569EF4  38 60 00 01 */	li r3, 1
/* 80569EF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80569EFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80569F00  7C 08 03 A6 */	mtlr r0
/* 80569F04  38 21 00 10 */	addi r1, r1, 0x10
/* 80569F08  4E 80 00 20 */	blr 
