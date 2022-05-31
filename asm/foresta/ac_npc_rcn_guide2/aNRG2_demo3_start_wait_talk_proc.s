lbl_80571198:
/* 80571198  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057119C  7C 08 02 A6 */	mflr r0
/* 805711A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805711A4  39 61 00 20 */	addi r11, r1, 0x20
/* 805711A8  4B B2 9D 2D */	bl func_8009AED4
/* 805711AC  7C 7D 1B 78 */	mr r29, r3
/* 805711B0  38 60 00 04 */	li r3, 4
/* 805711B4  38 80 00 09 */	li r4, 9
/* 805711B8  4B E2 72 C5 */	bl mDemo_Get_OrderValue
/* 805711BC  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 805711C0  41 82 00 B0 */	beq lbl_80571270
/* 805711C4  4B E7 29 A5 */	bl mQst_GetFirstJobData
/* 805711C8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805711CC  7C 7F 1B 78 */	mr r31, r3
/* 805711D0  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805711D4  A0 9F 00 28 */	lhz r4, 0x28(r31)
/* 805711D8  3F C3 00 02 */	addis r30, r3, 2
/* 805711DC  38 A0 00 02 */	li r5, 2
/* 805711E0  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 805711E4  4B E6 F5 8D */	bl mPr_GetPossessionItemIdxWithCond
/* 805711E8  7C 64 1B 78 */	mr r4, r3
/* 805711EC  2C 04 FF FF */	cmpwi r4, -1
/* 805711F0  40 82 00 24 */	bne lbl_80571214
/* 805711F4  80 9E 61 3C */	lwz r4, 0x613c(r30)
/* 805711F8  A0 1F 00 28 */	lhz r0, 0x28(r31)
/* 805711FC  A0 64 04 A4 */	lhz r3, 0x4a4(r4)
/* 80571200  7C 03 00 40 */	cmplw r3, r0
/* 80571204  40 82 00 20 */	bne lbl_80571224
/* 80571208  38 00 00 00 */	li r0, 0
/* 8057120C  B0 04 04 A4 */	sth r0, 0x4a4(r4)
/* 80571210  48 00 00 14 */	b lbl_80571224
lbl_80571214:
/* 80571214  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 80571218  38 A0 00 00 */	li r5, 0
/* 8057121C  38 C0 00 00 */	li r6, 0
/* 80571220  4B E6 FC 09 */	bl mPr_SetPossessionItem
lbl_80571224:
/* 80571224  38 60 00 04 */	li r3, 4
/* 80571228  38 80 00 09 */	li r4, 9
/* 8057122C  38 A0 00 00 */	li r5, 0
/* 80571230  4B E2 72 09 */	bl mDemo_Set_OrderValue
/* 80571234  4B E4 E4 75 */	bl func_803BF6A8
/* 80571238  4B E4 FB 09 */	bl mMsg_Set_LockContinue
/* 8057123C  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80571240  A0 9F 00 28 */	lhz r4, 0x28(r31)
/* 80571244  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80571248  38 A0 00 07 */	li r5, 7
/* 8057124C  80 63 00 00 */	lwz r3, 0(r3)
/* 80571250  38 C0 00 00 */	li r6, 0
/* 80571254  38 E0 00 00 */	li r7, 0
/* 80571258  4B E6 92 09 */	bl mPlib_request_main_give_type1
/* 8057125C  38 60 00 07 */	li r3, 7
/* 80571260  4B FF F6 BD */	bl aNRG2_setup_job
/* 80571264  7F A3 EB 78 */	mr r3, r29
/* 80571268  38 80 00 12 */	li r4, 0x12
/* 8057126C  48 00 00 49 */	bl aNRG2_change_talk_proc
lbl_80571270:
/* 80571270  39 61 00 20 */	addi r11, r1, 0x20
/* 80571274  4B B2 9C AD */	bl func_8009AF20
/* 80571278  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057127C  7C 08 03 A6 */	mtlr r0
/* 80571280  38 21 00 20 */	addi r1, r1, 0x20
/* 80571284  4E 80 00 20 */	blr 
