lbl_805791C4:
/* 805791C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805791C8  7C 08 02 A6 */	mflr r0
/* 805791CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805791D0  39 61 00 20 */	addi r11, r1, 0x20
/* 805791D4  4B B2 1C F9 */	bl func_8009AECC
/* 805791D8  7C 7F 1B 78 */	mr r31, r3
/* 805791DC  7C 9C 23 78 */	mr r28, r4
/* 805791E0  3B C0 00 00 */	li r30, 0
/* 805791E4  4B E3 A9 25 */	bl mLd_PlayerManKindCheck
/* 805791E8  2C 03 00 00 */	cmpwi r3, 0
/* 805791EC  40 82 00 B0 */	bne lbl_8057929C
/* 805791F0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805791F4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805791F8  3F 63 00 02 */	addis r27, r3, 2
/* 805791FC  88 7B 60 03 */	lbz r3, 0x6003(r27)
/* 80579200  3C 63 20 00 */	addis r3, r3, 0x2000
/* 80579204  38 63 00 0E */	addi r3, r3, 0xe
/* 80579208  4B E2 18 11 */	bl mEv_CheckEvent
/* 8057920C  2C 03 00 01 */	cmpwi r3, 1
/* 80579210  40 82 00 0C */	bne lbl_8057921C
/* 80579214  3B C0 00 04 */	li r30, 4
/* 80579218  48 00 00 9C */	b lbl_805792B4
lbl_8057921C:
/* 8057921C  4B FF DE A5 */	bl aNSC_check_present_balloon
/* 80579220  2C 03 00 01 */	cmpwi r3, 1
/* 80579224  40 82 00 0C */	bne lbl_80579230
/* 80579228  3B C0 00 02 */	li r30, 2
/* 8057922C  48 00 00 88 */	b lbl_805792B4
lbl_80579230:
/* 80579230  88 7B 60 03 */	lbz r3, 0x6003(r27)
/* 80579234  4B E3 A3 85 */	bl mHS_get_arrange_idx
/* 80579238  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8057923C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80579240  3C 85 00 02 */	addis r4, r5, 2
/* 80579244  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 80579248  1C 63 26 B0 */	mulli r3, r3, 0x26b0
/* 8057924C  80 04 00 90 */	lwz r0, 0x90(r4)
/* 80579250  7C 65 1A 14 */	add r3, r5, r3
/* 80579254  28 00 00 00 */	cmplwi r0, 0
/* 80579258  3C 83 00 01 */	addis r4, r3, 1
/* 8057925C  38 84 9D 0E */	addi r4, r4, -25330
/* 80579260  40 82 00 54 */	bne lbl_805792B4
/* 80579264  88 64 00 05 */	lbz r3, 5(r4)
/* 80579268  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 8057926C  40 82 00 48 */	bne lbl_805792B4
/* 80579270  88 04 00 04 */	lbz r0, 4(r4)
/* 80579274  54 04 DF 7E */	rlwinm r4, r0, 0x1b, 0x1d, 0x1f
/* 80579278  28 04 00 03 */	cmplwi r4, 3
/* 8057927C  40 80 00 38 */	bge lbl_805792B4
/* 80579280  54 00 F7 7E */	rlwinm r0, r0, 0x1e, 0x1d, 0x1f
/* 80579284  7C 04 00 40 */	cmplw r4, r0
/* 80579288  40 82 00 2C */	bne lbl_805792B4
/* 8057928C  54 60 DF FF */	rlwinm. r0, r3, 0x1b, 0x1f, 0x1f
/* 80579290  40 82 00 24 */	bne lbl_805792B4
/* 80579294  3B C0 00 01 */	li r30, 1
/* 80579298  48 00 00 1C */	b lbl_805792B4
lbl_8057929C:
/* 8057929C  4B FF DE 25 */	bl aNSC_check_present_balloon
/* 805792A0  2C 03 00 01 */	cmpwi r3, 1
/* 805792A4  40 82 00 0C */	bne lbl_805792B0
/* 805792A8  3B C0 00 02 */	li r30, 2
/* 805792AC  48 00 00 08 */	b lbl_805792B4
lbl_805792B0:
/* 805792B0  3B C0 00 03 */	li r30, 3
lbl_805792B4:
/* 805792B4  7F E4 FB 78 */	mr r4, r31
/* 805792B8  38 60 00 08 */	li r3, 8
/* 805792BC  4B E2 0F A9 */	bl mDemo_Check
/* 805792C0  2C 03 00 01 */	cmpwi r3, 1
/* 805792C4  40 82 01 0C */	bne lbl_805793D0
/* 805792C8  4B E2 11 49 */	bl mDemo_Check_ListenAble
/* 805792CC  2C 03 00 00 */	cmpwi r3, 0
/* 805792D0  40 82 01 00 */	bne lbl_805793D0
/* 805792D4  2C 1E 00 01 */	cmpwi r30, 1
/* 805792D8  41 82 00 50 */	beq lbl_80579328
/* 805792DC  40 80 00 10 */	bge lbl_805792EC
/* 805792E0  2C 1E 00 00 */	cmpwi r30, 0
/* 805792E4  40 80 00 3C */	bge lbl_80579320
/* 805792E8  48 00 00 CC */	b lbl_805793B4
lbl_805792EC:
/* 805792EC  2C 1E 00 04 */	cmpwi r30, 4
/* 805792F0  41 82 00 0C */	beq lbl_805792FC
/* 805792F4  40 80 00 C0 */	bge lbl_805793B4
/* 805792F8  48 00 00 28 */	b lbl_80579320
lbl_805792FC:
/* 805792FC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80579300  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80579304  3C 63 00 02 */	addis r3, r3, 2
/* 80579308  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 8057930C  3C 63 20 00 */	addis r3, r3, 0x2000
/* 80579310  38 63 00 0E */	addi r3, r3, 0xe
/* 80579314  4B E2 16 B5 */	bl mEv_EventOFF
/* 80579318  3B A0 00 01 */	li r29, 1
/* 8057931C  48 00 00 98 */	b lbl_805793B4
lbl_80579320:
/* 80579320  83 BF 09 98 */	lwz r29, 0x998(r31)
/* 80579324  48 00 00 90 */	b lbl_805793B4
lbl_80579328:
/* 80579328  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057932C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80579330  3C 63 00 02 */	addis r3, r3, 2
/* 80579334  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 80579338  4B E3 A2 81 */	bl mHS_get_arrange_idx
/* 8057933C  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 80579340  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80579344  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 80579348  7C 60 22 14 */	add r3, r0, r4
/* 8057934C  3C 63 00 01 */	addis r3, r3, 1
/* 80579350  88 03 9D 12 */	lbz r0, -0x62ee(r3)
/* 80579354  38 63 9C E8 */	addi r3, r3, -25368
/* 80579358  54 00 DF 7E */	rlwinm r0, r0, 0x1b, 0x1d, 0x1f
/* 8057935C  2C 00 00 02 */	cmpwi r0, 2
/* 80579360  41 82 00 30 */	beq lbl_80579390
/* 80579364  40 80 00 4C */	bge lbl_805793B0
/* 80579368  2C 00 00 01 */	cmpwi r0, 1
/* 8057936C  40 80 00 08 */	bge lbl_80579374
/* 80579370  48 00 00 40 */	b lbl_805793B0
lbl_80579374:
/* 80579374  88 03 00 24 */	lbz r0, 0x24(r3)
/* 80579378  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8057937C  40 82 00 0C */	bne lbl_80579388
/* 80579380  3B A0 00 06 */	li r29, 6
/* 80579384  48 00 00 30 */	b lbl_805793B4
lbl_80579388:
/* 80579388  3B A0 00 04 */	li r29, 4
/* 8057938C  48 00 00 28 */	b lbl_805793B4
lbl_80579390:
/* 80579390  88 03 00 24 */	lbz r0, 0x24(r3)
/* 80579394  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80579398  40 82 00 10 */	bne lbl_805793A8
/* 8057939C  4B FF E0 91 */	bl aNSC_set_make_basement_info
/* 805793A0  3B A0 00 01 */	li r29, 1
/* 805793A4  48 00 00 10 */	b lbl_805793B4
lbl_805793A8:
/* 805793A8  3B A0 00 04 */	li r29, 4
/* 805793AC  48 00 00 08 */	b lbl_805793B4
lbl_805793B0:
/* 805793B0  3B A0 00 04 */	li r29, 4
lbl_805793B4:
/* 805793B4  7F E3 FB 78 */	mr r3, r31
/* 805793B8  4B FF DE 11 */	bl aNSC_Set_ListenAble
/* 805793BC  7F E3 FB 78 */	mr r3, r31
/* 805793C0  7F 84 E3 78 */	mr r4, r28
/* 805793C4  7F A5 EB 78 */	mr r5, r29
/* 805793C8  48 00 30 ED */	bl aNSC_setupAction
/* 805793CC  48 00 00 94 */	b lbl_80579460
lbl_805793D0:
/* 805793D0  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 805793D4  2C 1E 00 02 */	cmpwi r30, 2
/* 805793D8  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 805793DC  7C 05 03 78 */	mr r5, r0
/* 805793E0  41 82 00 48 */	beq lbl_80579428
/* 805793E4  40 80 00 14 */	bge lbl_805793F8
/* 805793E8  2C 1E 00 00 */	cmpwi r30, 0
/* 805793EC  41 82 00 1C */	beq lbl_80579408
/* 805793F0  40 80 00 28 */	bge lbl_80579418
/* 805793F4  48 00 00 60 */	b lbl_80579454
lbl_805793F8:
/* 805793F8  2C 1E 00 04 */	cmpwi r30, 4
/* 805793FC  41 82 00 4C */	beq lbl_80579448
/* 80579400  40 80 00 54 */	bge lbl_80579454
/* 80579404  48 00 00 34 */	b lbl_80579438
lbl_80579408:
/* 80579408  3C 60 80 58 */	lis r3, aNSC_set_talk_info_start_wait@ha /* 0x80578E40@ha */
/* 8057940C  38 03 8E 40 */	addi r0, r3, aNSC_set_talk_info_start_wait@l /* 0x80578E40@l */
/* 80579410  7C 05 03 78 */	mr r5, r0
/* 80579414  48 00 00 40 */	b lbl_80579454
lbl_80579418:
/* 80579418  3C 60 80 58 */	lis r3, aNSC_set_talk_info_start_wait1@ha /* 0x80579034@ha */
/* 8057941C  38 03 90 34 */	addi r0, r3, aNSC_set_talk_info_start_wait1@l /* 0x80579034@l */
/* 80579420  7C 05 03 78 */	mr r5, r0
/* 80579424  48 00 00 30 */	b lbl_80579454
lbl_80579428:
/* 80579428  3C 60 80 58 */	lis r3, aNSC_set_talk_info_start_wait2@ha /* 0x80579114@ha */
/* 8057942C  38 03 91 14 */	addi r0, r3, aNSC_set_talk_info_start_wait2@l /* 0x80579114@l */
/* 80579430  7C 05 03 78 */	mr r5, r0
/* 80579434  48 00 00 20 */	b lbl_80579454
lbl_80579438:
/* 80579438  3C 60 80 58 */	lis r3, aNSC_set_talk_info_start_wait3@ha /* 0x80579160@ha */
/* 8057943C  38 03 91 60 */	addi r0, r3, aNSC_set_talk_info_start_wait3@l /* 0x80579160@l */
/* 80579440  7C 05 03 78 */	mr r5, r0
/* 80579444  48 00 00 10 */	b lbl_80579454
lbl_80579448:
/* 80579448  3C 60 80 58 */	lis r3, aNSC_set_talk_info_start_wait4@ha /* 0x8057919C@ha */
/* 8057944C  38 03 91 9C */	addi r0, r3, aNSC_set_talk_info_start_wait4@l /* 0x8057919C@l */
/* 80579450  7C 05 03 78 */	mr r5, r0
lbl_80579454:
/* 80579454  7F E4 FB 78 */	mr r4, r31
/* 80579458  38 60 00 08 */	li r3, 8
/* 8057945C  4B E2 0D 01 */	bl mDemo_Request
lbl_80579460:
/* 80579460  39 61 00 20 */	addi r11, r1, 0x20
/* 80579464  4B B2 1A B5 */	bl func_8009AF18
/* 80579468  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057946C  7C 08 03 A6 */	mtlr r0
/* 80579470  38 21 00 20 */	addi r1, r1, 0x20
/* 80579474  4E 80 00 20 */	blr 
