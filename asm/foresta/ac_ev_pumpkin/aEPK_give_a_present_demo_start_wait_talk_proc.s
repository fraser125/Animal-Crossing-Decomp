lbl_80523044:
/* 80523044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80523048  7C 08 02 A6 */	mflr r0
/* 8052304C  38 80 00 01 */	li r4, 1
/* 80523050  90 01 00 14 */	stw r0, 0x14(r1)
/* 80523054  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80523058  7C 7F 1B 78 */	mr r31, r3
/* 8052305C  38 60 00 04 */	li r3, 4
/* 80523060  4B E7 54 1D */	bl mDemo_Get_OrderValue
/* 80523064  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80523068  28 00 00 02 */	cmplwi r0, 2
/* 8052306C  40 82 00 58 */	bne lbl_805230C4
/* 80523070  38 60 00 05 */	li r3, 5
/* 80523074  38 80 00 00 */	li r4, 0
/* 80523078  38 A0 25 1C */	li r5, 0x251c
/* 8052307C  4B E7 53 BD */	bl mDemo_Set_OrderValue
/* 80523080  38 60 00 05 */	li r3, 5
/* 80523084  38 80 00 01 */	li r4, 1
/* 80523088  38 A0 00 07 */	li r5, 7
/* 8052308C  4B E7 53 AD */	bl mDemo_Set_OrderValue
/* 80523090  38 60 00 05 */	li r3, 5
/* 80523094  38 80 00 02 */	li r4, 2
/* 80523098  38 A0 00 01 */	li r5, 1
/* 8052309C  4B E7 53 9D */	bl mDemo_Set_OrderValue
/* 805230A0  4B E9 C6 09 */	bl func_803BF6A8
/* 805230A4  4B E9 DC 9D */	bl mMsg_Set_LockContinue
/* 805230A8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805230AC  A0 9F 09 A0 */	lhz r4, 0x9a0(r31)
/* 805230B0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805230B4  38 A0 00 01 */	li r5, 1
/* 805230B8  3C 63 00 02 */	addis r3, r3, 2
/* 805230BC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805230C0  4B EB DE 49 */	bl mPr_SetFreePossessionItem
lbl_805230C4:
/* 805230C4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805230C8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805230CC  3C 63 00 02 */	addis r3, r3, 2
/* 805230D0  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 805230D4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 805230D8  28 00 00 00 */	cmplwi r0, 0
/* 805230DC  41 82 00 10 */	beq lbl_805230EC
/* 805230E0  7F E3 FB 78 */	mr r3, r31
/* 805230E4  38 80 00 0D */	li r4, 0xd
/* 805230E8  48 00 00 F9 */	bl aEPK_change_talk_proc
lbl_805230EC:
/* 805230EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805230F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805230F4  7C 08 03 A6 */	mtlr r0
/* 805230F8  38 21 00 10 */	addi r1, r1, 0x10
/* 805230FC  4E 80 00 20 */	blr 
