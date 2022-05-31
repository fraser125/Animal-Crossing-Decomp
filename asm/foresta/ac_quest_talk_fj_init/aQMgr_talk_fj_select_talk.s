lbl_80487BC8:
/* 80487BC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80487BCC  7C 08 02 A6 */	mflr r0
/* 80487BD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80487BD4  39 61 00 20 */	addi r11, r1, 0x20
/* 80487BD8  4B C1 32 FD */	bl func_8009AED4
/* 80487BDC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80487BE0  7C 7F 1B 78 */	mr r31, r3
/* 80487BE4  38 00 00 00 */	li r0, 0
/* 80487BE8  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80487BEC  90 1F 0A 8C */	stw r0, 0xa8c(r31)
/* 80487BF0  3F C3 00 02 */	addis r30, r3, 2
/* 80487BF4  4B F3 7A B5 */	bl func_803BF6A8
/* 80487BF8  4B F3 91 55 */	bl mMsg_Unset_LockContinue
/* 80487BFC  7F E3 FB 78 */	mr r3, r31
/* 80487C00  4B FF FE CD */	bl aQMgr_fj_check_own_quest
/* 80487C04  7C 7D 1B 78 */	mr r29, r3
/* 80487C08  2C 1D FF FF */	cmpwi r29, -1
/* 80487C0C  41 82 00 9C */	beq lbl_80487CA8
/* 80487C10  1C 7D 00 34 */	mulli r3, r29, 0x34
/* 80487C14  38 03 02 1C */	addi r0, r3, 0x21c
/* 80487C18  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80487C1C  28 03 00 00 */	cmplwi r3, 0
/* 80487C20  41 82 00 88 */	beq lbl_80487CA8
/* 80487C24  88 63 00 00 */	lbz r3, 0(r3)
/* 80487C28  54 60 D7 BE */	rlwinm r0, r3, 0x1a, 0x1e, 0x1f
/* 80487C2C  28 00 00 01 */	cmplwi r0, 1
/* 80487C30  40 82 00 18 */	bne lbl_80487C48
/* 80487C34  54 60 06 BE */	clrlwi r0, r3, 0x1a
/* 80487C38  28 00 00 06 */	cmplwi r0, 6
/* 80487C3C  40 82 00 0C */	bne lbl_80487C48
/* 80487C40  3B A0 FF FF */	li r29, -1
/* 80487C44  48 00 00 64 */	b lbl_80487CA8
lbl_80487C48:
/* 80487C48  38 00 00 68 */	li r0, 0x68
/* 80487C4C  7F E3 FB 78 */	mr r3, r31
/* 80487C50  90 1F 01 88 */	stw r0, 0x188(r31)
/* 80487C54  88 9E 61 22 */	lbz r4, 0x6122(r30)
/* 80487C58  4B FF FF 35 */	bl aQMgr_get_select_hellow_no
/* 80487C5C  90 7F 01 8C */	stw r3, 0x18c(r31)
/* 80487C60  38 60 00 03 */	li r3, 3
/* 80487C64  38 A0 FF FF */	li r5, -1
/* 80487C68  38 00 00 02 */	li r0, 2
/* 80487C6C  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 80487C70  7F E3 FB 78 */	mr r3, r31
/* 80487C74  38 80 00 00 */	li r4, 0
/* 80487C78  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 80487C7C  98 1F 01 86 */	stb r0, 0x186(r31)
/* 80487C80  93 BF 09 30 */	stw r29, 0x930(r31)
/* 80487C84  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 80487C88  7D 89 03 A6 */	mtctr r12
/* 80487C8C  4E 80 04 21 */	bctrl 
/* 80487C90  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 80487C94  7F E3 FB 78 */	mr r3, r31
/* 80487C98  38 80 00 01 */	li r4, 1
/* 80487C9C  7D 89 03 A6 */	mtctr r12
/* 80487CA0  4E 80 04 21 */	bctrl 
/* 80487CA4  90 7F 01 DC */	stw r3, 0x1dc(r31)
lbl_80487CA8:
/* 80487CA8  2C 1D FF FF */	cmpwi r29, -1
/* 80487CAC  40 82 00 38 */	bne lbl_80487CE4
/* 80487CB0  88 9E 61 22 */	lbz r4, 0x6122(r30)
/* 80487CB4  7F E3 FB 78 */	mr r3, r31
/* 80487CB8  4B FF FE D5 */	bl aQMgr_get_select_hellow_no
/* 80487CBC  90 7F 01 88 */	stw r3, 0x188(r31)
/* 80487CC0  38 00 00 2F */	li r0, 0x2f
/* 80487CC4  38 80 00 03 */	li r4, 3
/* 80487CC8  38 60 FF FF */	li r3, -1
/* 80487CCC  90 1F 01 8C */	stw r0, 0x18c(r31)
/* 80487CD0  38 00 00 01 */	li r0, 1
/* 80487CD4  90 9F 01 A0 */	stw r4, 0x1a0(r31)
/* 80487CD8  90 7F 01 A4 */	stw r3, 0x1a4(r31)
/* 80487CDC  98 1F 01 86 */	stb r0, 0x186(r31)
/* 80487CE0  93 BF 09 30 */	stw r29, 0x930(r31)
lbl_80487CE4:
/* 80487CE4  38 60 00 05 */	li r3, 5
/* 80487CE8  4B F5 C6 E9 */	bl mQst_GetRandom
/* 80487CEC  38 63 01 6A */	addi r3, r3, 0x16a
/* 80487CF0  38 00 02 A6 */	li r0, 0x2a6
/* 80487CF4  90 7F 01 90 */	stw r3, 0x190(r31)
/* 80487CF8  90 1F 01 AC */	stw r0, 0x1ac(r31)
/* 80487CFC  4B EF B8 45 */	bl func_80383540
/* 80487D00  4B EF C7 DD */	bl mChoice_no_b_set
/* 80487D04  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 80487D08  7F E3 FB 78 */	mr r3, r31
/* 80487D0C  38 80 00 02 */	li r4, 2
/* 80487D10  7D 89 03 A6 */	mtctr r12
/* 80487D14  4E 80 04 21 */	bctrl 
/* 80487D18  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 80487D1C  7F E3 FB 78 */	mr r3, r31
/* 80487D20  38 80 00 04 */	li r4, 4
/* 80487D24  7D 89 03 A6 */	mtctr r12
/* 80487D28  4E 80 04 21 */	bctrl 
/* 80487D2C  38 00 00 00 */	li r0, 0
/* 80487D30  98 1F 01 85 */	stb r0, 0x185(r31)
/* 80487D34  4B F3 79 75 */	bl func_803BF6A8
/* 80487D38  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 80487D3C  4B F3 82 89 */	bl mMsg_Set_continue_msg_num
/* 80487D40  39 61 00 20 */	addi r11, r1, 0x20
/* 80487D44  4B C1 31 DD */	bl func_8009AF20
/* 80487D48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80487D4C  7C 08 03 A6 */	mtlr r0
/* 80487D50  38 21 00 20 */	addi r1, r1, 0x20
/* 80487D54  4E 80 00 20 */	blr 
