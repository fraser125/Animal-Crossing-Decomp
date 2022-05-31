lbl_80516090:
/* 80516090  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80516094  7C 08 02 A6 */	mflr r0
/* 80516098  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051609C  39 61 00 20 */	addi r11, r1, 0x20
/* 805160A0  4B B8 4E 31 */	bl func_8009AED0
/* 805160A4  7C 7C 1B 78 */	mr r28, r3
/* 805160A8  4B EA 96 01 */	bl func_803BF6A8
/* 805160AC  3B A0 FF FF */	li r29, -1
/* 805160B0  7C 7E 1B 78 */	mr r30, r3
/* 805160B4  4B E8 47 B1 */	bl mEA_dl_carde_program_size
/* 805160B8  7C 7F 1B 78 */	mr r31, r3
/* 805160BC  4B E8 47 95 */	bl mEA_dl_carde_program_p
/* 805160C0  7F E4 FB 78 */	mr r4, r31
/* 805160C4  4B B3 49 7D */	bl mGcgba_send_eAppri
/* 805160C8  2C 03 00 00 */	cmpwi r3, 0
/* 805160CC  41 82 00 14 */	beq lbl_805160E0
/* 805160D0  41 80 00 1C */	blt lbl_805160EC
/* 805160D4  2C 03 00 03 */	cmpwi r3, 3
/* 805160D8  40 80 00 14 */	bge lbl_805160EC
/* 805160DC  48 00 00 0C */	b lbl_805160E8
lbl_805160E0:
/* 805160E0  3B A0 00 00 */	li r29, 0
/* 805160E4  48 00 00 08 */	b lbl_805160EC
lbl_805160E8:
/* 805160E8  3B A0 00 01 */	li r29, 1
lbl_805160EC:
/* 805160EC  2C 1D FF FF */	cmpwi r29, -1
/* 805160F0  41 82 00 4C */	beq lbl_8051613C
/* 805160F4  4B B3 36 F9 */	bl mGcgba_EndComm
/* 805160F8  38 60 00 47 */	li r3, 0x47
/* 805160FC  48 11 7E 29 */	bl sAdo_SysLevStop
/* 80516100  3C 60 80 6A */	lis r3, next_msg_num@ha /* 0x8069FCFC@ha */
/* 80516104  57 BF 10 3A */	slwi r31, r29, 2
/* 80516108  38 83 FC FC */	addi r4, r3, next_msg_num@l /* 0x8069FCFC@l */
/* 8051610C  7F C3 F3 78 */	mr r3, r30
/* 80516110  7C 84 F8 2E */	lwzx r4, r4, r31
/* 80516114  4B EA 9E B1 */	bl mMsg_Set_continue_msg_num
/* 80516118  7F C3 F3 78 */	mr r3, r30
/* 8051611C  4B EA AC 31 */	bl mMsg_Unset_LockContinue
/* 80516120  7F C3 F3 78 */	mr r3, r30
/* 80516124  4B EA AC 05 */	bl mMsg_Set_ForceNext
/* 80516128  3C 80 80 6A */	lis r4, next_act_idx@ha /* 0x8069FCF4@ha */
/* 8051612C  7F 83 E3 78 */	mr r3, r28
/* 80516130  38 84 FC F4 */	addi r4, r4, next_act_idx@l /* 0x8069FCF4@l */
/* 80516134  7C 84 F8 2E */	lwzx r4, r4, r31
/* 80516138  48 00 01 B1 */	bl aMSC_setupAction
lbl_8051613C:
/* 8051613C  39 61 00 20 */	addi r11, r1, 0x20
/* 80516140  4B B8 4D DD */	bl func_8009AF1C
/* 80516144  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80516148  7C 08 03 A6 */	mtlr r0
/* 8051614C  38 21 00 20 */	addi r1, r1, 0x20
/* 80516150  4E 80 00 20 */	blr 
