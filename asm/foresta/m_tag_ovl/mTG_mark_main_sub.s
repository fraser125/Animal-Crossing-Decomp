lbl_805F63C4:
/* 805F63C4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805F63C8  7C 08 02 A6 */	mflr r0
/* 805F63CC  90 01 00 54 */	stw r0, 0x54(r1)
/* 805F63D0  39 61 00 50 */	addi r11, r1, 0x50
/* 805F63D4  4B AA 4A CD */	bl func_8009AEA0
/* 805F63D8  7C 7C 1B 78 */	mr r28, r3
/* 805F63DC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F63E0  81 7C 00 2C */	lwz r11, 0x2c(r28)
/* 805F63E4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F63E8  3D 83 00 02 */	addis r12, r3, 2
/* 805F63EC  7C 9D 23 78 */	mr r29, r4
/* 805F63F0  7C DE 33 78 */	mr r30, r6
/* 805F63F4  82 61 00 58 */	lwz r19, 0x58(r1)
/* 805F63F8  7C A4 2B 78 */	mr r4, r5
/* 805F63FC  82 81 00 5C */	lwz r20, 0x5c(r1)
/* 805F6400  83 4B 09 88 */	lwz r26, 0x988(r11)
/* 805F6404  7C FF 3B 78 */	mr r31, r7
/* 805F6408  83 2B 09 98 */	lwz r25, 0x998(r11)
/* 805F640C  7D 10 43 78 */	mr r16, r8
/* 805F6410  83 0B 09 C0 */	lwz r24, 0x9c0(r11)
/* 805F6414  7D 31 4B 78 */	mr r17, r9
/* 805F6418  82 EB 09 D0 */	lwz r23, 0x9d0(r11)
/* 805F641C  7D 52 53 78 */	mr r18, r10
/* 805F6420  82 CB 09 D8 */	lwz r22, 0x9d8(r11)
/* 805F6424  7F A3 EB 78 */	mr r3, r29
/* 805F6428  82 AB 09 DC */	lwz r21, 0x9dc(r11)
/* 805F642C  7F C5 F3 78 */	mr r5, r30
/* 805F6430  88 CC 60 01 */	lbz r6, 0x6001(r12)
/* 805F6434  4B FF FE 99 */	bl mTG_mark_enable_check
/* 805F6438  7C 7B 1B 78 */	mr r27, r3
/* 805F643C  28 1B 00 0C */	cmplwi r27, 0xc
/* 805F6440  41 81 05 68 */	bgt lbl_805F69A8
/* 805F6444  3C 60 80 6D */	lis r3, lit_2669@ha /* 0x806D0C24@ha */
/* 805F6448  57 60 10 3A */	slwi r0, r27, 2
/* 805F644C  38 63 0C 24 */	addi r3, r3, lit_2669@l /* 0x806D0C24@l */
/* 805F6450  7C 03 00 2E */	lwzx r0, r3, r0
/* 805F6454  7C 09 03 A6 */	mtctr r0
/* 805F6458  4E 80 04 20 */	bctr 
lbl_805F645C:
/* 805F645C  38 60 00 00 */	li r3, 0
/* 805F6460  48 00 05 4C */	b lbl_805F69AC
lbl_805F6464:
/* 805F6464  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F6468  57 E7 08 3C */	slwi r7, r31, 1
/* 805F646C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F6470  38 00 00 01 */	li r0, 1
/* 805F6474  3C 83 00 02 */	addis r4, r3, 2
/* 805F6478  2C 11 00 00 */	cmpwi r17, 0
/* 805F647C  80 A4 61 3C */	lwz r5, 0x613c(r4)
/* 805F6480  7C 03 F8 30 */	slw r3, r0, r31
/* 805F6484  38 9A 05 E0 */	addi r4, r26, 0x5e0
/* 805F6488  38 00 00 0F */	li r0, 0xf
/* 805F648C  7C C5 3A 14 */	add r6, r5, r7
/* 805F6490  80 A5 00 88 */	lwz r5, 0x88(r5)
/* 805F6494  A0 C6 00 68 */	lhz r6, 0x68(r6)
/* 805F6498  7C A5 3C 30 */	srw r5, r5, r7
/* 805F649C  90 92 00 00 */	stw r4, 0(r18)
/* 805F64A0  54 A4 07 BE */	clrlwi r4, r5, 0x1e
/* 805F64A4  54 D2 C7 3E */	rlwinm r18, r6, 0x18, 0x1c, 0x1f
/* 805F64A8  54 D0 A7 3E */	rlwinm r16, r6, 0x14, 0x1c, 0x1f
/* 805F64AC  B0 74 00 00 */	sth r3, 0(r20)
/* 805F64B0  90 13 00 00 */	stw r0, 0(r19)
/* 805F64B4  41 82 00 D8 */	beq lbl_805F658C
/* 805F64B8  2C 11 00 02 */	cmpwi r17, 2
/* 805F64BC  41 82 00 D0 */	beq lbl_805F658C
/* 805F64C0  2C 11 00 04 */	cmpwi r17, 4
/* 805F64C4  41 82 00 C8 */	beq lbl_805F658C
/* 805F64C8  28 06 00 00 */	cmplwi r6, 0
/* 805F64CC  41 82 00 C8 */	beq lbl_805F6594
/* 805F64D0  28 04 00 00 */	cmplwi r4, 0
/* 805F64D4  40 82 00 C0 */	bne lbl_805F6594
/* 805F64D8  28 06 25 23 */	cmplwi r6, 0x2523
/* 805F64DC  41 80 00 0C */	blt lbl_805F64E8
/* 805F64E0  28 06 25 2F */	cmplwi r6, 0x252f
/* 805F64E4  40 81 00 B0 */	ble lbl_805F6594
lbl_805F64E8:
/* 805F64E8  28 06 25 30 */	cmplwi r6, 0x2530
/* 805F64EC  41 82 00 A8 */	beq lbl_805F6594
/* 805F64F0  28 06 22 44 */	cmplwi r6, 0x2244
/* 805F64F4  41 80 00 0C */	blt lbl_805F6500
/* 805F64F8  28 06 22 4B */	cmplwi r6, 0x224b
/* 805F64FC  40 81 00 98 */	ble lbl_805F6594
lbl_805F6500:
/* 805F6500  2C 10 00 02 */	cmpwi r16, 2
/* 805F6504  40 82 00 14 */	bne lbl_805F6518
/* 805F6508  2C 12 00 03 */	cmpwi r18, 3
/* 805F650C  41 82 00 88 */	beq lbl_805F6594
/* 805F6510  2C 12 00 0D */	cmpwi r18, 0xd
/* 805F6514  41 82 00 80 */	beq lbl_805F6594
lbl_805F6518:
/* 805F6518  2C 1B 00 01 */	cmpwi r27, 1
/* 805F651C  40 82 00 10 */	bne lbl_805F652C
/* 805F6520  40 82 00 74 */	bne lbl_805F6594
/* 805F6524  28 06 25 1E */	cmplwi r6, 0x251e
/* 805F6528  41 82 00 6C */	beq lbl_805F6594
lbl_805F652C:
/* 805F652C  2C 1B 00 02 */	cmpwi r27, 2
/* 805F6530  40 82 00 38 */	bne lbl_805F6568
/* 805F6534  40 82 00 60 */	bne lbl_805F6594
/* 805F6538  2C 10 00 01 */	cmpwi r16, 1
/* 805F653C  41 82 00 58 */	beq lbl_805F6594
/* 805F6540  2C 10 00 03 */	cmpwi r16, 3
/* 805F6544  41 82 00 50 */	beq lbl_805F6594
/* 805F6548  28 06 22 04 */	cmplwi r6, 0x2204
/* 805F654C  41 80 00 0C */	blt lbl_805F6558
/* 805F6550  28 06 22 2B */	cmplwi r6, 0x222b
/* 805F6554  40 81 00 40 */	ble lbl_805F6594
lbl_805F6558:
/* 805F6558  28 06 24 00 */	cmplwi r6, 0x2400
/* 805F655C  41 80 00 0C */	blt lbl_805F6568
/* 805F6560  28 06 24 FF */	cmplwi r6, 0x24ff
/* 805F6564  41 80 00 30 */	blt lbl_805F6594
lbl_805F6568:
/* 805F6568  4B DA 46 CD */	bl mEv_CheckFirstJob
/* 805F656C  2C 03 00 00 */	cmpwi r3, 0
/* 805F6570  41 82 00 1C */	beq lbl_805F658C
/* 805F6574  2C 1B 00 02 */	cmpwi r27, 2
/* 805F6578  41 82 00 14 */	beq lbl_805F658C
/* 805F657C  2C 10 00 02 */	cmpwi r16, 2
/* 805F6580  40 82 00 0C */	bne lbl_805F658C
/* 805F6584  2C 12 00 09 */	cmpwi r18, 9
/* 805F6588  41 82 00 0C */	beq lbl_805F6594
lbl_805F658C:
/* 805F658C  38 60 00 01 */	li r3, 1
/* 805F6590  48 00 04 1C */	b lbl_805F69AC
lbl_805F6594:
/* 805F6594  38 60 00 00 */	li r3, 0
/* 805F6598  48 00 04 14 */	b lbl_805F69AC
lbl_805F659C:
/* 805F659C  38 60 00 00 */	li r3, 0
/* 805F65A0  48 00 04 0C */	b lbl_805F69AC
lbl_805F65A4:
/* 805F65A4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F65A8  57 E5 08 3C */	slwi r5, r31, 1
/* 805F65AC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F65B0  38 00 00 01 */	li r0, 1
/* 805F65B4  3C 83 00 02 */	addis r4, r3, 2
/* 805F65B8  2C 11 00 00 */	cmpwi r17, 0
/* 805F65BC  80 C4 61 3C */	lwz r6, 0x613c(r4)
/* 805F65C0  7C 03 F8 30 */	slw r3, r0, r31
/* 805F65C4  38 9A 05 E0 */	addi r4, r26, 0x5e0
/* 805F65C8  38 00 00 0F */	li r0, 0xf
/* 805F65CC  7C A6 2A 14 */	add r5, r6, r5
/* 805F65D0  A0 A5 00 68 */	lhz r5, 0x68(r5)
/* 805F65D4  90 92 00 00 */	stw r4, 0(r18)
/* 805F65D8  B0 74 00 00 */	sth r3, 0(r20)
/* 805F65DC  90 13 00 00 */	stw r0, 0(r19)
/* 805F65E0  41 82 00 78 */	beq lbl_805F6658
/* 805F65E4  2C 11 00 02 */	cmpwi r17, 2
/* 805F65E8  41 82 00 70 */	beq lbl_805F6658
/* 805F65EC  2C 11 00 04 */	cmpwi r17, 4
/* 805F65F0  41 82 00 68 */	beq lbl_805F6658
/* 805F65F4  28 05 00 00 */	cmplwi r5, 0
/* 805F65F8  41 82 00 68 */	beq lbl_805F6660
/* 805F65FC  28 05 25 23 */	cmplwi r5, 0x2523
/* 805F6600  41 80 00 0C */	blt lbl_805F660C
/* 805F6604  28 05 25 2F */	cmplwi r5, 0x252f
/* 805F6608  40 81 00 58 */	ble lbl_805F6660
lbl_805F660C:
/* 805F660C  28 05 25 30 */	cmplwi r5, 0x2530
/* 805F6610  41 82 00 50 */	beq lbl_805F6660
/* 805F6614  54 A4 A7 3E */	rlwinm r4, r5, 0x14, 0x1c, 0x1f
/* 805F6618  2C 04 00 02 */	cmpwi r4, 2
/* 805F661C  40 82 00 10 */	bne lbl_805F662C
/* 805F6620  54 A0 C7 3E */	rlwinm r0, r5, 0x18, 0x1c, 0x1f
/* 805F6624  2C 00 00 01 */	cmpwi r0, 1
/* 805F6628  41 82 00 38 */	beq lbl_805F6660
lbl_805F662C:
/* 805F662C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F6630  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F6634  3C 63 00 02 */	addis r3, r3, 2
/* 805F6638  88 03 61 24 */	lbz r0, 0x6124(r3)
/* 805F663C  28 00 00 00 */	cmplwi r0, 0
/* 805F6640  40 82 00 18 */	bne lbl_805F6658
/* 805F6644  2C 04 00 02 */	cmpwi r4, 2
/* 805F6648  40 82 00 10 */	bne lbl_805F6658
/* 805F664C  54 A0 C7 3E */	rlwinm r0, r5, 0x18, 0x1c, 0x1f
/* 805F6650  2C 00 00 0F */	cmpwi r0, 0xf
/* 805F6654  41 82 00 0C */	beq lbl_805F6660
lbl_805F6658:
/* 805F6658  38 60 00 01 */	li r3, 1
/* 805F665C  48 00 03 50 */	b lbl_805F69AC
lbl_805F6660:
/* 805F6660  38 60 00 00 */	li r3, 0
/* 805F6664  48 00 03 48 */	b lbl_805F69AC
lbl_805F6668:
/* 805F6668  2C 1E 00 01 */	cmpwi r30, 1
/* 805F666C  40 82 01 04 */	bne lbl_805F6770
/* 805F6670  38 7A 05 E2 */	addi r3, r26, 0x5e2
/* 805F6674  38 00 00 01 */	li r0, 1
/* 805F6678  90 72 00 00 */	stw r3, 0(r18)
/* 805F667C  7C 03 F8 30 */	slw r3, r0, r31
/* 805F6680  2C 11 00 00 */	cmpwi r17, 0
/* 805F6684  38 00 00 0A */	li r0, 0xa
/* 805F6688  B0 74 00 00 */	sth r3, 0(r20)
/* 805F668C  90 13 00 00 */	stw r0, 0(r19)
/* 805F6690  41 82 00 D8 */	beq lbl_805F6768
/* 805F6694  2C 11 00 02 */	cmpwi r17, 2
/* 805F6698  41 82 00 D0 */	beq lbl_805F6768
/* 805F669C  2C 11 00 04 */	cmpwi r17, 4
/* 805F66A0  41 82 00 C8 */	beq lbl_805F6768
/* 805F66A4  7E 03 83 78 */	mr r3, r16
/* 805F66A8  4B DC 60 F9 */	bl mMl_check_not_used_mail
/* 805F66AC  2C 03 00 01 */	cmpwi r3, 1
/* 805F66B0  40 82 00 0C */	bne lbl_805F66BC
/* 805F66B4  38 60 00 00 */	li r3, 0
/* 805F66B8  48 00 02 F4 */	b lbl_805F69AC
lbl_805F66BC:
/* 805F66BC  2C 1D 00 0B */	cmpwi r29, 0xb
/* 805F66C0  40 82 00 40 */	bne lbl_805F6700
/* 805F66C4  A0 10 00 2C */	lhz r0, 0x2c(r16)
/* 805F66C8  28 00 00 00 */	cmplwi r0, 0
/* 805F66CC  40 82 00 2C */	bne lbl_805F66F8
/* 805F66D0  88 10 00 2E */	lbz r0, 0x2e(r16)
/* 805F66D4  28 00 00 02 */	cmplwi r0, 2
/* 805F66D8  41 82 00 0C */	beq lbl_805F66E4
/* 805F66DC  28 00 00 04 */	cmplwi r0, 4
/* 805F66E0  40 82 00 18 */	bne lbl_805F66F8
lbl_805F66E4:
/* 805F66E4  7E 03 83 78 */	mr r3, r16
/* 805F66E8  4B FF FA ED */	bl mTG_mail_check
/* 805F66EC  54 60 07 BC */	rlwinm r0, r3, 0, 0x1e, 0x1e
/* 805F66F0  2C 00 00 02 */	cmpwi r0, 2
/* 805F66F4  41 82 00 74 */	beq lbl_805F6768
lbl_805F66F8:
/* 805F66F8  38 60 00 00 */	li r3, 0
/* 805F66FC  48 00 02 B0 */	b lbl_805F69AC
lbl_805F6700:
/* 805F6700  2C 1D 00 11 */	cmpwi r29, 0x11
/* 805F6704  40 82 00 20 */	bne lbl_805F6724
/* 805F6708  7E 03 83 78 */	mr r3, r16
/* 805F670C  4B FF FA C9 */	bl mTG_mail_check
/* 805F6710  54 60 07 BC */	rlwinm r0, r3, 0, 0x1e, 0x1e
/* 805F6714  2C 00 00 02 */	cmpwi r0, 2
/* 805F6718  41 82 00 50 */	beq lbl_805F6768
/* 805F671C  38 60 00 00 */	li r3, 0
/* 805F6720  48 00 02 8C */	b lbl_805F69AC
lbl_805F6724:
/* 805F6724  88 10 00 2E */	lbz r0, 0x2e(r16)
/* 805F6728  28 00 00 02 */	cmplwi r0, 2
/* 805F672C  41 82 00 0C */	beq lbl_805F6738
/* 805F6730  28 00 00 04 */	cmplwi r0, 4
/* 805F6734  40 82 00 2C */	bne lbl_805F6760
lbl_805F6738:
/* 805F6738  7E 03 83 78 */	mr r3, r16
/* 805F673C  4B FF FA 99 */	bl mTG_mail_check
/* 805F6740  54 60 07 BC */	rlwinm r0, r3, 0, 0x1e, 0x1e
/* 805F6744  2C 00 00 02 */	cmpwi r0, 2
/* 805F6748  40 82 00 18 */	bne lbl_805F6760
/* 805F674C  7E 03 83 78 */	mr r3, r16
/* 805F6750  4B FF FA 85 */	bl mTG_mail_check
/* 805F6754  54 60 07 FE */	clrlwi r0, r3, 0x1f
/* 805F6758  2C 00 00 01 */	cmpwi r0, 1
/* 805F675C  40 82 00 0C */	bne lbl_805F6768
lbl_805F6760:
/* 805F6760  38 60 00 00 */	li r3, 0
/* 805F6764  48 00 02 48 */	b lbl_805F69AC
lbl_805F6768:
/* 805F6768  38 60 00 01 */	li r3, 1
/* 805F676C  48 00 02 40 */	b lbl_805F69AC
lbl_805F6770:
/* 805F6770  2C 1E 00 05 */	cmpwi r30, 5
/* 805F6774  40 82 00 6C */	bne lbl_805F67E0
/* 805F6778  38 79 00 08 */	addi r3, r25, 8
/* 805F677C  38 00 00 01 */	li r0, 1
/* 805F6780  90 72 00 00 */	stw r3, 0(r18)
/* 805F6784  7C 03 F8 30 */	slw r3, r0, r31
/* 805F6788  2C 11 00 00 */	cmpwi r17, 0
/* 805F678C  38 00 00 0A */	li r0, 0xa
/* 805F6790  B0 74 00 00 */	sth r3, 0(r20)
/* 805F6794  90 13 00 00 */	stw r0, 0(r19)
/* 805F6798  40 82 00 14 */	bne lbl_805F67AC
/* 805F679C  2C 11 00 02 */	cmpwi r17, 2
/* 805F67A0  40 82 00 0C */	bne lbl_805F67AC
/* 805F67A4  2C 11 00 04 */	cmpwi r17, 4
/* 805F67A8  41 82 02 00 */	beq lbl_805F69A8
lbl_805F67AC:
/* 805F67AC  7E 03 83 78 */	mr r3, r16
/* 805F67B0  4B DC 5F F1 */	bl mMl_check_not_used_mail
/* 805F67B4  2C 03 00 01 */	cmpwi r3, 1
/* 805F67B8  41 82 00 18 */	beq lbl_805F67D0
/* 805F67BC  7E 03 83 78 */	mr r3, r16
/* 805F67C0  4B FF FA 15 */	bl mTG_mail_check
/* 805F67C4  54 60 07 BC */	rlwinm r0, r3, 0, 0x1e, 0x1e
/* 805F67C8  2C 00 00 02 */	cmpwi r0, 2
/* 805F67CC  41 82 00 0C */	beq lbl_805F67D8
lbl_805F67D0:
/* 805F67D0  38 60 00 00 */	li r3, 0
/* 805F67D4  48 00 01 D8 */	b lbl_805F69AC
lbl_805F67D8:
/* 805F67D8  38 60 00 01 */	li r3, 1
/* 805F67DC  48 00 01 D0 */	b lbl_805F69AC
lbl_805F67E0:
/* 805F67E0  2C 1E 00 09 */	cmpwi r30, 9
/* 805F67E4  40 82 00 68 */	bne lbl_805F684C
/* 805F67E8  2C 11 00 00 */	cmpwi r17, 0
/* 805F67EC  40 82 00 14 */	bne lbl_805F6800
/* 805F67F0  2C 11 00 02 */	cmpwi r17, 2
/* 805F67F4  40 82 00 0C */	bne lbl_805F6800
/* 805F67F8  2C 11 00 04 */	cmpwi r17, 4
/* 805F67FC  41 82 00 30 */	beq lbl_805F682C
lbl_805F6800:
/* 805F6800  7E 03 83 78 */	mr r3, r16
/* 805F6804  4B DC 5F 9D */	bl mMl_check_not_used_mail
/* 805F6808  2C 03 00 01 */	cmpwi r3, 1
/* 805F680C  41 82 00 18 */	beq lbl_805F6824
/* 805F6810  7E 03 83 78 */	mr r3, r16
/* 805F6814  4B FF F9 C1 */	bl mTG_mail_check
/* 805F6818  54 60 07 BC */	rlwinm r0, r3, 0, 0x1e, 0x1e
/* 805F681C  2C 00 00 02 */	cmpwi r0, 2
/* 805F6820  41 82 00 0C */	beq lbl_805F682C
lbl_805F6824:
/* 805F6824  38 60 00 00 */	li r3, 0
/* 805F6828  48 00 01 84 */	b lbl_805F69AC
lbl_805F682C:
/* 805F682C  38 78 0B B4 */	addi r3, r24, 0xbb4
/* 805F6830  38 00 00 01 */	li r0, 1
/* 805F6834  90 72 00 00 */	stw r3, 0(r18)
/* 805F6838  7C 03 F8 30 */	slw r3, r0, r31
/* 805F683C  38 00 00 14 */	li r0, 0x14
/* 805F6840  90 74 00 00 */	stw r3, 0(r20)
/* 805F6844  90 13 00 00 */	stw r0, 0(r19)
/* 805F6848  48 00 01 60 */	b lbl_805F69A8
lbl_805F684C:
/* 805F684C  38 60 00 00 */	li r3, 0
/* 805F6850  48 00 01 5C */	b lbl_805F69AC
lbl_805F6854:
/* 805F6854  7F E0 2E 70 */	srawi r0, r31, 5
/* 805F6858  38 77 00 14 */	addi r3, r23, 0x14
/* 805F685C  7F 60 01 94 */	addze r27, r0
/* 805F6860  90 72 00 00 */	stw r3, 0(r18)
/* 805F6864  57 60 28 34 */	slwi r0, r27, 5
/* 805F6868  38 80 00 01 */	li r4, 1
/* 805F686C  7C 60 F8 50 */	subf r3, r0, r31
/* 805F6870  57 60 10 3A */	slwi r0, r27, 2
/* 805F6874  7C 83 18 30 */	slw r3, r4, r3
/* 805F6878  2C 11 00 00 */	cmpwi r17, 0
/* 805F687C  7C 74 01 2E */	stwx r3, r20, r0
/* 805F6880  38 00 00 37 */	li r0, 0x37
/* 805F6884  90 13 00 00 */	stw r0, 0(r19)
/* 805F6888  40 82 00 14 */	bne lbl_805F689C
/* 805F688C  2C 11 00 02 */	cmpwi r17, 2
/* 805F6890  40 82 00 0C */	bne lbl_805F689C
/* 805F6894  2C 11 00 04 */	cmpwi r17, 4
/* 805F6898  41 82 01 10 */	beq lbl_805F69A8
lbl_805F689C:
/* 805F689C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F68A0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F68A4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 805F68A8  2C 00 00 2F */	cmpwi r0, 0x2f
/* 805F68AC  40 82 00 10 */	bne lbl_805F68BC
/* 805F68B0  3C 83 00 02 */	addis r4, r3, 2
/* 805F68B4  38 84 32 14 */	addi r4, r4, 0x3214
/* 805F68B8  48 00 00 28 */	b lbl_805F68E0
lbl_805F68BC:
/* 805F68BC  3C 63 00 02 */	addis r3, r3, 2
/* 805F68C0  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 805F68C4  4B DB CC F5 */	bl mHS_get_arrange_idx
/* 805F68C8  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 805F68CC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F68D0  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 805F68D4  7C 60 22 14 */	add r3, r0, r4
/* 805F68D8  3C 83 00 01 */	addis r4, r3, 1
/* 805F68DC  38 84 C3 6C */	addi r4, r4, -15508
lbl_805F68E0:
/* 805F68E0  57 63 17 7A */	rlwinm r3, r27, 2, 0x1d, 0x1d
/* 805F68E4  57 E0 06 FE */	clrlwi r0, r31, 0x1b
/* 805F68E8  7C 64 18 2E */	lwzx r3, r4, r3
/* 805F68EC  7C 60 04 30 */	srw r0, r3, r0
/* 805F68F0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F68F4  40 82 00 B4 */	bne lbl_805F69A8
/* 805F68F8  38 60 00 00 */	li r3, 0
/* 805F68FC  48 00 00 B0 */	b lbl_805F69AC
lbl_805F6900:
/* 805F6900  38 00 00 01 */	li r0, 1
/* 805F6904  92 D2 00 00 */	stw r22, 0(r18)
/* 805F6908  7C 00 F8 30 */	slw r0, r0, r31
/* 805F690C  2C 11 00 00 */	cmpwi r17, 0
/* 805F6910  B0 14 00 00 */	sth r0, 0(r20)
/* 805F6914  38 00 00 08 */	li r0, 8
/* 805F6918  90 13 00 00 */	stw r0, 0(r19)
/* 805F691C  41 82 00 14 */	beq lbl_805F6930
/* 805F6920  2C 11 00 02 */	cmpwi r17, 2
/* 805F6924  41 82 00 0C */	beq lbl_805F6930
/* 805F6928  2C 11 00 04 */	cmpwi r17, 4
/* 805F692C  40 82 00 7C */	bne lbl_805F69A8
lbl_805F6930:
/* 805F6930  7F 83 E3 78 */	mr r3, r28
/* 805F6934  7F E4 FB 78 */	mr r4, r31
/* 805F6938  4B FF 2D 75 */	bl mNW_check_hide_flg
/* 805F693C  2C 03 00 00 */	cmpwi r3, 0
/* 805F6940  41 82 00 68 */	beq lbl_805F69A8
/* 805F6944  38 60 00 00 */	li r3, 0
/* 805F6948  48 00 00 64 */	b lbl_805F69AC
lbl_805F694C:
/* 805F694C  38 75 00 14 */	addi r3, r21, 0x14
/* 805F6950  38 00 00 01 */	li r0, 1
/* 805F6954  90 72 00 00 */	stw r3, 0(r18)
/* 805F6958  7C 03 F8 30 */	slw r3, r0, r31
/* 805F695C  2C 11 00 00 */	cmpwi r17, 0
/* 805F6960  38 00 00 0C */	li r0, 0xc
/* 805F6964  B0 74 00 00 */	sth r3, 0(r20)
/* 805F6968  90 13 00 00 */	stw r0, 0(r19)
/* 805F696C  41 82 00 14 */	beq lbl_805F6980
/* 805F6970  2C 11 00 02 */	cmpwi r17, 2
/* 805F6974  41 82 00 0C */	beq lbl_805F6980
/* 805F6978  2C 11 00 04 */	cmpwi r17, 4
/* 805F697C  40 82 00 2C */	bne lbl_805F69A8
lbl_805F6980:
/* 805F6980  7F 83 E3 78 */	mr r3, r28
/* 805F6984  4B FD 68 C5 */	bl mCO_top_folder
/* 805F6988  7C 64 1B 78 */	mr r4, r3
/* 805F698C  7F 83 E3 78 */	mr r3, r28
/* 805F6990  7F E5 FB 78 */	mr r5, r31
/* 805F6994  4B FD 69 15 */	bl mCO_check_hide_flg
/* 805F6998  2C 03 00 00 */	cmpwi r3, 0
/* 805F699C  41 82 00 0C */	beq lbl_805F69A8
/* 805F69A0  38 60 00 00 */	li r3, 0
/* 805F69A4  48 00 00 08 */	b lbl_805F69AC
lbl_805F69A8:
/* 805F69A8  38 60 00 01 */	li r3, 1
lbl_805F69AC:
/* 805F69AC  39 61 00 50 */	addi r11, r1, 0x50
/* 805F69B0  4B AA 45 3D */	bl func_8009AEEC
/* 805F69B4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805F69B8  7C 08 03 A6 */	mtlr r0
/* 805F69BC  38 21 00 50 */	addi r1, r1, 0x50
/* 805F69C0  4E 80 00 20 */	blr 
