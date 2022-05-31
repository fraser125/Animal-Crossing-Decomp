lbl_8039DEB4:
/* 8039DEB4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8039DEB8  7C 08 02 A6 */	mflr r0
/* 8039DEBC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8039DEC0  39 61 00 40 */	addi r11, r1, 0x40
/* 8039DEC4  4B CF CF F1 */	bl func_8009AEB4
/* 8039DEC8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039DECC  3B 60 00 00 */	li r27, 0
/* 8039DED0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039DED4  3B 80 00 00 */	li r28, 0
/* 8039DED8  3F C3 00 02 */	addis r30, r3, 2
/* 8039DEDC  3B 00 00 00 */	li r24, 0
/* 8039DEE0  3B BE 05 54 */	addi r29, r30, 0x554
lbl_8039DEE4:
/* 8039DEE4  38 60 00 01 */	li r3, 1
/* 8039DEE8  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 8039DEEC  7C 7F E0 30 */	slw r31, r3, r28
/* 8039DEF0  3B 38 00 18 */	addi r25, r24, 0x18
/* 8039DEF4  7F E0 00 39 */	and. r0, r31, r0
/* 8039DEF8  7F 3D CA 14 */	add r25, r29, r25
/* 8039DEFC  41 82 00 CC */	beq lbl_8039DFC8
/* 8039DF00  88 F9 00 04 */	lbz r7, 4(r25)
/* 8039DF04  89 19 00 06 */	lbz r8, 6(r25)
/* 8039DF08  7C 07 40 40 */	cmplw r7, r8
/* 8039DF0C  40 81 00 20 */	ble lbl_8039DF2C
/* 8039DF10  88 1E 61 25 */	lbz r0, 0x6125(r30)
/* 8039DF14  7C 07 00 40 */	cmplw r7, r0
/* 8039DF18  40 81 00 14 */	ble lbl_8039DF2C
/* 8039DF1C  A0 7E 61 26 */	lhz r3, 0x6126(r30)
/* 8039DF20  38 03 FF FF */	addi r0, r3, -1
/* 8039DF24  54 1A 04 3E */	clrlwi r26, r0, 0x10
/* 8039DF28  48 00 00 08 */	b lbl_8039DF30
lbl_8039DF2C:
/* 8039DF2C  A3 5E 61 26 */	lhz r26, 0x6126(r30)
lbl_8039DF30:
/* 8039DF30  88 9E 61 25 */	lbz r4, 0x6125(r30)
/* 8039DF34  88 DE 61 23 */	lbz r6, 0x6123(r30)
/* 8039DF38  50 86 44 2E */	rlwimi r6, r4, 8, 0x10, 0x17
/* 8039DF3C  88 B9 00 05 */	lbz r5, 5(r25)
/* 8039DF40  88 19 00 07 */	lbz r0, 7(r25)
/* 8039DF44  50 E5 44 2E */	rlwimi r5, r7, 8, 0x10, 0x17
/* 8039DF48  51 00 44 2E */	rlwimi r0, r8, 8, 0x10, 0x17
/* 8039DF4C  88 79 00 00 */	lbz r3, 0(r25)
/* 8039DF50  38 80 00 01 */	li r4, 1
/* 8039DF54  54 D7 04 3E */	clrlwi r23, r6, 0x10
/* 8039DF58  54 B6 04 3E */	clrlwi r22, r5, 0x10
/* 8039DF5C  54 15 04 3E */	clrlwi r21, r0, 0x10
/* 8039DF60  4B FF FB A1 */	bl mEv_check_status
/* 8039DF64  2C 03 00 00 */	cmpwi r3, 0
/* 8039DF68  40 82 00 28 */	bne lbl_8039DF90
/* 8039DF6C  88 79 00 00 */	lbz r3, 0(r25)
/* 8039DF70  38 80 00 10 */	li r4, 0x10
/* 8039DF74  4B FF FB 8D */	bl mEv_check_status
/* 8039DF78  2C 03 00 00 */	cmpwi r3, 0
/* 8039DF7C  40 82 00 14 */	bne lbl_8039DF90
/* 8039DF80  88 7E 60 03 */	lbz r3, 0x6003(r30)
/* 8039DF84  48 00 08 35 */	bl mEv_ArbeitPlayer
/* 8039DF88  2C 03 00 00 */	cmpwi r3, 0
/* 8039DF8C  41 82 00 2C */	beq lbl_8039DFB8
lbl_8039DF90:
/* 8039DF90  7E E3 BB 78 */	mr r3, r23
/* 8039DF94  7E C4 B3 78 */	mr r4, r22
/* 8039DF98  7E A5 AB 78 */	mr r5, r21
/* 8039DF9C  4B FF D2 05 */	bl check_date_range
/* 8039DFA0  2C 03 00 00 */	cmpwi r3, 0
/* 8039DFA4  41 82 00 14 */	beq lbl_8039DFB8
/* 8039DFA8  A0 19 00 02 */	lhz r0, 2(r25)
/* 8039DFAC  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 8039DFB0  7C 03 00 40 */	cmplw r3, r0
/* 8039DFB4  41 82 00 14 */	beq lbl_8039DFC8
lbl_8039DFB8:
/* 8039DFB8  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 8039DFBC  3B 7B 00 01 */	addi r27, r27, 1
/* 8039DFC0  7C 00 F8 78 */	andc r0, r0, r31
/* 8039DFC4  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_8039DFC8:
/* 8039DFC8  3B 9C 00 01 */	addi r28, r28, 1
/* 8039DFCC  3B 18 00 34 */	addi r24, r24, 0x34
/* 8039DFD0  2C 1C 00 05 */	cmpwi r28, 5
/* 8039DFD4  41 80 FF 10 */	blt lbl_8039DEE4
/* 8039DFD8  7F 63 DB 78 */	mr r3, r27
/* 8039DFDC  39 61 00 40 */	addi r11, r1, 0x40
/* 8039DFE0  4B CF CF 21 */	bl func_8009AF00
/* 8039DFE4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8039DFE8  7C 08 03 A6 */	mtlr r0
/* 8039DFEC  38 21 00 40 */	addi r1, r1, 0x40
/* 8039DFF0  4E 80 00 20 */	blr 
