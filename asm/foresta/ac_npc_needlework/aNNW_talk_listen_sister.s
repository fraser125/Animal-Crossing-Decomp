lbl_8056247C:
/* 8056247C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80562480  7C 08 02 A6 */	mflr r0
/* 80562484  90 01 00 14 */	stw r0, 0x14(r1)
/* 80562488  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056248C  7C 9F 23 78 */	mr r31, r4
/* 80562490  38 80 00 09 */	li r4, 9
/* 80562494  93 C1 00 08 */	stw r30, 8(r1)
/* 80562498  7C 7E 1B 78 */	mr r30, r3
/* 8056249C  38 60 00 04 */	li r3, 4
/* 805624A0  4B E3 5F DD */	bl mDemo_Get_OrderValue
/* 805624A4  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 805624A8  41 82 00 28 */	beq lbl_805624D0
/* 805624AC  38 60 00 04 */	li r3, 4
/* 805624B0  38 80 00 09 */	li r4, 9
/* 805624B4  38 A0 00 00 */	li r5, 0
/* 805624B8  4B E3 5F 81 */	bl mDemo_Set_OrderValue
/* 805624BC  7F C3 F3 78 */	mr r3, r30
/* 805624C0  48 00 1F DD */	bl aNNW_change_talk_proc_next
/* 805624C4  7F C3 F3 78 */	mr r3, r30
/* 805624C8  7F E4 FB 78 */	mr r4, r31
/* 805624CC  4B FF FA 25 */	bl aNNW_change_camera_priority_demo
lbl_805624D0:
/* 805624D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805624D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805624D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805624DC  7C 08 03 A6 */	mtlr r0
/* 805624E0  38 21 00 10 */	addi r1, r1, 0x10
/* 805624E4  4E 80 00 20 */	blr 
