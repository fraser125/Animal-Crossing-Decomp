lbl_80486B10:
/* 80486B10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80486B14  7C 08 02 A6 */	mflr r0
/* 80486B18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80486B1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80486B20  4B C1 43 B5 */	bl func_8009AED4
/* 80486B24  7C 7F 1B 78 */	mr r31, r3
/* 80486B28  80 63 01 78 */	lwz r3, 0x178(r3)
/* 80486B2C  83 A3 00 00 */	lwz r29, 0(r3)
/* 80486B30  4B F1 18 C9 */	bl mDemo_Get_talk_actor
/* 80486B34  7C 03 E8 40 */	cmplw r3, r29
/* 80486B38  40 82 00 5C */	bne lbl_80486B94
/* 80486B3C  7F E3 FB 78 */	mr r3, r31
/* 80486B40  4B FF EE 15 */	bl aQMgr_actor_change_talk_init_ovl
/* 80486B44  3C 80 80 69 */	lis r4, talk_proc@ha /* 0x8068AC84@ha */
/* 80486B48  7F E3 FB 78 */	mr r3, r31
/* 80486B4C  38 84 AC 84 */	addi r4, r4, talk_proc@l /* 0x8068AC84@l */
/* 80486B50  81 84 00 04 */	lwz r12, 4(r4)
/* 80486B54  7D 89 03 A6 */	mtctr r12
/* 80486B58  4E 80 04 21 */	bctrl 
/* 80486B5C  7C 7E 1B 78 */	mr r30, r3
/* 80486B60  38 60 00 09 */	li r3, 9
/* 80486B64  38 80 00 00 */	li r4, 0
/* 80486B68  38 A0 00 00 */	li r5, 0
/* 80486B6C  4B F1 18 CD */	bl mDemo_Set_OrderValue
/* 80486B70  2C 1E 00 01 */	cmpwi r30, 1
/* 80486B74  40 82 00 18 */	bne lbl_80486B8C
/* 80486B78  3C 80 80 69 */	lis r4, talk_proc@ha /* 0x8068AC84@ha */
/* 80486B7C  7F E3 FB 78 */	mr r3, r31
/* 80486B80  81 84 AC 84 */	lwz r12, talk_proc@l(r4)  /* 0x8068AC84@l */
/* 80486B84  7D 89 03 A6 */	mtctr r12
/* 80486B88  4E 80 04 21 */	bctrl 
lbl_80486B8C:
/* 80486B8C  38 7F 01 B4 */	addi r3, r31, 0x1b4
/* 80486B90  4B FF F0 E5 */	bl aQMgr_talk_clear_talk_order
lbl_80486B94:
/* 80486B94  4B F1 37 A5 */	bl mDemo_CheckDemo
/* 80486B98  2C 03 00 00 */	cmpwi r3, 0
/* 80486B9C  41 82 00 18 */	beq lbl_80486BB4
/* 80486BA0  7F A4 EB 78 */	mr r4, r29
/* 80486BA4  38 60 00 07 */	li r3, 7
/* 80486BA8  4B F1 36 BD */	bl mDemo_Check
/* 80486BAC  2C 03 00 00 */	cmpwi r3, 0
/* 80486BB0  40 82 01 34 */	bne lbl_80486CE4
lbl_80486BB4:
/* 80486BB4  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 80486BB8  7F E3 FB 78 */	mr r3, r31
/* 80486BBC  38 80 00 03 */	li r4, 3
/* 80486BC0  7D 89 03 A6 */	mtctr r12
/* 80486BC4  4E 80 04 21 */	bctrl 
/* 80486BC8  80 9F 01 80 */	lwz r4, 0x180(r31)
/* 80486BCC  38 00 00 03 */	li r0, 3
/* 80486BD0  7F E3 FB 78 */	mr r3, r31
/* 80486BD4  98 04 00 00 */	stb r0, 0(r4)
/* 80486BD8  4B FF ED 3D */	bl aQMgr_clear_talk_init_ovl
/* 80486BDC  28 1D 00 00 */	cmplwi r29, 0
/* 80486BE0  41 82 00 BC */	beq lbl_80486C9C
/* 80486BE4  88 1D 00 02 */	lbz r0, 2(r29)
/* 80486BE8  28 00 00 04 */	cmplwi r0, 4
/* 80486BEC  40 82 00 B0 */	bne lbl_80486C9C
/* 80486BF0  83 BD 01 7C */	lwz r29, 0x17c(r29)
/* 80486BF4  28 1D 00 00 */	cmplwi r29, 0
/* 80486BF8  41 82 00 A4 */	beq lbl_80486C9C
/* 80486BFC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80486C00  38 9D 00 10 */	addi r4, r29, 0x10
/* 80486C04  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80486C08  38 A0 00 07 */	li r5, 7
/* 80486C0C  3C 63 00 02 */	addis r3, r3, 2
/* 80486C10  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80486C14  4B F4 51 65 */	bl mNpc_GetAnimalMemoryIdx
/* 80486C18  2C 03 FF FF */	cmpwi r3, -1
/* 80486C1C  41 82 00 80 */	beq lbl_80486C9C
/* 80486C20  1C 83 01 38 */	mulli r4, r3, 0x138
/* 80486C24  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80486C28  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80486C2C  3B C4 00 10 */	addi r30, r4, 0x10
/* 80486C30  7F DD F2 14 */	add r30, r29, r30
/* 80486C34  3C 83 00 02 */	addis r4, r3, 2
/* 80486C38  38 7E 00 14 */	addi r3, r30, 0x14
/* 80486C3C  38 84 61 20 */	addi r4, r4, 0x6120
/* 80486C40  4B F8 05 F5 */	bl lbRTC_TimeCopy
/* 80486C44  7F A3 EB 78 */	mr r3, r29
/* 80486C48  4B F4 F0 B5 */	bl mNpc_CheckIslandAnimal
/* 80486C4C  2C 03 00 00 */	cmpwi r3, 0
/* 80486C50  40 82 00 30 */	bne lbl_80486C80
/* 80486C54  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80486C58  38 7E 00 1C */	addi r3, r30, 0x1c
/* 80486C5C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80486C60  3C 84 00 01 */	addis r4, r4, 1
/* 80486C64  38 84 91 20 */	addi r4, r4, -28384
/* 80486C68  4B F2 CC 89 */	bl mLd_CopyLandName
/* 80486C6C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80486C70  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80486C74  3C 63 00 01 */	addis r3, r3, 1
/* 80486C78  A0 03 91 2A */	lhz r0, -0x6ed6(r3)
/* 80486C7C  B0 1E 00 24 */	sth r0, 0x24(r30)
lbl_80486C80:
/* 80486C80  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80486C84  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80486C88  3C 63 00 02 */	addis r3, r3, 2
/* 80486C8C  80 03 0F 08 */	lwz r0, 0xf08(r3)
/* 80486C90  80 63 0F 0C */	lwz r3, 0xf0c(r3)
/* 80486C94  90 7E 00 2C */	stw r3, 0x2c(r30)
/* 80486C98  90 1E 00 28 */	stw r0, 0x28(r30)
lbl_80486C9C:
/* 80486C9C  80 7F 01 78 */	lwz r3, 0x178(r31)
/* 80486CA0  80 63 00 00 */	lwz r3, 0(r3)
/* 80486CA4  83 A3 01 7C */	lwz r29, 0x17c(r3)
/* 80486CA8  7F A3 EB 78 */	mr r3, r29
/* 80486CAC  4B F4 5A DD */	bl mNpc_SearchAnimalPersonalID
/* 80486CB0  7C 60 1B 78 */	mr r0, r3
/* 80486CB4  7F A3 EB 78 */	mr r3, r29
/* 80486CB8  7C 1E 03 78 */	mr r30, r0
/* 80486CBC  4B F4 F0 41 */	bl mNpc_CheckIslandAnimal
/* 80486CC0  2C 03 00 01 */	cmpwi r3, 1
/* 80486CC4  40 82 00 14 */	bne lbl_80486CD8
/* 80486CC8  88 9D 00 0D */	lbz r4, 0xd(r29)
/* 80486CCC  38 60 00 0F */	li r3, 0xf
/* 80486CD0  4B F4 CB 9D */	bl mNpc_TalkEndMove
/* 80486CD4  48 00 00 10 */	b lbl_80486CE4
lbl_80486CD8:
/* 80486CD8  88 9D 00 0D */	lbz r4, 0xd(r29)
/* 80486CDC  7F C3 F3 78 */	mr r3, r30
/* 80486CE0  4B F4 CB 8D */	bl mNpc_TalkEndMove
lbl_80486CE4:
/* 80486CE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80486CE8  4B C1 42 39 */	bl func_8009AF20
/* 80486CEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80486CF0  7C 08 03 A6 */	mtlr r0
/* 80486CF4  38 21 00 20 */	addi r1, r1, 0x20
/* 80486CF8  4E 80 00 20 */	blr 
