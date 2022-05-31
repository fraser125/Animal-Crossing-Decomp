lbl_805625A8:
/* 805625A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805625AC  7C 08 02 A6 */	mflr r0
/* 805625B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805625B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805625B8  7C 9F 23 78 */	mr r31, r4
/* 805625BC  38 80 00 09 */	li r4, 9
/* 805625C0  93 C1 00 08 */	stw r30, 8(r1)
/* 805625C4  7C 7E 1B 78 */	mr r30, r3
/* 805625C8  38 60 00 04 */	li r3, 4
/* 805625CC  4B E3 5E B1 */	bl mDemo_Get_OrderValue
/* 805625D0  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 805625D4  41 82 00 2C */	beq lbl_80562600
/* 805625D8  38 60 00 04 */	li r3, 4
/* 805625DC  38 80 00 09 */	li r4, 9
/* 805625E0  38 A0 00 00 */	li r5, 0
/* 805625E4  4B E3 5E 55 */	bl mDemo_Set_OrderValue
/* 805625E8  7F C3 F3 78 */	mr r3, r30
/* 805625EC  38 80 00 41 */	li r4, 0x41
/* 805625F0  48 00 1E 99 */	bl aNNW_change_talk_proc
/* 805625F4  7F C3 F3 78 */	mr r3, r30
/* 805625F8  7F E4 FB 78 */	mr r4, r31
/* 805625FC  4B FF F9 85 */	bl aNNW_change_camera_return_demo
lbl_80562600:
/* 80562600  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80562604  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80562608  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056260C  7C 08 03 A6 */	mtlr r0
/* 80562610  38 21 00 10 */	addi r1, r1, 0x10
/* 80562614  4E 80 00 20 */	blr 
