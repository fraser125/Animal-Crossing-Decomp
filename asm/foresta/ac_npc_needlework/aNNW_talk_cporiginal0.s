lbl_80563E24:
/* 80563E24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80563E28  7C 08 02 A6 */	mflr r0
/* 80563E2C  38 80 00 09 */	li r4, 9
/* 80563E30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80563E34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80563E38  93 C1 00 08 */	stw r30, 8(r1)
/* 80563E3C  7C 7E 1B 78 */	mr r30, r3
/* 80563E40  38 60 00 04 */	li r3, 4
/* 80563E44  4B E3 46 39 */	bl mDemo_Get_OrderValue
/* 80563E48  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 80563E4C  4B E5 B8 5D */	bl func_803BF6A8
/* 80563E50  2C 1F 00 00 */	cmpwi r31, 0
/* 80563E54  41 82 00 3C */	beq lbl_80563E90
/* 80563E58  4B E5 CE 41 */	bl mMsg_Check_MainNormalContinue
/* 80563E5C  2C 03 00 01 */	cmpwi r3, 1
/* 80563E60  40 82 00 30 */	bne lbl_80563E90
/* 80563E64  4B E5 B8 45 */	bl func_803BF6A8
/* 80563E68  4B E5 BB DD */	bl mMsg_request_main_disappear_wait_type1
/* 80563E6C  38 60 00 04 */	li r3, 4
/* 80563E70  38 80 00 09 */	li r4, 9
/* 80563E74  38 A0 00 00 */	li r5, 0
/* 80563E78  4B E3 45 C1 */	bl mDemo_Set_OrderValue
/* 80563E7C  88 9E 09 B2 */	lbz r4, 0x9b2(r30)
/* 80563E80  7F C3 F3 78 */	mr r3, r30
/* 80563E84  38 04 00 01 */	addi r0, r4, 1
/* 80563E88  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80563E8C  48 00 05 FD */	bl aNNW_change_talk_proc
lbl_80563E90:
/* 80563E90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80563E94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80563E98  83 C1 00 08 */	lwz r30, 8(r1)
/* 80563E9C  7C 08 03 A6 */	mtlr r0
/* 80563EA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80563EA4  4E 80 00 20 */	blr 
