lbl_80490E3C:
/* 80490E3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80490E40  7C 08 02 A6 */	mflr r0
/* 80490E44  90 01 00 34 */	stw r0, 0x34(r1)
/* 80490E48  39 61 00 30 */	addi r11, r1, 0x30
/* 80490E4C  4B C0 A0 81 */	bl func_8009AECC
/* 80490E50  7C 7D 1B 78 */	mr r29, r3
/* 80490E54  38 00 00 00 */	li r0, 0
/* 80490E58  80 63 01 78 */	lwz r3, 0x178(r3)
/* 80490E5C  3B 60 FF FF */	li r27, -1
/* 80490E60  3B E0 00 00 */	li r31, 0
/* 80490E64  3B C0 00 00 */	li r30, 0
/* 80490E68  80 63 00 00 */	lwz r3, 0(r3)
/* 80490E6C  83 83 01 7C */	lwz r28, 0x17c(r3)
/* 80490E70  90 1D 0A 8C */	stw r0, 0xa8c(r29)
/* 80490E74  4B F2 E8 35 */	bl func_803BF6A8
/* 80490E78  4B F2 FE D5 */	bl mMsg_Unset_LockContinue
/* 80490E7C  3C 60 81 1D */	lis r3, l_normal_info@ha /* 0x811CEBF0@ha */
/* 80490E80  38 63 EB F0 */	addi r3, r3, l_normal_info@l /* 0x811CEBF0@l */
/* 80490E84  4B FF C7 FD */	bl func_8048D680
/* 80490E88  38 60 00 07 */	li r3, 7
/* 80490E8C  38 00 00 01 */	li r0, 1
/* 80490E90  98 7D 01 85 */	stb r3, 0x185(r29)
/* 80490E94  7F A3 EB 78 */	mr r3, r29
/* 80490E98  98 1D 01 86 */	stb r0, 0x186(r29)
/* 80490E9C  4B FF CA 05 */	bl aQMgr_normal_set_free_str
/* 80490EA0  28 1C 00 00 */	cmplwi r28, 0
/* 80490EA4  41 82 00 08 */	beq lbl_80490EAC
/* 80490EA8  8B DC 00 0D */	lbz r30, 0xd(r28)
lbl_80490EAC:
/* 80490EAC  4B F4 35 19 */	bl mNpc_GetIslandCheckFtrMsg
/* 80490EB0  2C 03 00 00 */	cmpwi r3, 0
/* 80490EB4  40 82 00 18 */	bne lbl_80490ECC
/* 80490EB8  7F A3 EB 78 */	mr r3, r29
/* 80490EBC  7F C4 F3 78 */	mr r4, r30
/* 80490EC0  4B FF F9 79 */	bl aQMgr_decide_ftr_msg_no
/* 80490EC4  3B E0 00 00 */	li r31, 0
/* 80490EC8  7C 7B 1B 78 */	mr r27, r3
lbl_80490ECC:
/* 80490ECC  2C 1B FF FF */	cmpwi r27, -1
/* 80490ED0  40 82 00 88 */	bne lbl_80490F58
/* 80490ED4  4B BC BE 21 */	bl fqrand
/* 80490ED8  3C 60 80 64 */	lis r3, data_80644C24@ha /* 0x80644C24@ha */
/* 80490EDC  C0 03 4C 24 */	lfs f0, data_80644C24@l(r3)  /* 0x80644C24@l */
/* 80490EE0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80490EE4  FC 00 00 1E */	fctiwz f0, f0
/* 80490EE8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80490EEC  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80490EF0  2C 05 00 64 */	cmpwi r5, 0x64
/* 80490EF4  41 80 00 08 */	blt lbl_80490EFC
/* 80490EF8  38 A0 00 63 */	li r5, 0x63
lbl_80490EFC:
/* 80490EFC  3C 60 80 69 */	lis r3, prob_table@ha /* 0x8068B400@ha */
/* 80490F00  38 00 00 04 */	li r0, 4
/* 80490F04  38 83 B4 00 */	addi r4, r3, prob_table@l /* 0x8068B400@l */
/* 80490F08  38 C0 00 00 */	li r6, 0
/* 80490F0C  38 60 00 00 */	li r3, 0
/* 80490F10  7C 09 03 A6 */	mtctr r0
lbl_80490F14:
/* 80490F14  7C 04 18 2E */	lwzx r0, r4, r3
/* 80490F18  7C 05 00 00 */	cmpw r5, r0
/* 80490F1C  40 80 00 0C */	bge lbl_80490F28
/* 80490F20  7C DF 33 78 */	mr r31, r6
/* 80490F24  48 00 00 10 */	b lbl_80490F34
lbl_80490F28:
/* 80490F28  38 C6 00 01 */	addi r6, r6, 1
/* 80490F2C  38 63 00 04 */	addi r3, r3, 4
/* 80490F30  42 00 FF E4 */	bdnz lbl_80490F14
lbl_80490F34:
/* 80490F34  3C 60 80 69 */	lis r3, get_msg_proc@ha /* 0x8068B3F0@ha */
/* 80490F38  57 E0 10 3A */	slwi r0, r31, 2
/* 80490F3C  38 83 B3 F0 */	addi r4, r3, get_msg_proc@l /* 0x8068B3F0@l */
/* 80490F40  7F A3 EB 78 */	mr r3, r29
/* 80490F44  7D 84 00 2E */	lwzx r12, r4, r0
/* 80490F48  7F C4 F3 78 */	mr r4, r30
/* 80490F4C  7D 89 03 A6 */	mtctr r12
/* 80490F50  4E 80 04 21 */	bctrl 
/* 80490F54  7C 7B 1B 78 */	mr r27, r3
lbl_80490F58:
/* 80490F58  2C 1B FF FF */	cmpwi r27, -1
/* 80490F5C  40 82 00 3C */	bne lbl_80490F98
/* 80490F60  2C 1F 00 01 */	cmpwi r31, 1
/* 80490F64  41 82 00 0C */	beq lbl_80490F70
/* 80490F68  2C 1F 00 02 */	cmpwi r31, 2
/* 80490F6C  40 82 00 14 */	bne lbl_80490F80
lbl_80490F70:
/* 80490F70  7F A3 EB 78 */	mr r3, r29
/* 80490F74  7F C4 F3 78 */	mr r4, r30
/* 80490F78  4B FF F8 C1 */	bl aQMgr_decide_ftr_msg_no
/* 80490F7C  7C 7B 1B 78 */	mr r27, r3
lbl_80490F80:
/* 80490F80  2C 1B FF FF */	cmpwi r27, -1
/* 80490F84  40 82 00 14 */	bne lbl_80490F98
/* 80490F88  7F A3 EB 78 */	mr r3, r29
/* 80490F8C  7F C4 F3 78 */	mr r4, r30
/* 80490F90  4B FF F2 0D */	bl aQMgr_decide_normal_msg_no_island
/* 80490F94  7C 7B 1B 78 */	mr r27, r3
lbl_80490F98:
/* 80490F98  93 7D 01 A8 */	stw r27, 0x1a8(r29)
/* 80490F9C  4B F2 E7 0D */	bl func_803BF6A8
/* 80490FA0  80 9D 01 A8 */	lwz r4, 0x1a8(r29)
/* 80490FA4  4B F2 F0 21 */	bl mMsg_Set_continue_msg_num
/* 80490FA8  4B F2 E7 01 */	bl func_803BF6A8
/* 80490FAC  4B F2 FD 7D */	bl mMsg_Set_ForceNext
/* 80490FB0  39 61 00 30 */	addi r11, r1, 0x30
/* 80490FB4  4B C0 9F 65 */	bl func_8009AF18
/* 80490FB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80490FBC  7C 08 03 A6 */	mtlr r0
/* 80490FC0  38 21 00 30 */	addi r1, r1, 0x30
/* 80490FC4  4E 80 00 20 */	blr 
