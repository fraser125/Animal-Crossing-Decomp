lbl_805F42DC:
/* 805F42DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805F42E0  7C 08 02 A6 */	mflr r0
/* 805F42E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 805F42E8  39 61 00 30 */	addi r11, r1, 0x30
/* 805F42EC  4B AA 6B CD */	bl func_8009AEB8
/* 805F42F0  7C 7A 1B 78 */	mr r26, r3
/* 805F42F4  38 00 00 0A */	li r0, 0xa
/* 805F42F8  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805F42FC  3B 80 00 00 */	li r28, 0
/* 805F4300  38 A0 00 00 */	li r5, 0
/* 805F4304  38 60 00 01 */	li r3, 1
/* 805F4308  83 E4 09 C0 */	lwz r31, 0x9c0(r4)
/* 805F430C  83 C4 09 88 */	lwz r30, 0x988(r4)
/* 805F4310  7C 09 03 A6 */	mtctr r0
lbl_805F4314:
/* 805F4314  A0 9E 05 E2 */	lhz r4, 0x5e2(r30)
/* 805F4318  7C 60 28 30 */	slw r0, r3, r5
/* 805F431C  7C 80 00 39 */	and. r0, r4, r0
/* 805F4320  41 82 00 08 */	beq lbl_805F4328
/* 805F4324  3B 9C 00 01 */	addi r28, r28, 1
lbl_805F4328:
/* 805F4328  38 A5 00 01 */	addi r5, r5, 1
/* 805F432C  42 00 FF E8 */	bdnz lbl_805F4314
/* 805F4330  38 00 00 14 */	li r0, 0x14
/* 805F4334  3B 60 00 00 */	li r27, 0
/* 805F4338  38 A0 00 00 */	li r5, 0
/* 805F433C  38 60 00 01 */	li r3, 1
/* 805F4340  7C 09 03 A6 */	mtctr r0
lbl_805F4344:
/* 805F4344  80 9F 0B B4 */	lwz r4, 0xbb4(r31)
/* 805F4348  7C 60 28 30 */	slw r0, r3, r5
/* 805F434C  7C 80 00 39 */	and. r0, r4, r0
/* 805F4350  41 82 00 08 */	beq lbl_805F4358
/* 805F4354  3B 7B 00 01 */	addi r27, r27, 1
lbl_805F4358:
/* 805F4358  38 A5 00 01 */	addi r5, r5, 1
/* 805F435C  42 00 FF E8 */	bdnz lbl_805F4344
/* 805F4360  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F4364  3A E0 00 00 */	li r23, 0
/* 805F4368  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F436C  3B A0 00 00 */	li r29, 0
/* 805F4370  7E F9 BB 78 */	mr r25, r23
/* 805F4374  3F 03 00 02 */	addis r24, r3, 2
lbl_805F4378:
/* 805F4378  80 18 61 3C */	lwz r0, 0x613c(r24)
/* 805F437C  38 79 04 E0 */	addi r3, r25, 0x4e0
/* 805F4380  7C 60 1A 14 */	add r3, r0, r3
/* 805F4384  4B DC 84 1D */	bl mMl_check_not_used_mail
/* 805F4388  2C 03 00 00 */	cmpwi r3, 0
/* 805F438C  41 82 00 08 */	beq lbl_805F4394
/* 805F4390  3B BD 00 01 */	addi r29, r29, 1
lbl_805F4394:
/* 805F4394  3A F7 00 01 */	addi r23, r23, 1
/* 805F4398  3B 39 01 2A */	addi r25, r25, 0x12a
/* 805F439C  2C 17 00 0A */	cmpwi r23, 0xa
/* 805F43A0  41 80 FF D8 */	blt lbl_805F4378
/* 805F43A4  88 1F 0B A8 */	lbz r0, 0xba8(r31)
/* 805F43A8  3A C0 00 00 */	li r22, 0
/* 805F43AC  3A E0 00 00 */	li r23, 0
/* 805F43B0  3B 20 00 00 */	li r25, 0
/* 805F43B4  1F 00 17 48 */	mulli r24, r0, 0x1748
lbl_805F43B8:
/* 805F43B8  7C 78 CA 14 */	add r3, r24, r25
/* 805F43BC  80 1F 00 00 */	lwz r0, 0(r31)
/* 805F43C0  38 63 00 64 */	addi r3, r3, 0x64
/* 805F43C4  7C 60 1A 14 */	add r3, r0, r3
/* 805F43C8  4B DC 83 D9 */	bl mMl_check_not_used_mail
/* 805F43CC  2C 03 00 01 */	cmpwi r3, 1
/* 805F43D0  40 82 00 08 */	bne lbl_805F43D8
/* 805F43D4  3A D6 00 01 */	addi r22, r22, 1
lbl_805F43D8:
/* 805F43D8  3A F7 00 01 */	addi r23, r23, 1
/* 805F43DC  3B 39 01 2A */	addi r25, r25, 0x12a
/* 805F43E0  2C 17 00 14 */	cmpwi r23, 0x14
/* 805F43E4  41 80 FF D4 */	blt lbl_805F43B8
/* 805F43E8  7C 1C D8 00 */	cmpw r28, r27
/* 805F43EC  38 C0 00 00 */	li r6, 0
/* 805F43F0  39 00 00 00 */	li r8, 0
/* 805F43F4  40 81 00 18 */	ble lbl_805F440C
/* 805F43F8  7C 1B E0 50 */	subf r0, r27, r28
/* 805F43FC  7C 00 B0 00 */	cmpw r0, r22
/* 805F4400  40 81 00 0C */	ble lbl_805F440C
/* 805F4404  7C D6 00 50 */	subf r6, r22, r0
/* 805F4408  48 00 00 1C */	b lbl_805F4424
lbl_805F440C:
/* 805F440C  7C 1B E0 00 */	cmpw r27, r28
/* 805F4410  40 81 00 14 */	ble lbl_805F4424
/* 805F4414  7C 1C D8 50 */	subf r0, r28, r27
/* 805F4418  7C 00 E8 00 */	cmpw r0, r29
/* 805F441C  40 81 00 08 */	ble lbl_805F4424
/* 805F4420  7D 1D 00 50 */	subf r8, r29, r0
lbl_805F4424:
/* 805F4424  7C 06 E0 00 */	cmpw r6, r28
/* 805F4428  40 82 00 24 */	bne lbl_805F444C
/* 805F442C  7C 08 D8 00 */	cmpw r8, r27
/* 805F4430  40 82 00 1C */	bne lbl_805F444C
/* 805F4434  38 00 00 00 */	li r0, 0
/* 805F4438  38 60 10 0A */	li r3, 0x100a
/* 805F443C  90 1F 0B B4 */	stw r0, 0xbb4(r31)
/* 805F4440  B0 1E 05 E2 */	sth r0, 0x5e2(r30)
/* 805F4444  48 03 98 C1 */	bl sAdo_SysTrgStart
/* 805F4448  48 00 00 A8 */	b lbl_805F44F0
lbl_805F444C:
/* 805F444C  2C 06 00 00 */	cmpwi r6, 0
/* 805F4450  40 81 00 44 */	ble lbl_805F4494
/* 805F4454  39 20 00 00 */	li r9, 0
/* 805F4458  38 E0 00 00 */	li r7, 0
/* 805F445C  38 60 00 01 */	li r3, 1
/* 805F4460  48 00 00 24 */	b lbl_805F4484
lbl_805F4464:
/* 805F4464  A0 9E 05 E2 */	lhz r4, 0x5e2(r30)
/* 805F4468  7C 65 38 30 */	slw r5, r3, r7
/* 805F446C  7C 80 28 39 */	and. r0, r4, r5
/* 805F4470  41 82 00 10 */	beq lbl_805F4480
/* 805F4474  7C 80 28 78 */	andc r0, r4, r5
/* 805F4478  39 29 00 01 */	addi r9, r9, 1
/* 805F447C  B0 1E 05 E2 */	sth r0, 0x5e2(r30)
lbl_805F4480:
/* 805F4480  38 E7 00 01 */	addi r7, r7, 1
lbl_805F4484:
/* 805F4484  7C 09 30 00 */	cmpw r9, r6
/* 805F4488  40 80 00 0C */	bge lbl_805F4494
/* 805F448C  2C 07 00 0A */	cmpwi r7, 0xa
/* 805F4490  41 80 FF D4 */	blt lbl_805F4464
lbl_805F4494:
/* 805F4494  2C 08 00 00 */	cmpwi r8, 0
/* 805F4498  40 81 00 44 */	ble lbl_805F44DC
/* 805F449C  38 C0 00 00 */	li r6, 0
/* 805F44A0  38 60 00 01 */	li r3, 1
/* 805F44A4  7C C7 33 78 */	mr r7, r6
/* 805F44A8  48 00 00 24 */	b lbl_805F44CC
lbl_805F44AC:
/* 805F44AC  80 9F 0B B4 */	lwz r4, 0xbb4(r31)
/* 805F44B0  7C 65 38 30 */	slw r5, r3, r7
/* 805F44B4  7C 80 28 39 */	and. r0, r4, r5
/* 805F44B8  41 82 00 10 */	beq lbl_805F44C8
/* 805F44BC  7C 80 28 78 */	andc r0, r4, r5
/* 805F44C0  38 C6 00 01 */	addi r6, r6, 1
/* 805F44C4  90 1F 0B B4 */	stw r0, 0xbb4(r31)
lbl_805F44C8:
/* 805F44C8  38 E7 00 01 */	addi r7, r7, 1
lbl_805F44CC:
/* 805F44CC  7C 06 40 00 */	cmpw r6, r8
/* 805F44D0  40 80 00 0C */	bge lbl_805F44DC
/* 805F44D4  2C 07 00 14 */	cmpwi r7, 0x14
/* 805F44D8  41 80 FF D4 */	blt lbl_805F44AC
lbl_805F44DC:
/* 805F44DC  38 00 00 02 */	li r0, 2
/* 805F44E0  38 60 00 02 */	li r3, 2
/* 805F44E4  B0 1E 05 E4 */	sth r0, 0x5e4(r30)
/* 805F44E8  90 1F 0B B8 */	stw r0, 0xbb8(r31)
/* 805F44EC  48 03 98 19 */	bl sAdo_SysTrgStart
lbl_805F44F0:
/* 805F44F0  7F 43 D3 78 */	mr r3, r26
/* 805F44F4  38 80 00 00 */	li r4, 0
/* 805F44F8  38 A0 00 00 */	li r5, 0
/* 805F44FC  4B FF B2 B9 */	bl mTG_return_tag_init
/* 805F4500  39 61 00 30 */	addi r11, r1, 0x30
/* 805F4504  4B AA 6A 01 */	bl func_8009AF04
/* 805F4508  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805F450C  7C 08 03 A6 */	mtlr r0
/* 805F4510  38 21 00 30 */	addi r1, r1, 0x30
/* 805F4514  4E 80 00 20 */	blr 
