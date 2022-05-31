lbl_80527E54:
/* 80527E54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80527E58  7C 08 02 A6 */	mflr r0
/* 80527E5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80527E60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80527E64  7C 7F 1B 78 */	mr r31, r3
/* 80527E68  80 63 01 88 */	lwz r3, 0x188(r3)
/* 80527E6C  A0 63 00 04 */	lhz r3, 4(r3)
/* 80527E70  4B EA 6F ED */	bl mNpc_GetLooks
/* 80527E74  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80527E78  38 63 09 AF */	addi r3, r3, 0x9af
/* 80527E7C  4B E7 06 99 */	bl mDemo_Set_msg_num
/* 80527E80  7F E3 FB 78 */	mr r3, r31
/* 80527E84  38 80 00 0D */	li r4, 0xd
/* 80527E88  4B FF FE 6D */	bl aHWN_change_talk_proc
/* 80527E8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80527E90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80527E94  7C 08 03 A6 */	mtlr r0
/* 80527E98  38 21 00 10 */	addi r1, r1, 0x10
/* 80527E9C  4E 80 00 20 */	blr 
