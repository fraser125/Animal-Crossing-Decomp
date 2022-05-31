lbl_8054F544:
/* 8054F544  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054F548  7C 08 02 A6 */	mflr r0
/* 8054F54C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054F550  39 61 00 20 */	addi r11, r1, 0x20
/* 8054F554  4B B4 B9 79 */	bl func_8009AECC
/* 8054F558  7C 7F 1B 78 */	mr r31, r3
/* 8054F55C  7C 9C 23 78 */	mr r28, r4
/* 8054F560  3B C0 00 00 */	li r30, 0
/* 8054F564  4B E6 45 A5 */	bl mLd_PlayerManKindCheck
/* 8054F568  2C 03 00 00 */	cmpwi r3, 0
/* 8054F56C  40 82 00 B0 */	bne lbl_8054F61C
/* 8054F570  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054F574  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054F578  3F 63 00 02 */	addis r27, r3, 2
/* 8054F57C  88 7B 60 03 */	lbz r3, 0x6003(r27)
/* 8054F580  3C 63 20 00 */	addis r3, r3, 0x2000
/* 8054F584  38 63 00 0E */	addi r3, r3, 0xe
/* 8054F588  4B E4 B4 91 */	bl mEv_CheckEvent
/* 8054F58C  2C 03 00 01 */	cmpwi r3, 1
/* 8054F590  40 82 00 0C */	bne lbl_8054F59C
/* 8054F594  3B C0 00 04 */	li r30, 4
/* 8054F598  48 00 00 9C */	b lbl_8054F634
lbl_8054F59C:
/* 8054F59C  4B FF DE A5 */	bl aNSC_check_present_balloon
/* 8054F5A0  2C 03 00 01 */	cmpwi r3, 1
/* 8054F5A4  40 82 00 0C */	bne lbl_8054F5B0
/* 8054F5A8  3B C0 00 02 */	li r30, 2
/* 8054F5AC  48 00 00 88 */	b lbl_8054F634
lbl_8054F5B0:
/* 8054F5B0  88 7B 60 03 */	lbz r3, 0x6003(r27)
/* 8054F5B4  4B E6 40 05 */	bl mHS_get_arrange_idx
/* 8054F5B8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8054F5BC  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8054F5C0  3C 85 00 02 */	addis r4, r5, 2
/* 8054F5C4  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 8054F5C8  1C 63 26 B0 */	mulli r3, r3, 0x26b0
/* 8054F5CC  80 04 00 90 */	lwz r0, 0x90(r4)
/* 8054F5D0  7C 65 1A 14 */	add r3, r5, r3
/* 8054F5D4  28 00 00 00 */	cmplwi r0, 0
/* 8054F5D8  3C 83 00 01 */	addis r4, r3, 1
/* 8054F5DC  38 84 9D 0E */	addi r4, r4, -25330
/* 8054F5E0  40 82 00 54 */	bne lbl_8054F634
/* 8054F5E4  88 64 00 05 */	lbz r3, 5(r4)
/* 8054F5E8  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 8054F5EC  40 82 00 48 */	bne lbl_8054F634
/* 8054F5F0  88 04 00 04 */	lbz r0, 4(r4)
/* 8054F5F4  54 04 DF 7E */	rlwinm r4, r0, 0x1b, 0x1d, 0x1f
/* 8054F5F8  28 04 00 03 */	cmplwi r4, 3
/* 8054F5FC  40 80 00 38 */	bge lbl_8054F634
/* 8054F600  54 00 F7 7E */	rlwinm r0, r0, 0x1e, 0x1d, 0x1f
/* 8054F604  7C 04 00 40 */	cmplw r4, r0
/* 8054F608  40 82 00 2C */	bne lbl_8054F634
/* 8054F60C  54 60 DF FF */	rlwinm. r0, r3, 0x1b, 0x1f, 0x1f
/* 8054F610  40 82 00 24 */	bne lbl_8054F634
/* 8054F614  3B C0 00 01 */	li r30, 1
/* 8054F618  48 00 00 1C */	b lbl_8054F634
lbl_8054F61C:
/* 8054F61C  4B FF DE 25 */	bl aNSC_check_present_balloon
/* 8054F620  2C 03 00 01 */	cmpwi r3, 1
/* 8054F624  40 82 00 0C */	bne lbl_8054F630
/* 8054F628  3B C0 00 02 */	li r30, 2
/* 8054F62C  48 00 00 08 */	b lbl_8054F634
lbl_8054F630:
/* 8054F630  3B C0 00 03 */	li r30, 3
lbl_8054F634:
/* 8054F634  7F E4 FB 78 */	mr r4, r31
/* 8054F638  38 60 00 08 */	li r3, 8
/* 8054F63C  4B E4 AC 29 */	bl mDemo_Check
/* 8054F640  2C 03 00 01 */	cmpwi r3, 1
/* 8054F644  40 82 01 0C */	bne lbl_8054F750
/* 8054F648  4B E4 AD C9 */	bl mDemo_Check_ListenAble
/* 8054F64C  2C 03 00 00 */	cmpwi r3, 0
/* 8054F650  40 82 01 00 */	bne lbl_8054F750
/* 8054F654  2C 1E 00 01 */	cmpwi r30, 1
/* 8054F658  41 82 00 50 */	beq lbl_8054F6A8
/* 8054F65C  40 80 00 10 */	bge lbl_8054F66C
/* 8054F660  2C 1E 00 00 */	cmpwi r30, 0
/* 8054F664  40 80 00 3C */	bge lbl_8054F6A0
/* 8054F668  48 00 00 CC */	b lbl_8054F734
lbl_8054F66C:
/* 8054F66C  2C 1E 00 04 */	cmpwi r30, 4
/* 8054F670  41 82 00 0C */	beq lbl_8054F67C
/* 8054F674  40 80 00 C0 */	bge lbl_8054F734
/* 8054F678  48 00 00 28 */	b lbl_8054F6A0
lbl_8054F67C:
/* 8054F67C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054F680  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054F684  3C 63 00 02 */	addis r3, r3, 2
/* 8054F688  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 8054F68C  3C 63 20 00 */	addis r3, r3, 0x2000
/* 8054F690  38 63 00 0E */	addi r3, r3, 0xe
/* 8054F694  4B E4 B3 35 */	bl mEv_EventOFF
/* 8054F698  3B A0 00 01 */	li r29, 1
/* 8054F69C  48 00 00 98 */	b lbl_8054F734
lbl_8054F6A0:
/* 8054F6A0  83 BF 09 98 */	lwz r29, 0x998(r31)
/* 8054F6A4  48 00 00 90 */	b lbl_8054F734
lbl_8054F6A8:
/* 8054F6A8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054F6AC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054F6B0  3C 63 00 02 */	addis r3, r3, 2
/* 8054F6B4  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 8054F6B8  4B E6 3F 01 */	bl mHS_get_arrange_idx
/* 8054F6BC  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 8054F6C0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054F6C4  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 8054F6C8  7C 60 22 14 */	add r3, r0, r4
/* 8054F6CC  3C 63 00 01 */	addis r3, r3, 1
/* 8054F6D0  88 03 9D 12 */	lbz r0, -0x62ee(r3)
/* 8054F6D4  38 63 9C E8 */	addi r3, r3, -25368
/* 8054F6D8  54 00 DF 7E */	rlwinm r0, r0, 0x1b, 0x1d, 0x1f
/* 8054F6DC  2C 00 00 02 */	cmpwi r0, 2
/* 8054F6E0  41 82 00 30 */	beq lbl_8054F710
/* 8054F6E4  40 80 00 4C */	bge lbl_8054F730
/* 8054F6E8  2C 00 00 01 */	cmpwi r0, 1
/* 8054F6EC  40 80 00 08 */	bge lbl_8054F6F4
/* 8054F6F0  48 00 00 40 */	b lbl_8054F730
lbl_8054F6F4:
/* 8054F6F4  88 03 00 24 */	lbz r0, 0x24(r3)
/* 8054F6F8  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8054F6FC  40 82 00 0C */	bne lbl_8054F708
/* 8054F700  3B A0 00 06 */	li r29, 6
/* 8054F704  48 00 00 30 */	b lbl_8054F734
lbl_8054F708:
/* 8054F708  3B A0 00 04 */	li r29, 4
/* 8054F70C  48 00 00 28 */	b lbl_8054F734
lbl_8054F710:
/* 8054F710  88 03 00 24 */	lbz r0, 0x24(r3)
/* 8054F714  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8054F718  40 82 00 10 */	bne lbl_8054F728
/* 8054F71C  4B FF E0 91 */	bl aNSC_set_make_basement_info
/* 8054F720  3B A0 00 01 */	li r29, 1
/* 8054F724  48 00 00 10 */	b lbl_8054F734
lbl_8054F728:
/* 8054F728  3B A0 00 04 */	li r29, 4
/* 8054F72C  48 00 00 08 */	b lbl_8054F734
lbl_8054F730:
/* 8054F730  3B A0 00 04 */	li r29, 4
lbl_8054F734:
/* 8054F734  7F E3 FB 78 */	mr r3, r31
/* 8054F738  4B FF DE 11 */	bl aNSC_Set_ListenAble
/* 8054F73C  7F E3 FB 78 */	mr r3, r31
/* 8054F740  7F 84 E3 78 */	mr r4, r28
/* 8054F744  7F A5 EB 78 */	mr r5, r29
/* 8054F748  48 00 30 ED */	bl aNSC_setupAction
/* 8054F74C  48 00 00 94 */	b lbl_8054F7E0
lbl_8054F750:
/* 8054F750  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 8054F754  2C 1E 00 02 */	cmpwi r30, 2
/* 8054F758  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 8054F75C  7C 05 03 78 */	mr r5, r0
/* 8054F760  41 82 00 48 */	beq lbl_8054F7A8
/* 8054F764  40 80 00 14 */	bge lbl_8054F778
/* 8054F768  2C 1E 00 00 */	cmpwi r30, 0
/* 8054F76C  41 82 00 1C */	beq lbl_8054F788
/* 8054F770  40 80 00 28 */	bge lbl_8054F798
/* 8054F774  48 00 00 60 */	b lbl_8054F7D4
lbl_8054F778:
/* 8054F778  2C 1E 00 04 */	cmpwi r30, 4
/* 8054F77C  41 82 00 4C */	beq lbl_8054F7C8
/* 8054F780  40 80 00 54 */	bge lbl_8054F7D4
/* 8054F784  48 00 00 34 */	b lbl_8054F7B8
lbl_8054F788:
/* 8054F788  3C 60 80 55 */	lis r3, aNSC_set_talk_info_start_wait@ha /* 0x8054F1C0@ha */
/* 8054F78C  38 03 F1 C0 */	addi r0, r3, aNSC_set_talk_info_start_wait@l /* 0x8054F1C0@l */
/* 8054F790  7C 05 03 78 */	mr r5, r0
/* 8054F794  48 00 00 40 */	b lbl_8054F7D4
lbl_8054F798:
/* 8054F798  3C 60 80 55 */	lis r3, aNSC_set_talk_info_start_wait1@ha /* 0x8054F3B4@ha */
/* 8054F79C  38 03 F3 B4 */	addi r0, r3, aNSC_set_talk_info_start_wait1@l /* 0x8054F3B4@l */
/* 8054F7A0  7C 05 03 78 */	mr r5, r0
/* 8054F7A4  48 00 00 30 */	b lbl_8054F7D4
lbl_8054F7A8:
/* 8054F7A8  3C 60 80 55 */	lis r3, aNSC_set_talk_info_start_wait2@ha /* 0x8054F494@ha */
/* 8054F7AC  38 03 F4 94 */	addi r0, r3, aNSC_set_talk_info_start_wait2@l /* 0x8054F494@l */
/* 8054F7B0  7C 05 03 78 */	mr r5, r0
/* 8054F7B4  48 00 00 20 */	b lbl_8054F7D4
lbl_8054F7B8:
/* 8054F7B8  3C 60 80 55 */	lis r3, aNSC_set_talk_info_start_wait3@ha /* 0x8054F4E0@ha */
/* 8054F7BC  38 03 F4 E0 */	addi r0, r3, aNSC_set_talk_info_start_wait3@l /* 0x8054F4E0@l */
/* 8054F7C0  7C 05 03 78 */	mr r5, r0
/* 8054F7C4  48 00 00 10 */	b lbl_8054F7D4
lbl_8054F7C8:
/* 8054F7C8  3C 60 80 55 */	lis r3, aNSC_set_talk_info_start_wait4@ha /* 0x8054F51C@ha */
/* 8054F7CC  38 03 F5 1C */	addi r0, r3, aNSC_set_talk_info_start_wait4@l /* 0x8054F51C@l */
/* 8054F7D0  7C 05 03 78 */	mr r5, r0
lbl_8054F7D4:
/* 8054F7D4  7F E4 FB 78 */	mr r4, r31
/* 8054F7D8  38 60 00 08 */	li r3, 8
/* 8054F7DC  4B E4 A9 81 */	bl mDemo_Request
lbl_8054F7E0:
/* 8054F7E0  39 61 00 20 */	addi r11, r1, 0x20
/* 8054F7E4  4B B4 B7 35 */	bl func_8009AF18
/* 8054F7E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054F7EC  7C 08 03 A6 */	mtlr r0
/* 8054F7F0  38 21 00 20 */	addi r1, r1, 0x20
/* 8054F7F4  4E 80 00 20 */	blr 
