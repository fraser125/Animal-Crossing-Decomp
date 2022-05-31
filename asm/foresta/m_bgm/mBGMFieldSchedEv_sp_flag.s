lbl_8037A43C:
/* 8037A43C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037A440  7C 08 02 A6 */	mflr r0
/* 8037A444  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037A448  80 03 00 C0 */	lwz r0, 0xc0(r3)
/* 8037A44C  70 00 00 05 */	andi. r0, r0, 5
/* 8037A450  28 00 00 05 */	cmplwi r0, 5
/* 8037A454  40 82 00 10 */	bne lbl_8037A464
/* 8037A458  80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 8037A45C  2C 00 00 00 */	cmpwi r0, 0
/* 8037A460  40 82 00 20 */	bne lbl_8037A480
lbl_8037A464:
/* 8037A464  80 03 00 CC */	lwz r0, 0xcc(r3)
/* 8037A468  70 00 00 05 */	andi. r0, r0, 5
/* 8037A46C  28 00 00 05 */	cmplwi r0, 5
/* 8037A470  40 82 00 40 */	bne lbl_8037A4B0
/* 8037A474  80 03 00 D0 */	lwz r0, 0xd0(r3)
/* 8037A478  2C 00 00 00 */	cmpwi r0, 0
/* 8037A47C  41 82 00 34 */	beq lbl_8037A4B0
lbl_8037A480:
/* 8037A480  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037A484  3C A0 00 42 */	lis r5, 0x0042 /* 0x00420040@ha */
/* 8037A488  3C 80 04 00 */	lis r4, 0x0400 /* 0x03FFFFFF@ha */
/* 8037A48C  38 C4 FF FF */	addi r6, r4, 0xFFFF /* 0x03FFFFFF@l */
/* 8037A490  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037A494  38 A5 00 40 */	addi r5, r5, 0x0040 /* 0x00420040@l */
/* 8037A498  3C 80 00 42 */	lis r4, 0x42
/* 8037A49C  4B FF E5 99 */	bl mBGMClock_range_time_check
/* 8037A4A0  2C 03 00 00 */	cmpwi r3, 0
/* 8037A4A4  41 82 00 0C */	beq lbl_8037A4B0
/* 8037A4A8  4B FF EE 91 */	bl mBGMTime_new_year_ev_flag_set
/* 8037A4AC  48 00 00 08 */	b lbl_8037A4B4
lbl_8037A4B0:
/* 8037A4B0  4B FF EE 9D */	bl mBGMTime_new_year_ev_flag_clr
lbl_8037A4B4:
/* 8037A4B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037A4B8  7C 08 03 A6 */	mtlr r0
/* 8037A4BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8037A4C0  4E 80 00 20 */	blr 
