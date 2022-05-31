lbl_8056D070:
/* 8056D070  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056D074  7C 08 02 A6 */	mflr r0
/* 8056D078  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056D07C  39 61 00 20 */	addi r11, r1, 0x20
/* 8056D080  4B B2 DE 51 */	bl func_8009AED0
/* 8056D084  7C 9F 23 78 */	mr r31, r4
/* 8056D088  7C 7E 1B 78 */	mr r30, r3
/* 8056D08C  88 04 1F 4E */	lbz r0, 0x1f4e(r4)
/* 8056D090  28 00 00 00 */	cmplwi r0, 0
/* 8056D094  40 82 00 E8 */	bne lbl_8056D17C
/* 8056D098  38 7F 1E 24 */	addi r3, r31, 0x1e24
/* 8056D09C  3B 80 FF FF */	li r28, -1
/* 8056D0A0  4B E4 F7 01 */	bl mMl_check_not_used_mail
/* 8056D0A4  2C 03 00 01 */	cmpwi r3, 1
/* 8056D0A8  40 82 00 14 */	bne lbl_8056D0BC
/* 8056D0AC  38 00 00 17 */	li r0, 0x17
/* 8056D0B0  3B 80 00 00 */	li r28, 0
/* 8056D0B4  90 1E 09 98 */	stw r0, 0x998(r30)
/* 8056D0B8  48 00 00 84 */	b lbl_8056D13C
lbl_8056D0BC:
/* 8056D0BC  38 7F 1E 24 */	addi r3, r31, 0x1e24
/* 8056D0C0  4B FF F6 D9 */	bl aPG_check_destination
/* 8056D0C4  7C 7D 1B 79 */	or. r29, r3, r3
/* 8056D0C8  41 82 00 14 */	beq lbl_8056D0DC
/* 8056D0CC  41 80 00 68 */	blt lbl_8056D134
/* 8056D0D0  2C 1D 00 04 */	cmpwi r29, 4
/* 8056D0D4  40 80 00 60 */	bge lbl_8056D134
/* 8056D0D8  48 00 00 20 */	b lbl_8056D0F8
lbl_8056D0DC:
/* 8056D0DC  38 7F 1E 24 */	addi r3, r31, 0x1e24
/* 8056D0E0  38 80 00 00 */	li r4, 0
/* 8056D0E4  4B E7 1F 7D */	bl mPO_receipt_proc
/* 8056D0E8  38 00 00 05 */	li r0, 5
/* 8056D0EC  3B 80 00 01 */	li r28, 1
/* 8056D0F0  90 1E 09 98 */	stw r0, 0x998(r30)
/* 8056D0F4  48 00 00 40 */	b lbl_8056D134
lbl_8056D0F8:
/* 8056D0F8  80 BF 1F 60 */	lwz r5, 0x1f60(r31)
/* 8056D0FC  38 00 00 01 */	li r0, 1
/* 8056D100  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056D104  38 9F 1E 24 */	addi r4, r31, 0x1e24
/* 8056D108  98 1F 1E 52 */	stb r0, 0x1e52(r31)
/* 8056D10C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8056D110  3C 63 00 02 */	addis r3, r3, 2
/* 8056D114  88 05 00 02 */	lbz r0, 2(r5)
/* 8056D118  80 A3 61 3C */	lwz r5, 0x613c(r3)
/* 8056D11C  1C 60 01 2A */	mulli r3, r0, 0x12a
/* 8056D120  38 63 04 E0 */	addi r3, r3, 0x4e0
/* 8056D124  7C 65 1A 14 */	add r3, r5, r3
/* 8056D128  4B E4 F8 4D */	bl mMl_copy_mail
/* 8056D12C  9B BE 09 A5 */	stb r29, 0x9a5(r30)
/* 8056D130  3B 9D 00 01 */	addi r28, r29, 1
lbl_8056D134:
/* 8056D134  38 7F 1E 24 */	addi r3, r31, 0x1e24
/* 8056D138  4B E4 F5 C9 */	bl mMl_clear_mail
lbl_8056D13C:
/* 8056D13C  2C 1C 00 00 */	cmpwi r28, 0
/* 8056D140  41 80 00 3C */	blt lbl_8056D17C
/* 8056D144  3C 60 80 6C */	lis r3, msg_no_706@ha /* 0x806BE9A4@ha */
/* 8056D148  57 9D 10 3A */	slwi r29, r28, 2
/* 8056D14C  38 83 E9 A4 */	addi r4, r3, msg_no_706@l /* 0x806BE9A4@l */
/* 8056D150  7F C3 F3 78 */	mr r3, r30
/* 8056D154  7C 84 E8 2E */	lwzx r4, r4, r29
/* 8056D158  4B FF F3 51 */	bl aPG_ChangeMsgData
/* 8056D15C  3C 60 80 6C */	lis r3, next_act_idx_707@ha /* 0x806BE9B8@ha */
/* 8056D160  81 9E 09 A0 */	lwz r12, 0x9a0(r30)
/* 8056D164  38 A3 E9 B8 */	addi r5, r3, next_act_idx_707@l /* 0x806BE9B8@l */
/* 8056D168  7F C3 F3 78 */	mr r3, r30
/* 8056D16C  7F E4 FB 78 */	mr r4, r31
/* 8056D170  7C A5 E8 2E */	lwzx r5, r5, r29
/* 8056D174  7D 89 03 A6 */	mtctr r12
/* 8056D178  4E 80 04 21 */	bctrl 
lbl_8056D17C:
/* 8056D17C  39 61 00 20 */	addi r11, r1, 0x20
/* 8056D180  4B B2 DD 9D */	bl func_8009AF1C
/* 8056D184  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056D188  7C 08 03 A6 */	mtlr r0
/* 8056D18C  38 21 00 20 */	addi r1, r1, 0x20
/* 8056D190  4E 80 00 20 */	blr 
