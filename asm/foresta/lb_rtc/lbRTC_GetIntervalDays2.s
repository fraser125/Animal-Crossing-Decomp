lbl_80406C20:
/* 80406C20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80406C24  7C 08 02 A6 */	mflr r0
/* 80406C28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80406C2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80406C30  7C 9F 23 78 */	mr r31, r4
/* 80406C34  7C 64 1B 78 */	mr r4, r3
/* 80406C38  38 61 00 10 */	addi r3, r1, 0x10
/* 80406C3C  4B FE C8 41 */	bl mTM_ymd_2_time
/* 80406C40  7F E4 FB 78 */	mr r4, r31
/* 80406C44  38 61 00 08 */	addi r3, r1, 8
/* 80406C48  4B FE C8 35 */	bl mTM_ymd_2_time
/* 80406C4C  A0 61 00 16 */	lhz r3, 0x16(r1)
/* 80406C50  88 81 00 15 */	lbz r4, 0x15(r1)
/* 80406C54  88 A1 00 13 */	lbz r5, 0x13(r1)
/* 80406C58  A0 C1 00 0E */	lhz r6, 0xe(r1)
/* 80406C5C  88 E1 00 0D */	lbz r7, 0xd(r1)
/* 80406C60  89 01 00 0B */	lbz r8, 0xb(r1)
/* 80406C64  4B FF FB 89 */	bl lbRTC_IsEqualDate
/* 80406C68  2C 03 00 00 */	cmpwi r3, 0
/* 80406C6C  40 81 00 18 */	ble lbl_80406C84
/* 80406C70  38 61 00 08 */	addi r3, r1, 8
/* 80406C74  38 81 00 10 */	addi r4, r1, 0x10
/* 80406C78  4B FF FE 25 */	bl lbRTC_GetIntervalDays
/* 80406C7C  1C 63 FF FF */	mulli r3, r3, -1
/* 80406C80  48 00 00 1C */	b lbl_80406C9C
lbl_80406C84:
/* 80406C84  40 80 00 14 */	bge lbl_80406C98
/* 80406C88  38 61 00 10 */	addi r3, r1, 0x10
/* 80406C8C  38 81 00 08 */	addi r4, r1, 8
/* 80406C90  4B FF FE 0D */	bl lbRTC_GetIntervalDays
/* 80406C94  48 00 00 08 */	b lbl_80406C9C
lbl_80406C98:
/* 80406C98  38 60 00 00 */	li r3, 0
lbl_80406C9C:
/* 80406C9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80406CA0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80406CA4  7C 08 03 A6 */	mtlr r0
/* 80406CA8  38 21 00 20 */	addi r1, r1, 0x20
/* 80406CAC  4E 80 00 20 */	blr 
