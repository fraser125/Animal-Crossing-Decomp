lbl_804104BC:
/* 804104BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804104C0  7C 08 02 A6 */	mflr r0
/* 804104C4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804104C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804104CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804104D0  93 C1 00 08 */	stw r30, 8(r1)
/* 804104D4  7C 7E 1B 78 */	mr r30, r3
/* 804104D8  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804104DC  3F E3 00 02 */	addis r31, r3, 2
/* 804104E0  80 7F 60 E8 */	lwz r3, 0x60e8(r31)
/* 804104E4  28 03 00 00 */	cmplwi r3, 0
/* 804104E8  41 82 00 10 */	beq lbl_804104F8
/* 804104EC  4B FA BF C9 */	bl zelda_free
/* 804104F0  38 00 00 00 */	li r0, 0
/* 804104F4  90 1F 60 E8 */	stw r0, 0x60e8(r31)
lbl_804104F8:
/* 804104F8  4B F8 A9 C1 */	bl mEv_CheckTitleDemo
/* 804104FC  2C 03 FF FF */	cmpwi r3, -1
/* 80410500  41 82 00 0C */	beq lbl_8041050C
/* 80410504  38 60 00 00 */	li r3, 0
/* 80410508  4B F8 A9 C1 */	bl mEv_SetTitleDemo
lbl_8041050C:
/* 8041050C  38 7E 01 7C */	addi r3, r30, 0x17c
/* 80410510  4B F6 05 E1 */	bl cKF_SkeletonInfo_R_dt
/* 80410514  38 7E 01 F4 */	addi r3, r30, 0x1f4
/* 80410518  4B F6 05 D9 */	bl cKF_SkeletonInfo_R_dt
/* 8041051C  38 7E 02 6C */	addi r3, r30, 0x26c
/* 80410520  4B F6 05 D1 */	bl cKF_SkeletonInfo_R_dt
/* 80410524  4B F9 C0 D1 */	bl mFRm_CheckSaveData
/* 80410528  2C 03 00 01 */	cmpwi r3, 1
/* 8041052C  40 82 00 08 */	bne lbl_80410534
/* 80410530  48 00 00 61 */	bl aAL_title_decide_p_sel_npc
lbl_80410534:
/* 80410534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80410538  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041053C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80410540  7C 08 03 A6 */	mtlr r0
/* 80410544  38 21 00 10 */	addi r1, r1, 0x10
/* 80410548  4E 80 00 20 */	blr 
