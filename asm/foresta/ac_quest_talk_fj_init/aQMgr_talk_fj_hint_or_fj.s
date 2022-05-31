lbl_80487DF0:
/* 80487DF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80487DF4  7C 08 02 A6 */	mflr r0
/* 80487DF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80487DFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80487E00  7C 7F 1B 78 */	mr r31, r3
/* 80487E04  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 80487E08  2C 00 00 00 */	cmpwi r0, 0
/* 80487E0C  40 82 00 38 */	bne lbl_80487E44
/* 80487E10  4B F3 78 99 */	bl func_803BF6A8
/* 80487E14  4B F3 7C 55 */	bl mMsg_request_main_disappear_wait_type2
/* 80487E18  38 00 00 04 */	li r0, 4
/* 80487E1C  7F E3 FB 78 */	mr r3, r31
/* 80487E20  90 1F 01 B0 */	stw r0, 0x1b0(r31)
/* 80487E24  4B FF FB 8D */	bl aQMgr_fj_set_msg_no
/* 80487E28  38 60 00 01 */	li r3, 1
/* 80487E2C  38 00 00 03 */	li r0, 3
/* 80487E30  98 7F 01 85 */	stb r3, 0x185(r31)
/* 80487E34  98 1F 01 86 */	stb r0, 0x186(r31)
/* 80487E38  4B F3 78 71 */	bl func_803BF6A8
/* 80487E3C  4B F3 8E ED */	bl mMsg_Set_ForceNext
/* 80487E40  48 00 00 58 */	b lbl_80487E98
lbl_80487E44:
/* 80487E44  2C 00 00 01 */	cmpwi r0, 1
/* 80487E48  40 82 00 20 */	bne lbl_80487E68
/* 80487E4C  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 80487E50  38 80 00 09 */	li r4, 9
/* 80487E54  7D 89 03 A6 */	mtctr r12
/* 80487E58  4E 80 04 21 */	bctrl 
/* 80487E5C  38 00 00 00 */	li r0, 0
/* 80487E60  98 1F 01 85 */	stb r0, 0x185(r31)
/* 80487E64  48 00 00 34 */	b lbl_80487E98
lbl_80487E68:
/* 80487E68  38 00 00 0D */	li r0, 0xd
/* 80487E6C  38 A0 25 4A */	li r5, 0x254a
/* 80487E70  90 1F 01 B0 */	stw r0, 0x1b0(r31)
/* 80487E74  38 00 FF FF */	li r0, -1
/* 80487E78  38 80 00 02 */	li r4, 2
/* 80487E7C  90 BF 01 AC */	stw r5, 0x1ac(r31)
/* 80487E80  90 1F 01 A4 */	stw r0, 0x1a4(r31)
/* 80487E84  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 80487E88  7D 89 03 A6 */	mtctr r12
/* 80487E8C  4E 80 04 21 */	bctrl 
/* 80487E90  4B F3 78 19 */	bl func_803BF6A8
/* 80487E94  4B F3 8E 95 */	bl mMsg_Set_ForceNext
lbl_80487E98:
/* 80487E98  38 00 FF FF */	li r0, -1
/* 80487E9C  90 1F 01 A4 */	stw r0, 0x1a4(r31)
/* 80487EA0  4B F3 78 09 */	bl func_803BF6A8
/* 80487EA4  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 80487EA8  4B F3 81 1D */	bl mMsg_Set_continue_msg_num
/* 80487EAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80487EB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80487EB4  7C 08 03 A6 */	mtlr r0
/* 80487EB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80487EBC  4E 80 00 20 */	blr 
