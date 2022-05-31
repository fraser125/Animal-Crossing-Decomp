lbl_804C1360:
/* 804C1360  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804C1364  7C 08 02 A6 */	mflr r0
/* 804C1368  90 01 00 44 */	stw r0, 0x44(r1)
/* 804C136C  39 61 00 40 */	addi r11, r1, 0x40
/* 804C1370  4B BD 9B 5D */	bl func_8009AECC
/* 804C1374  7C 7B 1B 78 */	mr r27, r3
/* 804C1378  7C 9E 23 78 */	mr r30, r4
/* 804C137C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 804C1380  7C BF 2B 78 */	mr r31, r5
/* 804C1384  28 00 08 04 */	cmplwi r0, 0x804
/* 804C1388  7C DC 33 78 */	mr r28, r6
/* 804C138C  41 82 00 14 */	beq lbl_804C13A0
/* 804C1390  28 00 08 61 */	cmplwi r0, 0x861
/* 804C1394  41 82 00 0C */	beq lbl_804C13A0
/* 804C1398  28 00 08 68 */	cmplwi r0, 0x868
/* 804C139C  40 82 00 40 */	bne lbl_804C13DC
lbl_804C13A0:
/* 804C13A0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804C13A4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804C13A8  3C 63 00 02 */	addis r3, r3, 2
/* 804C13AC  80 63 60 88 */	lwz r3, 0x6088(r3)
/* 804C13B0  28 03 00 00 */	cmplwi r3, 0
/* 804C13B4  41 82 01 10 */	beq lbl_804C14C4
/* 804C13B8  81 83 00 14 */	lwz r12, 0x14(r3)
/* 804C13BC  28 0C 00 00 */	cmplwi r12, 0
/* 804C13C0  41 82 01 04 */	beq lbl_804C14C4
/* 804C13C4  7F C4 F3 78 */	mr r4, r30
/* 804C13C8  7F E5 FB 78 */	mr r5, r31
/* 804C13CC  38 60 00 04 */	li r3, 4
/* 804C13D0  7D 89 03 A6 */	mtctr r12
/* 804C13D4  4E 80 04 21 */	bctrl 
/* 804C13D8  48 00 00 EC */	b lbl_804C14C4
lbl_804C13DC:
/* 804C13DC  28 00 00 5E */	cmplwi r0, 0x5e
/* 804C13E0  41 82 00 14 */	beq lbl_804C13F4
/* 804C13E4  28 00 00 7A */	cmplwi r0, 0x7a
/* 804C13E8  41 82 00 0C */	beq lbl_804C13F4
/* 804C13EC  28 00 00 81 */	cmplwi r0, 0x81
/* 804C13F0  40 82 00 CC */	bne lbl_804C14BC
lbl_804C13F4:
/* 804C13F4  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804C13F8  3C 60 80 6A */	lis r3, wait_pos@ha /* 0x80698A74@ha */
/* 804C13FC  38 84 52 F0 */	addi r4, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 804C1400  39 40 FF FF */	li r10, -1
/* 804C1404  80 84 00 00 */	lwz r4, 0(r4)
/* 804C1408  39 23 8A 74 */	addi r9, r3, wait_pos@l /* 0x80698A74@l */
/* 804C140C  38 00 00 00 */	li r0, 0
/* 804C1410  38 A0 00 A4 */	li r5, 0xa4
/* 804C1414  91 41 00 08 */	stw r10, 8(r1)
/* 804C1418  38 64 1D A8 */	addi r3, r4, 0x1da8
/* 804C141C  38 C0 00 00 */	li r6, 0
/* 804C1420  38 E0 00 00 */	li r7, 0
/* 804C1424  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C1428  39 00 00 00 */	li r8, 0
/* 804C142C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C1430  91 41 00 14 */	stw r10, 0x14(r1)
/* 804C1434  91 41 00 18 */	stw r10, 0x18(r1)
/* 804C1438  C0 29 00 00 */	lfs f1, 0(r9)
/* 804C143C  C0 49 00 04 */	lfs f2, 4(r9)
/* 804C1440  C0 69 00 08 */	lfs f3, 8(r9)
/* 804C1444  89 24 00 E4 */	lbz r9, 0xe4(r4)
/* 804C1448  89 44 00 E5 */	lbz r10, 0xe5(r4)
/* 804C144C  4B EB 42 FD */	bl Actor_info_make_actor
/* 804C1450  7C 7D 1B 79 */	or. r29, r3, r3
/* 804C1454  41 82 00 54 */	beq lbl_804C14A8
/* 804C1458  7F 63 DB 78 */	mr r3, r27
/* 804C145C  7F C4 F3 78 */	mr r4, r30
/* 804C1460  7F E5 FB 78 */	mr r5, r31
/* 804C1464  7F 86 E3 78 */	mr r6, r28
/* 804C1468  7F A7 EB 78 */	mr r7, r29
/* 804C146C  4B FF FC 35 */	bl drop_fruit
/* 804C1470  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80646144@ha */
/* 804C1474  C0 1C 00 00 */	lfs f0, 0(r28)
/* 804C1478  C0 23 61 44 */	lfs f1, lit_664@l(r3)  /* 0x80646144@l */
/* 804C147C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804C1480  40 82 00 44 */	bne lbl_804C14C4
/* 804C1484  C0 1C 00 04 */	lfs f0, 4(r28)
/* 804C1488  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804C148C  40 82 00 38 */	bne lbl_804C14C4
/* 804C1490  C0 1C 00 08 */	lfs f0, 8(r28)
/* 804C1494  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804C1498  40 82 00 2C */	bne lbl_804C14C4
/* 804C149C  7F A3 EB 78 */	mr r3, r29
/* 804C14A0  4B EB 2F A1 */	bl Actor_delete
/* 804C14A4  48 00 00 20 */	b lbl_804C14C4
lbl_804C14A8:
/* 804C14A8  3C 80 80 6A */	lis r4, wait_pos@ha /* 0x80698A74@ha */
/* 804C14AC  7F 83 E3 78 */	mr r3, r28
/* 804C14B0  38 84 8A 74 */	addi r4, r4, wait_pos@l /* 0x80698A74@l */
/* 804C14B4  4B EF 9A 09 */	bl xyz_t_move
/* 804C14B8  48 00 00 0C */	b lbl_804C14C4
lbl_804C14BC:
/* 804C14BC  38 E0 00 00 */	li r7, 0
/* 804C14C0  4B FF FB E1 */	bl drop_fruit
lbl_804C14C4:
/* 804C14C4  39 61 00 40 */	addi r11, r1, 0x40
/* 804C14C8  4B BD 9A 51 */	bl func_8009AF18
/* 804C14CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804C14D0  7C 08 03 A6 */	mtlr r0
/* 804C14D4  38 21 00 40 */	addi r1, r1, 0x40
/* 804C14D8  4E 80 00 20 */	blr 
