lbl_8058C91C:
/* 8058C91C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058C920  7C 08 02 A6 */	mflr r0
/* 8058C924  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058C928  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058C92C  7C 9F 23 78 */	mr r31, r4
/* 8058C930  93 C1 00 08 */	stw r30, 8(r1)
/* 8058C934  7C 7E 1B 78 */	mr r30, r3
/* 8058C938  4B FF FD 85 */	bl aTKN1_local_redy_check
/* 8058C93C  2C 03 00 00 */	cmpwi r3, 0
/* 8058C940  40 82 00 54 */	bne lbl_8058C994
/* 8058C944  A8 7E 09 A0 */	lha r3, 0x9a0(r30)
/* 8058C948  2C 03 00 00 */	cmpwi r3, 0
/* 8058C94C  40 81 00 10 */	ble lbl_8058C95C
/* 8058C950  38 03 FF FF */	addi r0, r3, -1
/* 8058C954  B0 1E 09 A0 */	sth r0, 0x9a0(r30)
/* 8058C958  48 00 00 3C */	b lbl_8058C994
lbl_8058C95C:
/* 8058C95C  38 00 00 05 */	li r0, 5
/* 8058C960  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8058C964  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8058C968  98 1E 09 AA */	stb r0, 0x9aa(r30)
/* 8058C96C  3C 83 00 02 */	addis r4, r3, 2
/* 8058C970  7F C3 F3 78 */	mr r3, r30
/* 8058C974  80 84 60 D8 */	lwz r4, 0x60d8(r4)
/* 8058C978  81 84 00 20 */	lwz r12, 0x20(r4)
/* 8058C97C  7D 89 03 A6 */	mtctr r12
/* 8058C980  4E 80 04 21 */	bctrl 
/* 8058C984  7F C3 F3 78 */	mr r3, r30
/* 8058C988  7F E4 FB 78 */	mr r4, r31
/* 8058C98C  38 A0 00 03 */	li r5, 3
/* 8058C990  48 00 0B 8D */	bl aTKN1_setup_think_proc
lbl_8058C994:
/* 8058C994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058C998  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058C99C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058C9A0  7C 08 03 A6 */	mtlr r0
/* 8058C9A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8058C9A8  4E 80 00 20 */	blr 
