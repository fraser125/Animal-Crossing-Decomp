lbl_803F6B78:
/* 803F6B78  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803F6B7C  7C 08 02 A6 */	mflr r0
/* 803F6B80  90 01 00 54 */	stw r0, 0x54(r1)
/* 803F6B84  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 803F6B88  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 803F6B8C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 803F6B90  7C 7F 1B 78 */	mr r31, r3
/* 803F6B94  4B FB 1F C9 */	bl mFI_GetPlayerWade
/* 803F6B98  2C 03 00 02 */	cmpwi r3, 2
/* 803F6B9C  40 82 00 DC */	bne lbl_803F6C78
/* 803F6BA0  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 803F6BA4  38 61 00 24 */	addi r3, r1, 0x24
/* 803F6BA8  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 803F6BAC  90 81 00 24 */	stw r4, 0x24(r1)
/* 803F6BB0  90 01 00 28 */	stw r0, 0x28(r1)
/* 803F6BB4  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 803F6BB8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 803F6BBC  4B F9 A8 11 */	bl mCoBG_ExistHeightGap_KeepAndNow_Detail
/* 803F6BC0  2C 03 00 00 */	cmpwi r3, 0
/* 803F6BC4  41 82 00 B4 */	beq lbl_803F6C78
/* 803F6BC8  7F E3 FB 78 */	mr r3, r31
/* 803F6BCC  4B FF FE 75 */	bl mRlib_Set_Position_Check
/* 803F6BD0  2C 03 00 00 */	cmpwi r3, 0
/* 803F6BD4  41 82 00 14 */	beq lbl_803F6BE8
/* 803F6BD8  3C 60 80 64 */	lis r3, data_806433EC@ha /* 0x806433EC@ha */
/* 803F6BDC  C0 03 33 EC */	lfs f0, data_806433EC@l(r3)  /* 0x806433EC@l */
/* 803F6BE0  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 803F6BE4  48 00 00 94 */	b lbl_803F6C78
lbl_803F6BE8:
/* 803F6BE8  80 FF 00 28 */	lwz r7, 0x28(r31)
/* 803F6BEC  38 61 00 14 */	addi r3, r1, 0x14
/* 803F6BF0  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 803F6BF4  38 81 00 10 */	addi r4, r1, 0x10
/* 803F6BF8  38 A1 00 0C */	addi r5, r1, 0xc
/* 803F6BFC  38 C1 00 08 */	addi r6, r1, 8
/* 803F6C00  90 E1 00 18 */	stw r7, 0x18(r1)
/* 803F6C04  38 E1 00 18 */	addi r7, r1, 0x18
/* 803F6C08  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803F6C0C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 803F6C10  90 01 00 20 */	stw r0, 0x20(r1)
/* 803F6C14  4B FA EB AD */	bl mFI_Wpos2BkandUtNuminBlock
/* 803F6C18  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 803F6C1C  38 61 00 0C */	addi r3, r1, 0xc
/* 803F6C20  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 803F6C24  38 81 00 08 */	addi r4, r1, 8
/* 803F6C28  38 E0 00 00 */	li r7, 0
/* 803F6C2C  4B FD C2 09 */	bl mNpc_GetMakeUtNuminBlock_hard_area
/* 803F6C30  2C 03 00 00 */	cmpwi r3, 0
/* 803F6C34  41 82 00 3C */	beq lbl_803F6C70
/* 803F6C38  C3 FF 00 2C */	lfs f31, 0x2c(r31)
/* 803F6C3C  38 7F 00 28 */	addi r3, r31, 0x28
/* 803F6C40  80 81 00 14 */	lwz r4, 0x14(r1)
/* 803F6C44  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 803F6C48  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 803F6C4C  80 E1 00 08 */	lwz r7, 8(r1)
/* 803F6C50  4B FA F0 A5 */	bl mFI_BkandUtNum2CenterWpos
/* 803F6C54  3C 60 80 64 */	lis r3, data_806433EC@ha /* 0x806433EC@ha */
/* 803F6C58  D3 FF 00 2C */	stfs f31, 0x2c(r31)
/* 803F6C5C  38 83 33 EC */	addi r4, r3, data_806433EC@l /* 0x806433EC@l */
/* 803F6C60  38 60 00 01 */	li r3, 1
/* 803F6C64  C0 04 00 00 */	lfs f0, 0(r4)
/* 803F6C68  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 803F6C6C  48 00 00 10 */	b lbl_803F6C7C
lbl_803F6C70:
/* 803F6C70  38 60 00 00 */	li r3, 0
/* 803F6C74  48 00 00 08 */	b lbl_803F6C7C
lbl_803F6C78:
/* 803F6C78  38 60 00 01 */	li r3, 1
lbl_803F6C7C:
/* 803F6C7C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 803F6C80  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803F6C84  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 803F6C88  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 803F6C8C  7C 08 03 A6 */	mtlr r0
/* 803F6C90  38 21 00 50 */	addi r1, r1, 0x50
/* 803F6C94  4E 80 00 20 */	blr 
