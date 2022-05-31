lbl_80587B60:
/* 80587B60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80587B64  7C 08 02 A6 */	mflr r0
/* 80587B68  90 01 00 34 */	stw r0, 0x34(r1)
/* 80587B6C  39 61 00 30 */	addi r11, r1, 0x30
/* 80587B70  4B B1 33 5D */	bl func_8009AECC
/* 80587B74  7C 7F 1B 78 */	mr r31, r3
/* 80587B78  38 60 00 04 */	li r3, 4
/* 80587B7C  38 80 00 01 */	li r4, 1
/* 80587B80  4B E1 08 FD */	bl mDemo_Get_OrderValue
/* 80587B84  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80587B88  2C 00 00 02 */	cmpwi r0, 2
/* 80587B8C  40 82 01 18 */	bne lbl_80587CA4
/* 80587B90  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80587B94  3B A0 20 00 */	li r29, 0x2000
/* 80587B98  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80587B9C  3B 80 00 00 */	li r28, 0
/* 80587BA0  3C 63 00 02 */	addis r3, r3, 2
/* 80587BA4  3B 60 00 00 */	li r27, 0
/* 80587BA8  80 63 60 B0 */	lwz r3, 0x60b0(r3)
/* 80587BAC  28 03 00 00 */	cmplwi r3, 0
/* 80587BB0  41 82 00 94 */	beq lbl_80587C44
/* 80587BB4  80 03 00 04 */	lwz r0, 4(r3)
/* 80587BB8  2C 00 00 03 */	cmpwi r0, 3
/* 80587BBC  40 82 00 88 */	bne lbl_80587C44
/* 80587BC0  83 C3 00 00 */	lwz r30, 0(r3)
/* 80587BC4  28 1E 00 00 */	cmplwi r30, 0
/* 80587BC8  41 82 00 7C */	beq lbl_80587C44
/* 80587BCC  80 1E 01 84 */	lwz r0, 0x184(r30)
/* 80587BD0  A3 BE 01 88 */	lhz r29, 0x188(r30)
/* 80587BD4  2C 00 00 03 */	cmpwi r0, 3
/* 80587BD8  41 82 00 0C */	beq lbl_80587BE4
/* 80587BDC  2C 00 00 04 */	cmpwi r0, 4
/* 80587BE0  40 82 00 38 */	bne lbl_80587C18
lbl_80587BE4:
/* 80587BE4  4B E3 7A C5 */	bl func_803BF6A8
/* 80587BE8  7C 7B 1B 78 */	mr r27, r3
/* 80587BEC  7F A4 EB 78 */	mr r4, r29
/* 80587BF0  38 61 00 08 */	addi r3, r1, 8
/* 80587BF4  4B E2 DD B1 */	bl mIN_copy_name_str
/* 80587BF8  7F A3 EB 78 */	mr r3, r29
/* 80587BFC  4B E2 DF 1D */	bl mIN_get_item_article
/* 80587C00  7C 67 1B 78 */	mr r7, r3
/* 80587C04  7F 63 DB 78 */	mr r3, r27
/* 80587C08  38 A1 00 08 */	addi r5, r1, 8
/* 80587C0C  38 80 00 00 */	li r4, 0
/* 80587C10  38 C0 00 10 */	li r6, 0x10
/* 80587C14  4B E3 82 3D */	bl mMsg_Set_item_str_art
lbl_80587C18:
/* 80587C18  80 1E 01 84 */	lwz r0, 0x184(r30)
/* 80587C1C  2C 00 00 03 */	cmpwi r0, 3
/* 80587C20  40 80 00 1C */	bge lbl_80587C3C
/* 80587C24  2C 00 00 01 */	cmpwi r0, 1
/* 80587C28  40 80 00 08 */	bge lbl_80587C30
/* 80587C2C  48 00 00 10 */	b lbl_80587C3C
lbl_80587C30:
/* 80587C30  3B 80 00 00 */	li r28, 0
/* 80587C34  3B 60 00 00 */	li r27, 0
/* 80587C38  48 00 00 0C */	b lbl_80587C44
lbl_80587C3C:
/* 80587C3C  3B 80 00 01 */	li r28, 1
/* 80587C40  3B 60 00 01 */	li r27, 1
lbl_80587C44:
/* 80587C44  7F A5 EB 78 */	mr r5, r29
/* 80587C48  38 60 00 05 */	li r3, 5
/* 80587C4C  38 80 00 00 */	li r4, 0
/* 80587C50  4B E1 07 E9 */	bl mDemo_Set_OrderValue
/* 80587C54  38 60 00 05 */	li r3, 5
/* 80587C58  38 80 00 01 */	li r4, 1
/* 80587C5C  38 A0 00 07 */	li r5, 7
/* 80587C60  4B E1 07 D9 */	bl mDemo_Set_OrderValue
/* 80587C64  7F 85 E3 78 */	mr r5, r28
/* 80587C68  38 60 00 05 */	li r3, 5
/* 80587C6C  38 80 00 02 */	li r4, 2
/* 80587C70  4B E1 07 C9 */	bl mDemo_Set_OrderValue
/* 80587C74  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80587C78  7F A4 EB 78 */	mr r4, r29
/* 80587C7C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80587C80  7F 65 DB 78 */	mr r5, r27
/* 80587C84  3C 63 00 02 */	addis r3, r3, 2
/* 80587C88  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80587C8C  4B E5 92 7D */	bl mPr_SetFreePossessionItem
/* 80587C90  4B E3 7A 19 */	bl func_803BF6A8
/* 80587C94  4B E3 90 AD */	bl mMsg_Set_LockContinue
/* 80587C98  7F E3 FB 78 */	mr r3, r31
/* 80587C9C  38 80 00 00 */	li r4, 0
/* 80587CA0  48 00 00 75 */	bl aPST_change_talk_proc
lbl_80587CA4:
/* 80587CA4  39 61 00 30 */	addi r11, r1, 0x30
/* 80587CA8  4B B1 32 71 */	bl func_8009AF18
/* 80587CAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80587CB0  7C 08 03 A6 */	mtlr r0
/* 80587CB4  38 21 00 30 */	addi r1, r1, 0x30
/* 80587CB8  4E 80 00 20 */	blr 
