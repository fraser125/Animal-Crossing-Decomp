lbl_804223E8:
/* 804223E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804223EC  7C 08 02 A6 */	mflr r0
/* 804223F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804223F4  39 61 00 30 */	addi r11, r1, 0x30
/* 804223F8  4B C7 8A CD */	bl func_8009AEC4
/* 804223FC  3C 60 81 1D */	lis r3, n_today_event@ha /* 0x811CB970@ha */
/* 80422400  3C A0 80 68 */	lis r5, schedule_event@ha /* 0x80681FE4@ha */
/* 80422404  3B 83 B9 70 */	addi r28, r3, n_today_event@l /* 0x811CB970@l */
/* 80422408  3B 60 00 00 */	li r27, 0
/* 8042240C  3C 60 80 68 */	lis r3, n_schedule_event@ha /* 0x806828A4@ha */
/* 80422410  3C 80 81 1D */	lis r4, today_event@ha /* 0x811CB974@ha */
/* 80422414  93 7C 00 00 */	stw r27, 0(r28)
/* 80422418  3B A5 1F E4 */	addi r29, r5, schedule_event@l /* 0x80681FE4@l */
/* 8042241C  3B E3 28 A4 */	addi r31, r3, n_schedule_event@l /* 0x806828A4@l */
/* 80422420  3B C4 B9 74 */	addi r30, r4, today_event@l /* 0x811CB974@l */
/* 80422424  3B 20 00 00 */	li r25, 0
/* 80422428  48 00 00 3C */	b lbl_80422464
lbl_8042242C:
/* 8042242C  7F 5D DA 14 */	add r26, r29, r27
/* 80422430  80 7A 00 00 */	lwz r3, 0(r26)
/* 80422434  4B F7 B5 4D */	bl mEv_check_run_today
/* 80422438  2C 03 00 00 */	cmpwi r3, 0
/* 8042243C  41 82 00 20 */	beq lbl_8042245C
/* 80422440  80 7C 00 00 */	lwz r3, 0(r28)
/* 80422444  54 60 10 3A */	slwi r0, r3, 2
/* 80422448  2C 03 00 20 */	cmpwi r3, 0x20
/* 8042244C  7F 5E 01 2E */	stwx r26, r30, r0
/* 80422450  40 80 00 0C */	bge lbl_8042245C
/* 80422454  38 03 00 01 */	addi r0, r3, 1
/* 80422458  90 1C 00 00 */	stw r0, 0(r28)
lbl_8042245C:
/* 8042245C  3B 39 00 01 */	addi r25, r25, 1
/* 80422460  3B 7B 00 20 */	addi r27, r27, 0x20
lbl_80422464:
/* 80422464  80 1F 00 00 */	lwz r0, 0(r31)
/* 80422468  7C 19 00 00 */	cmpw r25, r0
/* 8042246C  41 80 FF C0 */	blt lbl_8042242C
/* 80422470  38 60 00 01 */	li r3, 1
/* 80422474  39 61 00 30 */	addi r11, r1, 0x30
/* 80422478  4B C7 8A 99 */	bl func_8009AF10
/* 8042247C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80422480  7C 08 03 A6 */	mtlr r0
/* 80422484  38 21 00 30 */	addi r1, r1, 0x30
/* 80422488  4E 80 00 20 */	blr 
