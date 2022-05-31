lbl_80572A3C:
/* 80572A3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80572A40  7C 08 02 A6 */	mflr r0
/* 80572A44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80572A48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80572A4C  7C 7F 1B 78 */	mr r31, r3
/* 80572A50  93 C1 00 08 */	stw r30, 8(r1)
/* 80572A54  4B E4 CC 55 */	bl func_803BF6A8
/* 80572A58  7C 60 1B 78 */	mr r0, r3
/* 80572A5C  80 7F 09 AC */	lwz r3, 0x9ac(r31)
/* 80572A60  7C 1E 03 78 */	mr r30, r0
/* 80572A64  4B E8 8C 31 */	bl mCD_card_format_bg
/* 80572A68  2C 03 00 00 */	cmpwi r3, 0
/* 80572A6C  41 82 00 88 */	beq lbl_80572AF4
/* 80572A70  40 80 00 10 */	bge lbl_80572A80
/* 80572A74  2C 03 FF FF */	cmpwi r3, -1
/* 80572A78  40 80 00 48 */	bge lbl_80572AC0
/* 80572A7C  48 00 00 78 */	b lbl_80572AF4
lbl_80572A80:
/* 80572A80  2C 03 00 02 */	cmpwi r3, 2
/* 80572A84  40 80 00 70 */	bge lbl_80572AF4
/* 80572A88  7F E3 FB 78 */	mr r3, r31
/* 80572A8C  38 80 00 00 */	li r4, 0
/* 80572A90  48 00 03 91 */	bl aNRST_change_talk_proc
/* 80572A94  7F E3 FB 78 */	mr r3, r31
/* 80572A98  38 80 00 10 */	li r4, 0x10
/* 80572A9C  38 A0 00 00 */	li r5, 0
/* 80572AA0  4B FF FA 9D */	bl func_8057253C
/* 80572AA4  7C 7F 1B 78 */	mr r31, r3
/* 80572AA8  4B E4 CC 01 */	bl func_803BF6A8
/* 80572AAC  7F E4 FB 78 */	mr r4, r31
/* 80572AB0  4B E4 D5 15 */	bl mMsg_Set_continue_msg_num
/* 80572AB4  7F C3 F3 78 */	mr r3, r30
/* 80572AB8  4B E4 E2 95 */	bl mMsg_Unset_LockContinue
/* 80572ABC  48 00 00 38 */	b lbl_80572AF4
lbl_80572AC0:
/* 80572AC0  7F E3 FB 78 */	mr r3, r31
/* 80572AC4  38 80 00 03 */	li r4, 3
/* 80572AC8  48 00 03 59 */	bl aNRST_change_talk_proc
/* 80572ACC  7F E3 FB 78 */	mr r3, r31
/* 80572AD0  38 80 00 11 */	li r4, 0x11
/* 80572AD4  38 A0 00 00 */	li r5, 0
/* 80572AD8  4B FF FA 65 */	bl func_8057253C
/* 80572ADC  7C 7F 1B 78 */	mr r31, r3
/* 80572AE0  4B E4 CB C9 */	bl func_803BF6A8
/* 80572AE4  7F E4 FB 78 */	mr r4, r31
/* 80572AE8  4B E4 D4 DD */	bl mMsg_Set_continue_msg_num
/* 80572AEC  7F C3 F3 78 */	mr r3, r30
/* 80572AF0  4B E4 E2 5D */	bl mMsg_Unset_LockContinue
lbl_80572AF4:
/* 80572AF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80572AF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80572AFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80572B00  7C 08 03 A6 */	mtlr r0
/* 80572B04  38 21 00 10 */	addi r1, r1, 0x10
/* 80572B08  4E 80 00 20 */	blr 
