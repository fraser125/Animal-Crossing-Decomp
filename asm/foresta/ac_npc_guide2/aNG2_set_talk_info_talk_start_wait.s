lbl_805555B8:
/* 805555B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805555BC  7C 08 02 A6 */	mflr r0
/* 805555C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805555C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805555C8  93 C1 00 08 */	stw r30, 8(r1)
/* 805555CC  7C 7E 1B 78 */	mr r30, r3
/* 805555D0  4B FF FC 4D */	bl aNG2_getP_other_pl_name
/* 805555D4  7C 7F 1B 78 */	mr r31, r3
/* 805555D8  4B E6 A0 D1 */	bl func_803BF6A8
/* 805555DC  7F E5 FB 78 */	mr r5, r31
/* 805555E0  38 80 00 00 */	li r4, 0
/* 805555E4  38 C0 00 08 */	li r6, 8
/* 805555E8  4B E6 A6 6D */	bl mMsg_Set_free_str
/* 805555EC  38 60 2A D5 */	li r3, 0x2ad5
/* 805555F0  4B E4 2F 25 */	bl mDemo_Set_msg_num
/* 805555F4  4B FF FE E5 */	bl aNG2_set_default_talk_info
/* 805555F8  38 00 00 01 */	li r0, 1
/* 805555FC  90 1E 09 C4 */	stw r0, 0x9c4(r30)
/* 80555600  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80555604  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80555608  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055560C  7C 08 03 A6 */	mtlr r0
/* 80555610  38 21 00 10 */	addi r1, r1, 0x10
/* 80555614  4E 80 00 20 */	blr 
