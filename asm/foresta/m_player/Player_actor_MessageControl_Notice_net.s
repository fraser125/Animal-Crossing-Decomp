lbl_804F4410:
/* 804F4410  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F4414  7C 08 02 A6 */	mflr r0
/* 804F4418  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F441C  39 61 00 20 */	addi r11, r1, 0x20
/* 804F4420  4B BA 6A B1 */	bl func_8009AED0
/* 804F4424  7C 7F 1B 78 */	mr r31, r3
/* 804F4428  7C 9C 23 78 */	mr r28, r4
/* 804F442C  7C BD 2B 78 */	mr r29, r5
/* 804F4430  4B EC B2 79 */	bl func_803BF6A8
/* 804F4434  80 1F 0D 18 */	lwz r0, 0xd18(r31)
/* 804F4438  7C 7E 1B 78 */	mr r30, r3
/* 804F443C  2C 00 00 02 */	cmpwi r0, 2
/* 804F4440  41 82 01 28 */	beq lbl_804F4568
/* 804F4444  40 80 00 14 */	bge lbl_804F4458
/* 804F4448  2C 00 00 00 */	cmpwi r0, 0
/* 804F444C  41 82 00 1C */	beq lbl_804F4468
/* 804F4450  40 80 00 68 */	bge lbl_804F44B8
/* 804F4454  48 00 01 C0 */	b lbl_804F4614
lbl_804F4458:
/* 804F4458  2C 00 00 04 */	cmpwi r0, 4
/* 804F445C  41 82 01 8C */	beq lbl_804F45E8
/* 804F4460  40 80 01 B4 */	bge lbl_804F4614
/* 804F4464  48 00 01 40 */	b lbl_804F45A4
lbl_804F4468:
/* 804F4468  80 1F 0D 24 */	lwz r0, 0xd24(r31)
/* 804F446C  2C 00 00 00 */	cmpwi r0, 0
/* 804F4470  41 82 00 38 */	beq lbl_804F44A8
/* 804F4474  2C 1D 00 00 */	cmpwi r29, 0
/* 804F4478  41 82 00 38 */	beq lbl_804F44B0
/* 804F447C  4B EC C8 1D */	bl mMsg_Check_MainNormalContinue
/* 804F4480  2C 03 00 00 */	cmpwi r3, 0
/* 804F4484  41 82 00 2C */	beq lbl_804F44B0
/* 804F4488  7F C3 F3 78 */	mr r3, r30
/* 804F448C  38 80 0A 4F */	li r4, 0xa4f
/* 804F4490  4B EC BB 35 */	bl mMsg_Set_continue_msg_num
/* 804F4494  7F C3 F3 78 */	mr r3, r30
/* 804F4498  4B EC C8 B5 */	bl mMsg_Unset_LockContinue
/* 804F449C  38 00 00 01 */	li r0, 1
/* 804F44A0  90 1F 0D 18 */	stw r0, 0xd18(r31)
/* 804F44A4  48 00 00 0C */	b lbl_804F44B0
lbl_804F44A8:
/* 804F44A8  38 00 00 02 */	li r0, 2
/* 804F44AC  90 1F 0D 18 */	stw r0, 0xd18(r31)
lbl_804F44B0:
/* 804F44B0  38 60 FF FF */	li r3, -1
/* 804F44B4  48 00 01 88 */	b lbl_804F463C
lbl_804F44B8:
/* 804F44B8  4B EC C8 21 */	bl mMsg_Check_MainNormal
/* 804F44BC  2C 03 00 00 */	cmpwi r3, 0
/* 804F44C0  40 82 00 A0 */	bne lbl_804F4560
/* 804F44C4  4B FE C4 7D */	bl Player_actor_Get_ItemKind_from_submenu
/* 804F44C8  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804F44CC  3C A0 80 64 */	lis r5, lit_950@ha /* 0x806468F4@ha */
/* 804F44D0  38 C4 83 54 */	addi r6, r4, lit_7381@l /* 0x80648354@l */
/* 804F44D4  C0 45 68 F4 */	lfs f2, lit_950@l(r5)  /* 0x806468F4@l */
/* 804F44D8  C0 26 00 00 */	lfs f1, 0(r6)
/* 804F44DC  7C 64 07 74 */	extsb r4, r3
/* 804F44E0  7F E3 FB 78 */	mr r3, r31
/* 804F44E4  38 A0 00 0C */	li r5, 0xc
/* 804F44E8  38 C0 00 09 */	li r6, 9
/* 804F44EC  38 E0 00 00 */	li r7, 0
/* 804F44F0  4B FE 5B 2D */	bl Player_actor_SetupItem_Base2
/* 804F44F4  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804F44F8  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804F44FC  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804F4500  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804F4504  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F4508  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F450C  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804F4510  7F E3 FB 78 */	mr r3, r31
/* 804F4514  FC 40 08 90 */	fmr f2, f1
/* 804F4518  7F 84 E3 78 */	mr r4, r28
/* 804F451C  38 A0 00 81 */	li r5, 0x81
/* 804F4520  38 C0 00 81 */	li r6, 0x81
/* 804F4524  38 E0 00 00 */	li r7, 0
/* 804F4528  39 00 00 00 */	li r8, 0
/* 804F452C  4B FE 22 E5 */	bl Player_actor_InitAnimation_Base2
/* 804F4530  38 60 00 28 */	li r3, 0x28
/* 804F4534  38 80 01 68 */	li r4, 0x168
/* 804F4538  4B E8 7C F9 */	bl mBGMPsComp_delete_ps_fanfare
/* 804F453C  38 60 00 4B */	li r3, 0x4b
/* 804F4540  38 80 01 68 */	li r4, 0x168
/* 804F4544  4B E8 74 8D */	bl mBGMPsComp_make_ps_fanfare
/* 804F4548  7F C3 F3 78 */	mr r3, r30
/* 804F454C  4B EC C7 F5 */	bl mMsg_Set_LockContinue
/* 804F4550  7F E3 FB 78 */	mr r3, r31
/* 804F4554  4B FF FE 59 */	bl Player_actor_DeleteMark_Notice_net
/* 804F4558  38 00 00 02 */	li r0, 2
/* 804F455C  90 1F 0D 18 */	stw r0, 0xd18(r31)
lbl_804F4560:
/* 804F4560  38 60 FF FF */	li r3, -1
/* 804F4564  48 00 00 D8 */	b lbl_804F463C
lbl_804F4568:
/* 804F4568  80 1F 0D 1C */	lwz r0, 0xd1c(r31)
/* 804F456C  2C 00 00 00 */	cmpwi r0, 0
/* 804F4570  41 82 00 14 */	beq lbl_804F4584
/* 804F4574  4B EC C7 9D */	bl mMsg_Set_CancelNormalContinue
/* 804F4578  38 00 00 04 */	li r0, 4
/* 804F457C  90 1F 0D 18 */	stw r0, 0xd18(r31)
/* 804F4580  48 00 00 14 */	b lbl_804F4594
lbl_804F4584:
/* 804F4584  38 80 0A 4D */	li r4, 0xa4d
/* 804F4588  4B EC BA 3D */	bl mMsg_Set_continue_msg_num
/* 804F458C  38 00 00 03 */	li r0, 3
/* 804F4590  90 1F 0D 18 */	stw r0, 0xd18(r31)
lbl_804F4594:
/* 804F4594  7F C3 F3 78 */	mr r3, r30
/* 804F4598  4B EC C7 B5 */	bl mMsg_Unset_LockContinue
/* 804F459C  38 60 FF FF */	li r3, -1
/* 804F45A0  48 00 00 9C */	b lbl_804F463C
lbl_804F45A4:
/* 804F45A4  4B E8 EF 9D */	bl func_80383540
/* 804F45A8  4B E8 F5 C5 */	bl mChoice_Get_ChoseNum
/* 804F45AC  2C 03 00 00 */	cmpwi r3, 0
/* 804F45B0  40 82 00 18 */	bne lbl_804F45C8
/* 804F45B4  38 60 00 01 */	li r3, 1
/* 804F45B8  38 00 00 04 */	li r0, 4
/* 804F45BC  90 7F 0D 20 */	stw r3, 0xd20(r31)
/* 804F45C0  90 1F 0D 18 */	stw r0, 0xd18(r31)
/* 804F45C4  48 00 00 1C */	b lbl_804F45E0
lbl_804F45C8:
/* 804F45C8  2C 03 00 01 */	cmpwi r3, 1
/* 804F45CC  40 82 00 14 */	bne lbl_804F45E0
/* 804F45D0  38 60 00 00 */	li r3, 0
/* 804F45D4  38 00 00 04 */	li r0, 4
/* 804F45D8  90 7F 0D 20 */	stw r3, 0xd20(r31)
/* 804F45DC  90 1F 0D 18 */	stw r0, 0xd18(r31)
lbl_804F45E0:
/* 804F45E0  38 60 FF FF */	li r3, -1
/* 804F45E4  48 00 00 58 */	b lbl_804F463C
lbl_804F45E8:
/* 804F45E8  7F E4 FB 78 */	mr r4, r31
/* 804F45EC  38 60 00 09 */	li r3, 9
/* 804F45F0  4B EA 5C 75 */	bl mDemo_Check
/* 804F45F4  2C 03 00 00 */	cmpwi r3, 0
/* 804F45F8  40 82 00 14 */	bne lbl_804F460C
/* 804F45FC  38 00 00 05 */	li r0, 5
/* 804F4600  7F E3 FB 78 */	mr r3, r31
/* 804F4604  90 1F 0D 18 */	stw r0, 0xd18(r31)
/* 804F4608  4B FF FD A5 */	bl Player_actor_DeleteMark_Notice_net
lbl_804F460C:
/* 804F460C  38 60 FF FF */	li r3, -1
/* 804F4610  48 00 00 2C */	b lbl_804F463C
lbl_804F4614:
/* 804F4614  80 1F 0D 1C */	lwz r0, 0xd1c(r31)
/* 804F4618  2C 00 00 00 */	cmpwi r0, 0
/* 804F461C  41 82 00 0C */	beq lbl_804F4628
/* 804F4620  38 60 00 30 */	li r3, 0x30
/* 804F4624  48 00 00 18 */	b lbl_804F463C
lbl_804F4628:
/* 804F4628  80 1F 0D 20 */	lwz r0, 0xd20(r31)
/* 804F462C  38 60 00 30 */	li r3, 0x30
/* 804F4630  2C 00 00 00 */	cmpwi r0, 0
/* 804F4634  40 82 00 08 */	bne lbl_804F463C
/* 804F4638  38 60 00 53 */	li r3, 0x53
lbl_804F463C:
/* 804F463C  39 61 00 20 */	addi r11, r1, 0x20
/* 804F4640  4B BA 68 DD */	bl func_8009AF1C
/* 804F4644  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F4648  7C 08 03 A6 */	mtlr r0
/* 804F464C  38 21 00 20 */	addi r1, r1, 0x20
/* 804F4650  4E 80 00 20 */	blr 
